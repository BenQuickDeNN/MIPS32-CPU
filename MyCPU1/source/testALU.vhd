--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:53:01 04/13/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/testALU.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY testALU IS
END testALU;
 
ARCHITECTURE behavior OF testALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         alu_in_a : IN  std_logic_vector(31 downto 0);
         alu_in_b : IN  std_logic_vector(31 downto 0);
         op_code : IN  std_logic_vector(5 downto 0);
         flag_z : OUT  std_logic;
         result : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal alu_in_a : std_logic_vector(31 downto 0) := (others => '0');
   signal alu_in_b : std_logic_vector(31 downto 0) := (others => '0');
   signal op_code : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal flag_z : std_logic;
   signal result : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          alu_in_a => alu_in_a,
          alu_in_b => alu_in_b,
          op_code => op_code,
          flag_z => flag_z,
          result => result
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		alu_in_a <= "00000000000000000000000000011000";
		alu_in_b <= "00000000000000000000000000001111";
		op_code <= "100000";
		wait for 100 ns;
		op_code <= "100010";
		wait for 100 ns;
		op_code <= "100100";
		wait for 100 ns;
		op_code <= "100101";
		wait for 100 ns;
		op_code <= "100110";
		wait for 100 ns;
		op_code <= "100111";
		wait for 100 ns;
		op_code <= "101010";
		wait for 100 ns;
		op_code <= "000000";
		wait for 100 ns;
		op_code <= "000010";
		wait for 100 ns;
		alu_in_a <= "00000000000000000000000000001111";
		op_code <= "100010";
		wait for 100 ns;
		op_code <= "101010";
		wait for 100 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
