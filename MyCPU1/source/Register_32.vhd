-- Register_32
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity Register_32 is
	port(data_in:in std_logic_vector(31 downto 0);
			data_out:out std_logic_vector(31 downto 0);
			WE:in std_logic;-- –¥»Î πƒ‹
			clk:in std_logic);
end Register_32;
architecture behav of Register_32 is
	begin
	process(WE, clk)
		begin
		if (WE = '1') then
			if (clk = '1' and clk'event) then
				data_out <= data_in;
			end if;
		else
			data_out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end if;
	end process;
end behav;