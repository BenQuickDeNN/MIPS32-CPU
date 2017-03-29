-- decoder 3to8
library ieee;
use ieee.std_logic_1164.all;
entity Decoder38 is
	port(Xi: in std_logic_vector(2 downto 0);
			G: in std_logic;
			Y: out std_logic_vector(7 downto 0));
end Decoder38;
architecture behave of Decoder38 is
	begin
		process(Xi, G)
		begin
			if(G = '1') then
				case Xi is
					when "000" => Y <= "00000001";
					when "001" => Y <= "00000010";
					when "010" => Y <= "00000100";
					when "011" => Y <= "00001000";
					when "100" => Y <= "00010000";
					when "101" => Y <= "00100000";
					when "110" => Y <= "01000000";
					when "111" => Y <= "10000000";
					when others => Y <= "00000000";
				end case;
			else
				Y <= "00000000";
			end if;
		end process;
end behave;