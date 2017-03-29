----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:30:10 03/28/2017 
-- Design Name: 
-- Module Name:    ImmeExt - Behavioral 
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
-- 将16位立即数扩展为32位
entity ImmeExt is
	port(Imme_in:in std_logic_vector(15 downto 0);
			Imme_out:out std_logic_vector(31 downto 0));
end ImmeExt;

architecture Behavioral of ImmeExt is

begin
	Imme_out(31 downto 16) <= x"0000";
	Imme_out(15 downto 0) <= Imme_in;
end Behavioral;

