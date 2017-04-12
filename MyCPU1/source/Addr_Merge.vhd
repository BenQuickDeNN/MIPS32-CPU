----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:06:56 03/29/2017 
-- Design Name: 
-- Module Name:    Addr_Merge - Behavioral 
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
-- 用于跳转指令中合并地址
entity Addr_Merge is
	port(pc_high:in std_logic_vector(3 downto 0);-- PC寄存器高4位地址
			address:in std_logic_vector(25 downto 0);-- 地址输入
			out_new_addr:out std_logic_vector(31 downto 0)-- 地址输出
			);
end Addr_Merge;

architecture Behavioral of Addr_Merge is

begin
	out_new_addr(31 downto 28) <= pc_high;
	out_new_addr(27 downto 26) <= "00";
	out_new_addr(25 downto 0) <= address;
end Behavioral;

