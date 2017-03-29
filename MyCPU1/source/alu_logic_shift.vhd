library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity alu_logic_shift is
	port(op1: in std_logic_vector(31 downto 0);
			op_code: in std_logic_vector(5 downto 0);
			output: out std_logic_vector(31 downto 0));
end alu_logic_shift;
architecture behave of alu_logic_shift is
	begin
	process(op1, op_code)
		begin
		case op_code is
			when "000000" => output <= op1;
			-- op_code表示移位值，用原码表示，正数表示左移，负数表示右移
			when "000001" =>
				output(31 downto 1) <= op1(30 downto 0);
				output(0) <= '0';
			when "000010" =>
				output(31 downto 2) <= op1(29 downto 0);
				output(1 downto 0) <= "00";
			when "000011" =>
				output(31 downto 3) <= op1(28 downto 0);
				output(2 downto 0) <= "000";
			when "000100" =>
				output(31 downto 4) <= op1(27 downto 0);
				output(3 downto 0) <= "0000";
			when "000101" =>
				output(31 downto 5) <= op1(26 downto 0);
				output(4 downto 0) <= "00000";
			when "000110" =>
				output(31 downto 6) <= op1(25 downto 0);
				output(5 downto 0) <= "000000";
			when "000111" =>
				output(31 downto 7) <= op1(24 downto 0);
				output(6 downto 0) <= "0000000";
			when "001000" =>
				output(31 downto 8) <= op1(23 downto 0);
				output(7 downto 0) <= "00000000";
			when "001001" =>
				output(31 downto 9) <= op1(22 downto 0);
				output(8 downto 0) <= "000000000";
			when "001010" =>
				output(31 downto 10) <= op1(21 downto 0);
				output(9 downto 0) <= "0000000000";
			when "001011" =>
				output(31 downto 11) <= op1(20 downto 0);
				output(10 downto 0) <= "00000000000";
			when "001100" =>
				output(31 downto 12) <= op1(19 downto 0);
				output(11 downto 0) <= "000000000000";
			when "001101" =>
				output(31 downto 13) <= op1(18 downto 0);
				output(12 downto 0) <= "0000000000000";
			when "001110" =>
				output(31 downto 14) <= op1(17 downto 0);
				output(13 downto 0) <= "00000000000000";
			when "001111" =>
				output(31 downto 15) <= op1(16 downto 0);
				output(14 downto 0) <= "000000000000000";
			when "010000" =>
				output(31 downto 16) <= op1(15 downto 0);
				output(15 downto 0) <= "0000000000000000";
			when "010001" =>
				output(31 downto 17) <= op1(14 downto 0);
				output(16 downto 0) <= "00000000000000000";
			when "010010" =>
				output(31 downto 18) <= op1(13 downto 0);
				output(17 downto 0) <= "000000000000000000";
			when "010011" =>
				output(31 downto 19) <= op1(12 downto 0);
				output(18 downto 0) <= "0000000000000000000";
			when "010100" =>
				output(31 downto 20) <= op1(11 downto 0);
				output(19 downto 0) <= "00000000000000000000";
			when "010101" =>
				output(31 downto 21) <= op1(10 downto 0);
				output(20 downto 0) <= "000000000000000000000";
			when "010110" =>
				output(31 downto 22) <= op1(9 downto 0);
				output(21 downto 0) <= "0000000000000000000000";
			when "010111" =>
				output(31 downto 23) <= op1(8 downto 0);
				output(22 downto 0) <= "00000000000000000000000";
			when "011000" =>
				output(31 downto 24) <= op1(7 downto 0);
				output(23 downto 0) <= "000000000000000000000000";
			when "011001" =>
				output(31 downto 25) <= op1(6 downto 0);
				output(24 downto 0) <= "0000000000000000000000000";
			when "011010" =>
				output(31 downto 26) <= op1(5 downto 0);
				output(25 downto 0) <= "00000000000000000000000000";
			when "011011" =>
				output(31 downto 27) <= op1(4 downto 0);
				output(26 downto 0) <= "000000000000000000000000000";
			when "011100" =>
				output(31 downto 28) <= op1(3 downto 0);
				output(27 downto 0) <= "0000000000000000000000000000";
			when "011101" =>
				output(31 downto 29) <= op1(2 downto 0);
				output(28 downto 0) <= "00000000000000000000000000000";
			when "011110" =>
				output(31 downto 30) <= op1(1 downto 0);
				output(29 downto 0) <= "000000000000000000000000000000";
			when "011111" =>
				output(31) <= op1(0);
				output(30 downto 0) <= "0000000000000000000000000000000";
			-- 右移
			when "100000" => output <= op1;
			when "100001" =>
				output(30 downto 0) <= op1(31 downto 1);
				output(31) <= '0';
			when "100010" =>
				output(29 downto 0) <= op1(31 downto 2);
				output(31 downto 30) <= "00";
			when "100011" =>
				output(28 downto 0) <= op1(31 downto 3);
				output(31 downto 29) <= "000";
			when "100100" =>
				output(27 downto 0) <= op1(31 downto 4);
				output(31 downto 28) <= "0000";
			when "100101" =>
				output(26 downto 0) <= op1(31 downto 5);
				output(31 downto 27) <= "00000";
			when "100110" =>
				output(25 downto 0) <= op1(31 downto 6);
				output(31 downto 26) <= "000000";
			when "100111" =>
				output(24 downto 0) <= op1(31 downto 7);
				output(31 downto 25) <= "0000000";
			when "101000" =>
				output(23 downto 0) <= op1(31 downto 8);
				output(31 downto 24) <= "00000000";
			when "101001" =>
				output(22 downto 0) <= op1(31 downto 9);
				output(31 downto 23) <= "000000000";
			when "101010" =>
				output(21 downto 0) <= op1(31 downto 10);
				output(31 downto 22) <= "0000000000";
			when "101011" =>
				output(20 downto 0) <= op1(31 downto 11);
				output(31 downto 21) <= "00000000000";
			when "101100" =>
				output(19 downto 0) <= op1(31 downto 12);
				output(31 downto 20) <= "000000000000";
			when "101101" =>
				output(18 downto 0) <= op1(31 downto 13);
				output(31 downto 19) <= "0000000000000";
			when "101110" =>
				output(17 downto 0) <= op1(31 downto 14);
				output(31 downto 18) <= "00000000000000";
			when "101111" =>
				output(16 downto 0) <= op1(31 downto 15);
				output(31 downto 17) <= "000000000000000";
			when "110000" =>
				output(15 downto 0) <= op1(31 downto 16);
				output(31 downto 16) <= "0000000000000000";
			when "110001" =>
				output(14 downto 0) <= op1(31 downto 17);
				output(31 downto 15) <= "00000000000000000";
			when "110010" =>
				output(13 downto 0) <= op1(31 downto 18);
				output(31 downto 14) <= "000000000000000000";
			when "110011" =>
				output(12 downto 0) <= op1(31 downto 19);
				output(31 downto 13) <= "0000000000000000000";
			when "110100" =>
				output(11 downto 0) <= op1(31 downto 20);
				output(31 downto 12) <= "00000000000000000000";
			when "110101" =>
				output(10 downto 0) <= op1(31 downto 21);
				output(31 downto 11) <= "000000000000000000000";
			when "110110" =>
				output(9 downto 0) <= op1(31 downto 22);
				output(31 downto 10) <= "0000000000000000000000";
			when "110111" =>
				output(8 downto 0) <= op1(31 downto 23);
				output(31 downto 9) <= "00000000000000000000000";
			when "111000" =>
				output(7 downto 0) <= op1(31 downto 24);
				output(31 downto 8) <= "000000000000000000000000";
			when "111001" =>
				output(6 downto 0) <= op1(31 downto 25);
				output(31 downto 7) <= "0000000000000000000000000";
			when "111010" =>
				output(5 downto 0) <= op1(31 downto 26);
				output(31 downto 6) <= "00000000000000000000000000";
			when "111011" =>
				output(4 downto 0) <= op1(31 downto 27);
				output(31 downto 5) <= "000000000000000000000000000";
			when "111100" =>
				output(3 downto 0) <= op1(31 downto 28);
				output(31 downto 4) <= "0000000000000000000000000000";
			when "111101" =>
				output(2 downto 0) <= op1(31 downto 29);
				output(31 downto 3) <= "00000000000000000000000000000";
			when "111110" =>
				output(1 downto 0) <= op1(31 downto 30);
				output(31 downto 2) <= "000000000000000000000000000000";
			when "111111" =>
				output(0) <= op1(31);
				output(31 downto 1) <= "0000000000000000000000000000000";
			when others =>
				output <= op1;
		end case;
	end process;
end behave;