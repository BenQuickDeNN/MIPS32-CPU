----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:08:10 03/28/2017 
-- Design Name: 
-- Module Name:    Mux_PC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
-- PC数据来源选择
entity Mux_PC is
	port(data_adder4, data_bus,data_addr_merge:in std_logic_vector(31 downto 0);
			data_out:out std_logic_vector(31 downto 0);
			data_select:in std_logic_vector(1 downto 0));
end Mux_PC;

architecture Behavioral of Mux_PC is

begin
	process(data_select, data_adder4, data_bus, data_addr_merge)
	begin
		case(data_select) is
			when "00" =>
				data_out <= data_adder4;
			when "01" =>
				data_out <= data_bus;
			when "10" =>
				data_out <= data_addr_merge;
			when others =>
				data_out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end case;
	end process;
end Behavioral;

