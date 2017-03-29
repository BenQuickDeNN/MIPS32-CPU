-- Tri State
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity TriState is
	port(data_in:in std_logic_vector(31 downto 0);
			data_out:out std_logic_vector(31 downto 0);
			ctrl:in std_logic-- 三态门控制信号
			);
end TriState;
architecture behav of TriState is
	begin
	process(data_in, ctrl)
		begin
		if (ctrl = '0') then
			data_out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		else
			data_out <= data_in;
		end if;
	end process;
end behav;