-- CU 控制器
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity CU is
	port(opcode:in std_logic_vector(5 downto 0);-- 操作码
			CLK:in std_logic;
			--微命令输出
			write_PC:out STD_LOGIC;-- 允许写PC寄存器
			allow_PC_BUS:out std_logic;-- 允许将PC内容写入总线
			write_IR:out std_logic;-- 允许写IR寄存器
			
			write_RF:out std_logic;-- 允许写寄存器堆
			oe_RF:out std_logic;-- 允许RF将数据写入总线
			reg_type_select:out std_logic_vector(1 downto 0);-- 选择寄存器类型
			
			write_MAR:out std_logic;-- 写MAR寄存器
			write_MDR:out std_logic;-- 写MDR寄存器
			allow_MDR_BUS:out std_logic;-- 允许MDR将数据写入到总线
			write_MEM:out std_logic;-- 写存储器
			read_MEM:out std_logic;-- 读存储器
			
			write_LA:out std_logic;-- 允许写LA暂存器
			write_LB:out std_logic;-- 允许写LB暂存器
			allow_ALU_BUS:out std_logic;-- 允许ALU将结果写入总线
			
			allow_SExtImme_LB:out std_logic;-- 允许32位扩展后的立即数写入LB暂存器
			
			alu_op:out std_logic_vector(5 downto 0);-- ALU操作码
			alu_op_select:out std_logic-- ALU操作码选择信号
			);
end CU;
architecture behav of CU is
-- 注意使用微存储器存储微命令
	subtype MicroWord is std_logic_vector(31 downto 0);-- 定义微存储器字长
	type MicroMemory is array(0 to 31) of MicroWord;
	signal MicroInstructionMemory:MicroMemory;-- 微指令存储器
-- 设置地址计数器，记录微存储器地址
	signal InstructionAddress:integer range 0 to 31 := 0;-- 地址计数器,初值为0
	begin
	process(CLK)
		begin
			if(CLK = '1' and CLK'event) then
				case(opcode) is
					when "000000" =>-- 算术逻辑指令
						
					when "001000" =>-- ADDI
			
					when "001100" =>-- ANDI
			
					when "001101" =>-- ORI
			
					when "001110" =>-- XORI
			
					when "001111" =>-- LUI
			
					when "100011" =>-- LW
			
					when "101011" =>-- SW
			
					when "000100" =>-- BEQ
			
					when "000101" =>-- BNE
			
					when "000010" =>-- J
						
					when others =>
			
				end case;
				-- 为控制信号赋值
				write_PC <= MicroInstructionMemory(InstructionAddress)(0);
				allow_PC_BUS <= MicroInstructionMemory(InstructionAddress)(1);
				write_IR <= MicroInstructionMemory(InstructionAddress)(2);
				
				write_RF <= MicroInstructionMemory(InstructionAddress)(3);
				oe_RF <= MicroInstructionMemory(InstructionAddress)(4);
				reg_type_select <= MicroInstructionMemory(InstructionAddress)(6 downto 5);
				
				write_MAR <= MicroInstructionMemory(InstructionAddress)(7);
				write_MDR <= MicroInstructionMemory(InstructionAddress)(8);
				allow_MDR_BUS <= MicroInstructionMemory(InstructionAddress)(9);
				write_MEM <= MicroInstructionMemory(InstructionAddress)(10);
				read_MEM <= MicroInstructionMemory(InstructionAddress)(11);
				
				write_LA <= MicroInstructionMemory(InstructionAddress)(12);
				write_LB <= MicroInstructionMemory(InstructionAddress)(13);
				allow_ALU_BUS <= MicroInstructionMemory(InstructionAddress)(14);
				
				allow_SExtImme_LB <= MicroInstructionMemory(InstructionAddress)(15);
			end if;
		end process;
end behav;