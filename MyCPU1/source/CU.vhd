-- CU ������
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use std.textio.all;


entity CU is
	port(opcode:in std_logic_vector(5 downto 0);-- ������
			CLK:in std_logic;
			flag_zero:in std_logic;-- ���״̬����
			initiation:in std_logic;-- ��ʼ���ź�
			instruction_done:out std_logic;-- ָ������ź�
			mem_ready:in std_logic;-- �������Ƿ���׼����
			test_MCounter : OUT std_logic_vector(5 downto 0);
			test_opcode: out std_logic_vector(5 downto 0); 
			test_Miinstruct : OUT std_logic_vector(31 downto 0);
			--΢�������
			write_PC:out STD_LOGIC;-- ����дPC�Ĵ���
			allow_PC_BUS:out std_logic;-- ����PC����д������
			write_IR:out std_logic;-- ����дIR�Ĵ���
			
			write_RF:out std_logic;-- ����д�Ĵ�����
			oe_RF:out std_logic;-- ����RF������д������
			reg_type_select:out std_logic_vector(1 downto 0);-- ѡ��Ĵ�������
			
			write_MAR:out std_logic;-- дMAR�Ĵ���
			write_MDR:out std_logic;-- дMDR�Ĵ���
			MDR_data_select:out std_logic;-- MDR����Դѡ��
			allow_MDR_BUS:out std_logic;-- ����MDR������д�뵽����
			write_MEM:out std_logic;-- д�洢��
			read_MEM:out std_logic;-- ���洢��
			
			write_LA:out std_logic;-- ����дLA�ݴ���
			write_LB:out std_logic;-- ����дLB�ݴ���
			allow_ALU_BUS:out std_logic;-- ����ALU�����д������
			
			--allow_SExtImme_LB:out std_logic;-- ����32λ��չ���������д��LB�ݴ���
			
			alu_op:out std_logic_vector(5 downto 0);-- ALU������
			alu_op_select:out std_logic;-- ALU������ѡ���ź�
			
			pc_data_select:out std_logic_vector(1 downto 0);-- PC����Դѡ���ź�
			
			LB_data_select:out std_logic_vector(1 downto 0);-- LB����Դѡ��
			
			allow_Imme_Shamt_to_Bus:out std_logic-- ��������������λ������д������
			);
end CU;
architecture behav of CU is
-- ע��ʹ��΢�洢���洢΢����
	subtype MicroWord is std_logic_vector(31 downto 0);-- ����΢�洢���ֳ�
	type MicroMemory is array(0 to 63) of MicroWord;
	signal MicroInstructionROM:MicroMemory;-- ΢ָ��洢��
	-- ���幦��ת��΢ָ���µ�ַ��
	subtype MicroByte is std_logic_vector(7 downto 0);
	type MicroAddrTable is array(0 to 63) of MicroByte;
	signal MicroInstructionAddrTable1:MicroAddrTable;-- ����ת��1
	signal MicroInstructionAddrTable2:MicroAddrTable;-- ����ת��2
	
	-- ����ش��ļ�
	file ROM_INI_FILE : text;-- ΢ָ��洢���ļ�
	file addrTable1_ini_file : text;-- ����ת��1�µ�ַ���ļ�
	file addrTable2_ini_file : text;-- ����ת��2�µ�ַ���ļ�
	-- ���õ�ַ����������¼΢�洢����ַ
	signal InstructionAddress:std_logic_vector(5 downto 0) := "000000";-- ��ַ������,��ֵΪ0
	begin
	-- ΢ָ��洢������ֵ
	IntiatCUROMProcess:process(initiation)
	variable ROM_FILE_STATUS:FILE_OPEN_STATUS;-- �ļ���״̬
	--variable ROM_FILE_POINTER:integer:=0;
	variable file_buff:line;
	variable file_buff_vector:std_logic_vector(31 downto 0);
	begin
		file_open(ROM_FILE_STATUS,ROM_INI_FILE,"ROM_INI.txt",read_mode);-- ���ļ�
		ROM_LOOP: for i in 0 to 63 loop
			readline(ROM_INI_FILE, file_buff);
			read(file_buff, file_buff_vector);
			MicroInstructionROM(i) <= file_buff_vector;-- ���ļ��е����ݸ����ش�
			--ROM_FILE_POINTER := ROM_FILE_POINTER + 1;
		end loop ROM_LOOP;
		file_close(ROM_INI_FILE);
	end process IntiatCUROMProcess;
	
	-- ����ת��1�µ�ַ����ֵ
	IntiatAddrTable1Process:process(initiation)
	variable ROM_FILE_STATUS:FILE_OPEN_STATUS;-- �ļ���״̬
	--variable ROM_FILE_POINTER:integer:=0;
	variable file_buff:line;
	variable file_buff_vector:std_logic_vector(7 downto 0);
	begin
		file_open(ROM_FILE_STATUS,addrTable1_ini_file,"addrTable1.txt",read_mode);-- ���ļ�
		ADDR_TABLE1_LOOP: for i in 0 to 63 loop
			readline(addrTable1_ini_file, file_buff);
			read(file_buff, file_buff_vector);
			MicroInstructionAddrTable1(i) <= file_buff_vector;-- ���ļ��е����ݸ����ش�
			--ROM_FILE_POINTER := ROM_FILE_POINTER + 1;
		end loop ADDR_TABLE1_LOOP;
		file_close(addrTable1_ini_file);
	end process IntiatAddrTable1Process;
	
	-- ����ת��2�µ�ַ����ֵ
	IntiatAddrTable2Process:process(initiation)
	variable ROM_FILE_STATUS:FILE_OPEN_STATUS;-- �ļ���״̬
	--variable ROM_FILE_POINTER:integer:=0;
	variable file_buff:line;
	variable file_buff_vector:std_logic_vector(7 downto 0);
	begin
		file_open(ROM_FILE_STATUS,addrTable2_ini_file,"addrTable2.txt",read_mode);-- ���ļ�
		ADDR_TABLE2_LOOP: for i in 0 to 63 loop
			readline(addrTable2_ini_file, file_buff);
			read(file_buff, file_buff_vector);
			MicroInstructionAddrTable2(i) <= file_buff_vector;-- ���ļ��е����ݸ����ش�
			--ROM_FILE_POINTER := ROM_FILE_POINTER + 1;
		end loop ADDR_TABLE2_LOOP;
		file_close(addrTable2_ini_file);
	end process IntiatAddrTable2Process;
	
	ControlProcess:process(CLK)
		begin
			if(CLK = '1' and CLK'event and initiation = '1') then
				instruction_done <= '0';
				
				-- Ϊ�����źŸ�ֵ
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
				
				-- �����µ�ַ�ֶθ���΢ָ���ַ
				case MicroInstructionROM(conv_integer(InstructionAddress))(31 downto 30) is
					when "00" =>
						if (mem_ready = '0' and opcode = "101011") and mem_ready = '0' then
							-- ���ܻ�д�ڴ棬�ȴ��ڴ�׼����
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
							-- ��ȡ�ڴ棬�ȴ��ڴ�׼����
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