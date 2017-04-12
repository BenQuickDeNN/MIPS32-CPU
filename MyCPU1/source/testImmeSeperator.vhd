--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:01:00 04/13/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/testImmeSeperator.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Imme_Seperator
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
 
ENTITY testImmeSeperator IS
END testImmeSeperator;
 
ARCHITECTURE behavior OF testImmeSeperator IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Imme_Seperator
    PORT(
         Imme : IN  std_logic_vector(15 downto 0);
         Rd : OUT  std_logic_vector(4 downto 0);
         shamt : OUT  std_logic_vector(4 downto 0);
         alu_func : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Imme : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Rd : std_logic_vector(4 downto 0);
   signal shamt : std_logic_vector(4 downto 0);
   signal alu_func : std_logic_vector(5 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Imme_Seperator PORT MAP (
          Imme => Imme,
          Rd => Rd,
          shamt => shamt,
          alu_func => alu_func
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      Imme <= "1000101011111111";

      -- insert stimulus here 

      wait;
   end process;

END;
