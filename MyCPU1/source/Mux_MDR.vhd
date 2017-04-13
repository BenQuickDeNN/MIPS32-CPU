----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:45:42 03/29/2017 
-- Design Name: 
-- Module Name:    Mux_MDR - Behavioral 
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
-- MDR数据选择器
entity Mux_MDR is
	port(data_bus, data_mem:in std_logic_vector(31 downto 0);-- 数据源
			data_out:out std_logic_vector(31 downto 0);
			data_select:in std_logic
			);
end Mux_MDR;

architecture Behavioral of Mux_MDR is

begin
	process(data_select, data_bus, data_mem)
	begin
		if (data_select = '0') then
			data_out <= data_bus;
		else
			data_out <= data_mem;
		end if;
	end process;
end Behavioral;

