----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:49:06 03/25/2017 
-- Design Name: 
-- Module Name:    PC_Seperator - Behavioral 
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
-- 分离PC寄存器的地址为高4位和低28位
entity PC_Seperator is
	port(PC_value:in std_logic_vector(31 downto 0);
			high4:out std_logic_vector(3 downto 0);
			low4:out std_logic_vector(27 downto 0));
end PC_Seperator;

architecture Behavioral of PC_Seperator is

begin
	high4 <= PC_value(31 downto 28);
	low4 <= PC_value(27 downto 0);
end Behavioral;

