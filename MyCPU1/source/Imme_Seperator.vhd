----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:52:05 03/25/2017 
-- Design Name: 
-- Module Name:    Imme_Seperator - Behavioral 
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
-- 分离立即数
entity Imme_Seperator is
	port(Imme:in std_logic_vector(15 downto 0);
			Rd:out std_logic_vector(4 downto 0);-- 目标寄存器号
			shamt:out std_logic_vector(4 downto 0); --移位数
			alu_func:out std_logic_vector(5 downto 0)-- alu 操作码
			);
end Imme_Seperator;

architecture Behavioral of Imme_Seperator is

begin
	Rd <= Imme(15 downto 11);
	shamt <= Imme(10 downto 6);
	alu_func <= Imme(5 downto 0);
end Behavioral;

