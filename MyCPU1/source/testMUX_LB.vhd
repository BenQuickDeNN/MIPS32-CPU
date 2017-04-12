--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:08:26 04/13/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/testMUX_LB.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux_LB
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
 
ENTITY testMUX_LB IS
END testMUX_LB;
 
ARCHITECTURE behavior OF testMUX_LB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_LB
    PORT(
         Data_Imme : IN  std_logic_vector(31 downto 0);
         Data_Shamt : IN  std_logic_vector(31 downto 0);
         Data_Bus : IN  std_logic_vector(31 downto 0);
         Data_out : OUT  std_logic_vector(31 downto 0);
         Data_select : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Data_Imme : std_logic_vector(31 downto 0) := (others => '0');
   signal Data_Shamt : std_logic_vector(31 downto 0) := (others => '0');
   signal Data_Bus : std_logic_vector(31 downto 0) := (others => '0');
   signal Data_select : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Data_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_LB PORT MAP (
          Data_Imme => Data_Imme,
          Data_Shamt => Data_Shamt,
          Data_Bus => Data_Bus,
          Data_out => Data_out,
          Data_select => Data_select
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      Data_Imme <= "11111111000000000000000000000000";
		Data_Shamt <= "00000000111111110000000000000000";
		Data_Bus <= "00000000000000001111111100000000";
		Data_select <= "00";
		wait for 100 ns;
		Data_select <= "01";
		wait for 100 ns;
		Data_select <= "10";
		wait for 100 ns;
		Data_select <= "11";

      -- insert stimulus here 

      wait;
   end process;

END;
