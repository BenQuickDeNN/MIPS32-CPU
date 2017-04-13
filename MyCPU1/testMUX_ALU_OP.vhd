--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:33:48 04/13/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/testMUX_ALU_OP.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux_ALU_OP
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testMUX_ALU_OP IS
END testMUX_ALU_OP;
 
ARCHITECTURE behavior OF testMUX_ALU_OP IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_ALU_OP
    PORT(
         op0 : IN  std_logic_vector(5 downto 0);
         op1 : IN  std_logic_vector(5 downto 0);
         op_out : OUT  std_logic_vector(5 downto 0);
         op_select : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal op0 : std_logic_vector(5 downto 0) := (others => '0');
   signal op1 : std_logic_vector(5 downto 0) := (others => '0');
   signal op_select : std_logic := '0';

 	--Outputs
   signal op_out : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_ALU_OP PORT MAP (
          op0 => op0,
          op1 => op1,
          op_out => op_out,
          op_select => op_select
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      op0 <= "100000";
		op1 <= "011000";
		op_select <= '0';
		wait for 100 ns;
		op_select <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
