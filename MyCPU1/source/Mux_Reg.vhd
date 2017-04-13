-- Mux Reg
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
entity Mux_Reg is
	port(Reg_addr_0:in std_logic_vector(4 downto 0);
			Reg_addr_1:in std_logic_vector(4 downto 0);
			Reg_addr_2:in std_logic_vector(4 downto 0);
			Reg_out_addr:out std_logic_vector(4 downto 0);
			Reg_Key:in std_logic_vector(1 downto 0)-- ¼Ä´æÆ÷Ñ¡ÔñĞÅºÅ
			);
end Mux_Reg;
architecture behav of Mux_Reg is
	begin
	process(Reg_Key, Reg_addr_0, Reg_addr_1, Reg_addr_2)
		begin
		case Reg_Key is
			when "00" =>
				Reg_out_addr <= Reg_addr_0;
			when "01" =>
				Reg_out_addr <= Reg_addr_1;
			when "10" =>
				Reg_out_addr <= Reg_addr_2;
			when others =>
				Reg_out_addr <= "ZZZZZ";
		end case;
	end process;
end behav;