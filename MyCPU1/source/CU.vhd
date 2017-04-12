-- CU 控制器
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use std.textio.all;


entity CU is
	port(opcode:in std_logic_vector(5 downto 0);-- 操作码
			CLK:in std_logic;
			flag_zero:in std_logic;-- 结果状态输入
			initiation:in std_logic;-- 初始化信号
			instruction_done:out std_logic;-- 指令完成信号
			mem_ready:in std_logic;-- 记忆体是否已准备好
			test_MCounter : OUT std_logic_vector(5 downto 0);
			test_opcode: out std_logic_vector(5 downto 0); 
			test_Miinstruct : OUT std_logic_vector(31 downto 0);
			--微命令输出
			write_PC:out STD_LOGIC;-- 允许写PC寄存器
			allow_PC_BUS:out std_logic;-- 允许将PC内容写入总线
			write_IR:out std_logic;-- 允许写IR寄存器
			
			write_RF:out std_logic;-- 允许写寄存器堆
			oe_RF:out std_logic;-- 允许RF将数据写入总线
			reg_type_select:out std_logic_vector(1 downto 0);-- 选择寄存器类型
			
			write_MAR:out std_logic;-- 写MAR寄存器
			write_MDR:out std_logic;-- 写MDR寄存器
			MDR_data_select:out std_logic;-- MDR数据源选择
			allow_MDR_BUS:out std_logic;-- 允许MDR将数据写入到总线
			write_MEM:out std_logic;-- 写存储器
			read_MEM:out std_logic;-- 读存储器
			
			write_LA:out std_logic;-- 允许写LA暂存器
			write_LB:out std_logic;-- 允许写LB暂存器
			allow_ALU_BUS:out std_logic;-- 允许ALU将结果写入总线
			
			--allow_SExtImme_LB:out std_logic;-- 允许32位扩展后的立即数写入LB暂存器
			
			alu_op:out std_logic_vector(5 downto 0);-- ALU操作码
			alu_op_select:out std_logic;-- ALU操作码选择信号
			
			pc_data_select:out std_logic_vector(1 downto 0);-- PC数据源选择信号
			
			LB_data_select:out std_logic_vector(1 downto 0);-- LB数据源选择
			
			allow_Imme_Shamt_to_Bus:out std_logic-- 允许立即数或移位操作数写到总线
			);
