--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:28:13 04/12/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/testPCHighExtender.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PCHighExtender
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
 
ENTITY testPCHighExtender IS
END testPCHighExtender;
 
ARCHITECTURE behavior OF testPCHighExtender IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PCHighExtender
    PORT(
         pc_high : IN  std_logic_vector(3 downto 0);
         pc_ext : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal pc_high : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal pc_ext : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PCHighExtender PORT MAP (
          pc_high => pc_high,
          pc_ext => pc_ext
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


		pc_high <= "1010";
      -- insert stimulus here 

      wait;
   end process;

END;
