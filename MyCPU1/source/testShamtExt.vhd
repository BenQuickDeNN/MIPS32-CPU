--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:06:20 04/13/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/testShamtExt.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ShamtExt
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
 
ENTITY testShamtExt IS
END testShamtExt;
 
ARCHITECTURE behavior OF testShamtExt IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ShamtExt
    PORT(
         shamt : IN  std_logic_vector(4 downto 0);
         shamt32 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal shamt : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal shamt32 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ShamtExt PORT MAP (
          shamt => shamt,
          shamt32 => shamt32
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      shamt <= "01001";

      -- insert stimulus here 

      wait;
   end process;

END;
