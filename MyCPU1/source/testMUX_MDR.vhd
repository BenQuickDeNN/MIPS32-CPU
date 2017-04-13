--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:49:42 04/13/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/testMUX_MDR.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux_MDR
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
 
ENTITY testMUX_MDR IS
END testMUX_MDR;
 
ARCHITECTURE behavior OF testMUX_MDR IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_MDR
    PORT(
         data_bus : IN  std_logic_vector(31 downto 0);
         data_mem : IN  std_logic_vector(31 downto 0);
         data_out : OUT  std_logic_vector(31 downto 0);
         data_select : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data_bus : std_logic_vector(31 downto 0) := (others => '0');
   signal data_mem : std_logic_vector(31 downto 0) := (others => '0');
   signal data_select : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_MDR PORT MAP (
          data_bus => data_bus,
          data_mem => data_mem,
          data_out => data_out,
          data_select => data_select
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      data_bus <= "11111111000000000000000000000000";
		data_mem <= "00000000111111110000000000000000";
		data_select <= '0';
		wait for 100 ns;
		data_select <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
