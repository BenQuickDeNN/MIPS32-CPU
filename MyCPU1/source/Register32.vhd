-- Register32
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity Register32 is
	port(data_in:in std_logic_vector(31 downto 0);
			data_out:out std_logic_vector(31 downto 0);
			WE:in std_logic;-- 写入使能
			OE : in std_logic; -- 输出使能
			clk:in std_logic);
end Register32;
architecture behav of Register32 is
	signal storage : std_logic_vector(31 downto 0) := (others => '0');
	begin
	writePro : process(WE, clk)
		begin
		if (WE = '1') then
			if (clk = '1' and clk'event) then
				storage <= data_in;
			end if;
		end if;
	end process;
	readPro : process(OE, clk)
	begin
		if(OE = '1')then
			data_out <= storage;
		else
			data_out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end if;
	end process;
end behav;