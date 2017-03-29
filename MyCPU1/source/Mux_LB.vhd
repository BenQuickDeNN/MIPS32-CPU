----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:39:01 03/28/2017 
-- Design Name: 
-- Module Name:    Mux_LB - Behavioral 
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
-- LBÔİ´æÆ÷Êı¾İÑ¡Ôñ
entity Mux_LB is
	port(Data_Imme, Data_Shamt, Data_Bus:in std_logic_vector(31 downto 0);
			Data_out:out std_logic_vector(31 downto 0);
			Data_select:in std_logic_vector(1 downto 0));
end Mux_LB;

architecture Behavioral of Mux_LB is

begin
	process(Data_select)
	begin
		case(Data_select) is
			when "00" =>
				Data_out <= Data_Imme;
			when "01" =>
				Data_out <= Data_Shamt;
			when "10" =>
				Data_out <= Data_Bus;
			when others =>
				Data_out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end case;
	end process;
end Behavioral;

