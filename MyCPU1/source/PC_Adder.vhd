----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:53:24 03/28/2017 
-- Design Name: 
-- Module Name:    PC_Adder - Behavioral 
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
-- PC×Ô¼ÓÆ÷
entity PC_Adder is
	port(old_pc:in std_logic_vector(31 downto 0);
			new_pc:out std_logic_vector(31 downto 0));
end PC_Adder;

architecture Behavioral of PC_Adder is
signal add_num:std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
begin
	process(old_pc)
	begin
		new_pc <= old_pc + add_num;
	end process;
end Behavioral;

