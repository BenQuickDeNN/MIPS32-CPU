----------------------------------------------------------------------------------
-- Company: XJTU
-- Engineer: Ben Quick
-- 
-- Create Date:    19:26:50 03/25/2017 
-- Design Name: 
-- Module Name:    Instruction_Seperator - Behavioral 
-- Project Name: MyCPU
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
-- 用于分离指令中的操作码和操作数
entity Instruction_Seperator is
	port(instruction_in:in std_logic_vector(31 downto 0);
			OPcode:out std_logic_vector(5 downto 0);-- 6位操作码
			OPrand:out std_logic_vector(25 downto 0)
			);
end Instruction_Seperator;

architecture Behavioral of Instruction_Seperator is

begin
	OPcode <= instruction_in(31 downto 26);
	OPrand <= instruction_in(25 downto 0);
end Behavioral;

