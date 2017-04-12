--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:35:29 04/12/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/testMUX_PC.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux_PC
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
 
ENTITY testMUX_PC IS
END testMUX_PC;
 
ARCHITECTURE behavior OF testMUX_PC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_PC
    PORT(
         data_adder4 : IN  std_logic_vector(31 downto 0);
         data_bus : IN  std_logic_vector(31 downto 0);
         data_addr_merge : IN  std_logic_vector(31 downto 0);
         data_out : OUT  std_logic_vector(31 downto 0);
         data_select : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data_adder4 : std_logic_vector(31 downto 0) := (others => '0');
   signal data_bus : std_logic_vector(31 downto 0) := (others => '0');
   signal data_addr_merge : std_logic_vector(31 downto 0) := (others => '0');
   signal data_select : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_PC PORT MAP (
          data_adder4 => data_adder4,
          data_bus => data_bus,
          data_addr_merge => data_addr_merge,
          data_out => data_out,
          data_select => data_select
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		data_adder4 <= "00000000000000000000000000001000";
		data_bus <= "00000000000000000000000000001111";
		data_addr_merge <= "11111111111111111111111111111111";
		data_select <= "00";
		wait for 100 ns;
		data_select <= "01";
		wait for 100 ns;
		data_select <= "10";
		wait for 100 ns;
		data_select <= "11";

      -- insert stimulus here 

      wait;
   end process;

END;
