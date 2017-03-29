-- ALU
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity ALU is
	port(alu_in_a, alu_in_b:in std_logic_vector(31 downto 0);-- oprand
			op_code:in std_logic_vector(5 downto 0);-- opcode
			flag_z:out std_logic;-- zero flag
			result:out std_logic_vector(31 downto 0));
end ALU;
architecture behav of ALU is
	-- 逻辑移位组件
	component alu_logic_shift
		port(op1: in std_logic_vector(31 downto 0);
			op_code: in std_logic_vector(5 downto 0);
			output: out std_logic_vector(31 downto 0));
	end component;
	begin
	process(alu_in_a, alu_in_b, op_code)
		begin
			case op_code is
				when "100000" =>
					result <= alu_in_a + alu_in_b;
				when "100010" =>
					result <= alu_in_a - alu_in_b;
				when "100100" =>
					result <= alu_in_a and alu_in_b;
				when "100101" =>
					result <= alu_in_a or alu_in_b;
				when "100110" =>
					result <= alu_in_a xor alu_in_b;
				when "100111" =>
					result <= alu_in_a nor alu_in_b;
				when "101010" =>
					if(alu_in_a < alu_in_b) then
						flag_z <= '1';
					else
						flag_z <= '0';
					end if;
				when "000000" => -- 左移位，有待改进
					result <= alu_in_b;
				when "000010" => -- 右移位，有待改进
					result <= alu_in_b;
				when others =>
			end case;
		end process;
end behav;