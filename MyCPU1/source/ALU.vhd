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
	signal temp_result : std_logic_vector(31 downto 0);
	signal zero_vector : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
	
	begin
	calcPro : process(alu_in_a, alu_in_b, op_code)
		begin
			case op_code is
				when "100000" =>
					temp_result <= alu_in_a + alu_in_b;
					result <= alu_in_a + alu_in_b;
				when "100010" =>
					temp_result <= alu_in_a - alu_in_b;
					result <= alu_in_a - alu_in_b;
				when "100100" =>
					temp_result <= alu_in_a and alu_in_b;
					result <= alu_in_a and alu_in_b;
				when "100101" =>
					temp_result <= alu_in_a or alu_in_b;
					result <= alu_in_a or alu_in_b;
				when "100110" =>
					temp_result <= alu_in_a xor alu_in_b;
					result <= alu_in_a xor alu_in_b;
				when "100111" =>
					temp_result <= alu_in_a nor alu_in_b;
					result <= alu_in_a nor alu_in_b;
				when "101010" =>
					temp_result <= alu_in_a - alu_in_b;
					result <= alu_in_a - alu_in_b;
				when "000000" => -- ×óÂß¼­ÒÆÎ»
					temp_result <= to_stdlogicvector(to_bitvector(alu_in_a) sll conv_integer(alu_in_b(4 downto 0)));
					result <= to_stdlogicvector(to_bitvector(alu_in_a) sll conv_integer(alu_in_b(4 downto 0)));
					--temp_result <= to_to_bitvector(alu_in_a) sll 2;
					--temp_result <= alu_in_a((31 - conv_integer(alu_in_b(4 downto 0))) downto 0) & zero_vector(31 downto (32 - conv_integer(alu_in_b(4 downto 0)));
				when "000010" => -- ÓÒÂß¼­ÒÆÎ»
					temp_result <= to_stdlogicvector(to_bitvector(alu_in_a) srl conv_integer(alu_in_b(4 downto 0)));
					result <= to_stdlogicvector(to_bitvector(alu_in_a) srl conv_integer(alu_in_b(4 downto 0)));
					--temp_result <= alu_in_a srl 2;
					--temp_result <= zero_vector(31 downto (32 - conv_integer(alu_in_b(4 downto 0))) & alu_in_a((31)downto(conv_integer(alu_in_b(4 downto 0))));
				when others =>
					temp_result <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
					result <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
			end case;
			-- result <= temp_result;
		end process;
		flagZeroPro : process(alu_in_a, alu_in_b, op_code, temp_result)
		begin
			if(temp_result = "00000000000000000000000000000000") and not(op_code = "111111")then
				flag_z <= '1';
			else
				flag_z <= '0';
			end if;
		end process;
end behav;