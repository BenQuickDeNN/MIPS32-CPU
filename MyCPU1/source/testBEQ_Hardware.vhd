--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:18:28 04/16/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/testBEQ_Hardware.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BEQ_Hardware
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
 
ENTITY testBEQ_Hardware IS
END testBEQ_Hardware;
 
ARCHITECTURE behavior OF testBEQ_Hardware IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BEQ_Hardware
    PORT(
         pc_value : IN  std_logic_vector(31 downto 0);
         imme : IN  std_logic_vector(31 downto 0);
         pc_new : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal pc_value : std_logic_vector(31 downto 0) := (others => '0');
   signal imme : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal pc_new : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BEQ_Hardware PORT MAP (
          pc_value => pc_value,
          imme => imme,
          pc_new => pc_new
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		pc_value <= "00000000000000000000000000000100";
		imme <= "00000000000000000000000000000010";
      -- insert stimulus here 

      wait;
   end process;

END;
