----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:21:27 04/12/2017 
-- Design Name: 
-- Module Name:    PCHighExtender - Behavioral 
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
-- PC¸ß4Î»À©Õ¹
entity PCHighExtender is
	port(pc_high : in std_logic_vector(3 downto 0);
			pc_ext : out std_logic_vector(31 downto 0));
end PCHighExtender;

architecture Behavioral of PCHighExtender is
begin
	pc_ext(31 downto 28) <= pc_high;
	pc_ext(27 downto 0) <= "0000000000000000000000000000";
end Behavioral;

