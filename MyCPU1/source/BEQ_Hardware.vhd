----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:06:33 04/16/2017 
-- Design Name: 
-- Module Name:    BEQ_Hardware - Behavioral 
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
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
-- ¸¨Öú½øÐÐBEQ\BNQÔËËã
entity BEQ_Hardware is
	port(pc_value : in std_logic_vector(31 downto 0);
			imme : in std_logic_vector(31 downto 0);
			pc_new : out std_logic_vector(31 downto 0));
end BEQ_Hardware;

architecture Behavioral of BEQ_Hardware is

begin
	pc_new <= pc_value + imme;

end Behavioral;

