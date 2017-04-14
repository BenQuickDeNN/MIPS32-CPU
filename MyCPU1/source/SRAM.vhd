-- diy ram 6116
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unSIGNED.all;
entity SRAM is
	port(address, data_in: in std_logic_vector(31 downto 0);
			write1, read1, oe, cs, clk: in std_logic;
			ready : out std_logic;-- 内存准备好
			data_out: out std_logic_vector(31 downto 0));
end SRAM;
architecture behave of SRAM is
-- definition of word
subtype word is std_logic_vector(31 downto 0);
-- definition of memory space
type memory_space is array(0 to 255) of word;
signal memory_space_256: memory_space;
	begin
	-- process of writing or reading, if write0_read1 = '0' then write, else read
	-- when cs and oe are unavailable, set data_out as 'z'
	ready <= '1';
	acessSRAMPro : process(clk)
		begin
		-- static access operation
			if (write1 = '1') then
				if (cs = '1') then
					if (clk = '1' and clk'event) then
						memory_space_256(conv_integer(address)) <= data_in;
					end if;
				end if;
			end if;
	end process;
	-- 读过程
	readPro : process(oe, read1, address, cs)
	begin
		if(read1 = '1') then
			if (oe = '1') then
				if (cs = '1') then
					data_out <= memory_space_256(conv_integer(address));
				end if;
			else
				data_out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
			end if;
		end if;
	end process;
end behave;