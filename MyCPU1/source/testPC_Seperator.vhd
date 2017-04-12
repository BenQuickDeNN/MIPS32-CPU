--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:24:10 04/12/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/testPC_Seperator.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC_Seperator
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
 
ENTITY testPC_Seperator IS
END testPC_Seperator;
 
ARCHITECTURE behavior OF testPC_Seperator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC_Seperator
    PORT(
         PC_value : IN  std_logic_vector(31 downto 0);
         high4 : OUT  std_logic_vector(3 downto 0);
         low4 : OUT  std_logic_vector(27 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PC_value : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal high4 : std_logic_vector(3 downto 0);
   signal low4 : std_logic_vector(27 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC_Seperator PORT MAP (
          PC_value => PC_value,
          high4 => high4,
          low4 => low4
        );

  

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 
		PC_Value <= "10100001100000000000000000001000";
      wait;
   end process;

END;