end CU;
architecture behav of CU is
-- 注意使用微存储器存储微命令
	subtype MicroWord is std_logic_vector(31 downto 0);-- 定义微存储器字长
	type MicroMemory is array(0 to 63) of MicroWord;
	signal MicroInstructionROM:MicroMemory;-- 微指令存储器
	-- 定义功能转移微指令下地址表
	subtype MicroByte is std_logic_vector(7 downto 0);
	type MicroAddrTable is array(0 to 63) of MicroByte;
	signal MicroInstructionAddrTable1:MicroAddrTable;-- 功能转移1
	signal MicroInstructionAddrTable2:MicroAddrTable;-- 功能转移2
	
	-- 定义控存文件
	file ROM_INI_FILE : text;-- 微指令存储器文件
	file addrTable1_ini_file : text;-- 功能转移1下地址表文件
	file addrTable2_ini_file : text;-- 功能转移2下地址表文件
	-- 设置地址计数器，记录微存储器地址
	signal InstructionAddress:std_logic_vector(5 downto 0) := "000000";-- 地址计数器,初值为0
	begin
	-- 微指令存储器赋初值
	IntiatCUROMProcess:process(initiation)
	variable ROM_FILE_STATUS:FILE_OPEN_STATUS;-- 文件打开状态
	--variable ROM_FILE_POINTER:integer:=0;
	variable file_buff:line;
	variable file_buff_vector:std_logic_vector(31 downto 0);
	begin
		file_open(ROM_FILE_STATUS,ROM_INI_FILE,"ROM_INI.txt",read_mode);-- 打开文件
		ROM_LOOP: for i in 0 to 63 loop
			readline(ROM_INI_FILE, file_buff);
			read(file_buff, file_buff_vector);
			MicroInstructionROM(i) <= file_buff_vector;-- 将文件中的内容赋给控存
			--ROM_FILE_POINTER := ROM_FILE_POINTER + 1;
		end loop ROM_LOOP;
		file_close(ROM_INI_FILE);
	end process IntiatCUROMProcess;
	
	-- 功能转移1下地址表赋初值
	IntiatAddrTable1Process:process(initiation)
	variable ROM_FILE_STATUS:FILE_OPEN_STATUS;-- 文件打开状态
	--variable ROM_FILE_POINTER:integer:=0;
	variable file_buff:line;
	variable file_buff_vector:std_logic_vector(7 downto 0);
	begin
		file_open(ROM_FILE_STATUS,addrTable1_ini_file,"addrTable1.txt",read_mode);-- 打开文件
		ADDR_TABLE1_LOOP: for i in 0 to 63 loop
			readline(addrTable1_ini_file, file_buff);
			read(file_buff, file_buff_vector);
			MicroInstructionAddrTable1(i) <= file_buff_vector;-- 将文件中的内容赋给控存
			--ROM_FILE_POINTER := ROM_FILE_POINTER + 1;
		end loop ADDR_TABLE1_LOOP;
		file_close(addrTable1_ini_file);
	end process IntiatAddrTable1Process;
	
	-- 功能转移2下地址表赋初值
	IntiatAddrTable2Process:process(initiation)
	variable ROM_FILE_STATUS:FILE_OPEN_STATUS;-- 文件打开状态
	--variable ROM_FILE_POINTER:integer:=0;
	variable file_buff:line;
	variable file_buff_vector:std_logic_vector(7 downto 0);
	begin
		file_open(ROM_FILE_STATUS,addrTable2_ini_file,"addrTable2.txt",read_mode);-- 打开文件
		ADDR_TABLE2_LOOP: for i in 0 to 63 loop
			readline(addrTable2_ini_file, file_buff);
			read(file_buff, file_buff_vector);
			MicroInstructionAddrTable2(i) <= file_buff_vector;-- 将文件中的内容赋给控存
			--ROM_FILE_POINTER := ROM_FILE_POINTER + 1;
		end loop ADDR_TABLE2_LOOP;
		file_close(addrTable2_ini_file);
	end process IntiatAddrTable2Process;
	
	ControlProcess:process(CLK)
		begin
			if(CLK = '1' and CLK'event and initiation = '1') then
				instruction_done <= '0';
				
				-- 为控制信号赋值
				test_Miinstruct <= MicroInstructionROM(conv_integer(InstructionAddress));
				
				write_PC <= MicroInstructionROM(conv_integer(InstructionAddress))(0);
				allow_PC_BUS <= MicroInstructionROM(conv_integer(InstructionAddress))(1);
				write_IR <= MicroInstructionROM(conv_integer(InstructionAddress))(2);
				
				write_RF <= MicroInstructionROM(conv_integer(InstructionAddress))(3);
				oe_RF <= MicroInstructionROM(conv_integer(InstructionAddress))(4);
				reg_type_select <= MicroInstructionROM(conv_integer(InstructionAddress))(6 downto 5);
				
				write_MAR <= MicroInstructionROM(conv_integer(InstructionAddress))(7);
				write_MDR <= MicroInstructionROM(conv_integer(InstructionAddress))(8);
				allow_MDR_BUS <= MicroInstructionROM(conv_integer(InstructionAddress))(9);
				MDR_data_select <= MicroInstructionROM(conv_integer(InstructionAddress))(10);
				write_MEM <= MicroInstructionROM(conv_integer(InstructionAddress))(11);
				read_MEM <= MicroInstructionROM(conv_integer(InstructionAddress))(12);
				
				write_LA <= MicroInstructionROM(conv_integer(InstructionAddress))(13);
				write_LB <= MicroInstructionROM(conv_integer(InstructionAddress))(14);
				allow_ALU_BUS <= MicroInstructionROM(conv_integer(InstructionAddress))(15);
				
				alu_op <= MicroInstructionROM(conv_integer(InstructionAddress))(21 downto 16);
				alu_op_select <= MicroInstructionROM(conv_integer(InstructionAddress))(22);
				
				pc_data_select <= MicroInstructionROM(conv_integer(InstructionAddress))(24 downto 23);
				
				LB_data_select <= MicroInstructionROM(conv_integer(InstructionAddress))(26 downto 25);
				
				allow_Imme_Shamt_to_Bus <= MicroInstructionROM(conv_integer(InstructionAddress))(27);
				
				-- 根据下地址字段更新微指令地址
				case MicroInstructionROM(conv_integer(InstructionAddress))(31 downto 30) is
					when "00" =>
						if (mem_ready = '0' and opcode = "101011") and mem_ready = '0' then
							-- 可能会写内存，等待内存准备好
							-- do nothing
						else
							InstructionAddress <= "000000";
							instruction_done <= '1';
						end if;
					when "10" =>
						InstructionAddress <= MicroInstructionAddrTable1(conv_integer(opcode))(5 downto 0);
					when "11" =>
						InstructionAddress <= MicroInstructionAddrTable2(conv_integer(InstructionAddress xor opcode))(5 downto 0);
					when others =>
						if (InstructionAddress = "000010" or InstructionAddress = "011111") and mem_ready = '0' then
							-- 读取内存，等待内存准备好
							-- do nothing
						elsif (opcode = "000100") then
							-- BEQ
							if (flag_zero = '1') then
								InstructionAddress <= InstructionAddress + "000001";
							else
								-- do nothing
							end if;
						elsif (opcode = "000101") then
							-- BNE
							if (flag_zero = '0') then
								InstructionAddress <= InstructionAddress + "000001";
							else
								-- do nothing
							end if;
						else
							InstructionAddress <= InstructionAddress + "000001";
							
						end if;
				end case;
				test_MCounter <= InstructionAddress;
				test_opcode <= opcode;
				test_Miinstruct <= MicroInstructionAddrTable2(conv_integer(InstructionAddress));
			end if;
		end process ControlProcess;
end behav;