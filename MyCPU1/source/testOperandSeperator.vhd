--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:56:55 04/12/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/testOperandSeperator.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Oprand_Seperator
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
 
ENTITY testOperandSeperator IS
END testOperandSeperator;
 
ARCHITECTURE behavior OF testOperandSeperator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Oprand_Seperator
    PORT(
         oprand : IN  std_logic_vector(25 downto 0);
         Rs : OUT  std_logic_vector(4 downto 0);
         Rt : OUT  std_logic_vector(4 downto 0);
         Imme : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal oprand : std_logic_vector(25 downto 0) := (others => '0');

 	--Outputs
   signal Rs : std_logic_vector(4 downto 0);
   signal Rt : std_logic_vector(4 downto 0);
   signal Imme : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Oprand_Seperator PORT MAP (
          oprand => oprand,
          Rs => Rs,
          Rt => Rt,
          Imme => Imme
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      oprand <= "00000100001011111100111111";

      -- insert stimulus here 

      wait;
   end process;

END;
