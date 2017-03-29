----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:47:55 03/28/2017 
-- Design Name: 
-- Module Name:    ShamtExt - Behavioral 
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
-- À©Õ¹ÒÆÎ»Âë
entity ShamtExt is
	port(shamt:in std_logic_vector(4 downto 0);
			shamt32:out std_logic_vector(31 downto 0));
end ShamtExt;

architecture Behavioral of ShamtExt is

begin
	shamt32(31 downto 5) <= "000000000000000000000000000";
	shamt32(4 downto 0) <= shamt;
end Behavioral;

