-- CU ������
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity CU is
	port(opcode:in std_logic_vector(5 downto 0);-- ������
			CLK:in std_logic;
			--΢�������
			write_PC:out STD_LOGIC;-- ����дPC�Ĵ���
			allow_PC_BUS:out std_logic;-- ����PC����д������
			write_IR:out std_logic;-- ����дIR�Ĵ���
			
			write_RF:out std_logic;-- ����д�Ĵ�����
			oe_RF:out std_logic;-- ����RF������д������
			reg_type_select:out std_logic_vector(1 downto 0);-- ѡ��Ĵ�������
			
			write_MAR:out std_logic;-- дMAR�Ĵ���
			write_MDR:out std_logic;-- дMDR�Ĵ���
			allow_MDR_BUS:out std_logic;-- ����MDR������д�뵽����
			write_MEM:out std_logic;-- д�洢��
			read_MEM:out std_logic;-- ���洢��
			
			write_LA:out std_logic;-- ����дLA�ݴ���
			write_LB:out std_logic;-- ����дLB�ݴ���
			allow_ALU_BUS:out std_logic;-- ����ALU�����д������
			
			allow_SExtImme_LB:out std_logic;-- ����32λ��չ���������д��LB�ݴ���
			
			alu_op:out std_logic_vector(5 downto 0);-- ALU������
			alu_op_select:out std_logic-- ALU������ѡ���ź�
			);
end CU;
architecture behav of CU is
-- ע��ʹ��΢�洢���洢΢����
	subtype MicroWord is std_logic_vector(31 downto 0);-- ����΢�洢���ֳ�
	type MicroMemory is array(0 to 31) of MicroWord;
	signal MicroInstructionMemory:MicroMemory;-- ΢ָ��洢��
-- ���õ�ַ����������¼΢�洢����ַ
	signal InstructionAddress:integer range 0 to 31 := 0;-- ��ַ������,��ֵΪ0
	begin
	process(CLK)
		begin
			if(CLK = '1' and CLK'event) then
				case(opcode) is
					when "000000" =>-- �����߼�ָ��
						
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
				-- Ϊ�����źŸ�ֵ
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