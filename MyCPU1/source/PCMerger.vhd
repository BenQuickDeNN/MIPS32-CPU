----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:25:54 04/16/2017 
-- Design Name: 
-- Module Name:    PCMerger - Behavioral 
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

entity PCMerger is
	port(pc_high : in std_logic_vector(3 downto 0);
			imme : in std_logic_vector(31 downto 0);
			pc_new : out std_logic_vector(31 downto 0));
end PCMerger;

architecture Behavioral of PCMerger is

begin
	pc_new(31 downto 28) <= pc_high;
	pc_new(27 downto 0) <= imme(27 downto 0);
end Behavioral;

