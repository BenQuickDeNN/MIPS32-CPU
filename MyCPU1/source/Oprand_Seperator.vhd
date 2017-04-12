----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:38:25 03/25/2017 
-- Design Name: 
-- Module Name:    Oprand_Seperator - Behavioral 
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
-- 用来分离操作数
entity Oprand_Seperator is
	port(oprand:in std_logic_vector(25 downto 0);-- 操作数
			Rs:out std_logic_vector(4 downto 0);-- 源寄存器号
			Rt:out std_logic_vector(4 downto 0);-- 目的寄存器号
			Imme:out std_logic_vector(15 downto 0)-- 立即数
			);
end Oprand_Seperator;

architecture Behavioral of Oprand_Seperator is

begin
	Rs <= oprand(25 downto 21);
	Rt <= oprand(20 downto 16);
	Imme <= oprand(15 downto 0);
end Behavioral;

