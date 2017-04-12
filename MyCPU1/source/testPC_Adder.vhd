--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:19:38 04/12/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/testPC_Adder.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC_Adder
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
 
ENTITY testPC_Adder IS
END testPC_Adder;
 
ARCHITECTURE behavior OF testPC_Adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC_Adder
    PORT(
         old_pc : IN  std_logic_vector(31 downto 0);
         new_pc : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal old_pc : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal new_pc : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC_Adder PORT MAP (
          old_pc => old_pc,
          new_pc => new_pc
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	



      -- insert stimulus here 
		old_pc <= "00000000000000000000000000000001";
      wait;
   end process;

END;
