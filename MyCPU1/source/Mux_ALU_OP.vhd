----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:22:45 03/28/2017 
-- Design Name: 
-- Module Name:    Mux_ALU_OP - Behavioral 
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
-- ALU操作码选择器
entity Mux_ALU_OP is
	port(op0, op1:in std_logic_vector(5 downto 0);
			op_out:out std_logic_vector(5 downto 0);
			op_select:in std_logic-- 路线选择
			);
end Mux_ALU_OP;

architecture Behavioral of Mux_ALU_OP is

begin
	process(op_select, op0, op1)
	begin
		if (op_select = '0') then
			op_out <= op0;
		else
			op_out <= op1;
		end if;
	end process;
end Behavioral;

