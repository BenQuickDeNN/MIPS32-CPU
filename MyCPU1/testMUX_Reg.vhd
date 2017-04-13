--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:43:51 04/13/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/testMUX_Reg.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux_Reg
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
 
ENTITY testMUX_Reg IS
END testMUX_Reg;
 
ARCHITECTURE behavior OF testMUX_Reg IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux_Reg
    PORT(
         Reg_addr_0 : IN  std_logic_vector(4 downto 0);
         Reg_addr_1 : IN  std_logic_vector(4 downto 0);
         Reg_addr_2 : IN  std_logic_vector(4 downto 0);
         Reg_out_addr : OUT  std_logic_vector(4 downto 0);
         Reg_Key : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Reg_addr_0 : std_logic_vector(4 downto 0) := (others => '0');
   signal Reg_addr_1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Reg_addr_2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Reg_Key : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Reg_out_addr : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux_Reg PORT MAP (
          Reg_addr_0 => Reg_addr_0,
          Reg_addr_1 => Reg_addr_1,
          Reg_addr_2 => Reg_addr_2,
          Reg_out_addr => Reg_out_addr,
          Reg_Key => Reg_Key
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      Reg_addr_0 <= "00011";
		Reg_addr_1 <= "01100";
		Reg_addr_2 <= "10000";
		Reg_Key <= "00";
		wait for 100 ns;
		Reg_Key <= "01";
		wait for 100 ns;
		Reg_Key <= "10";
		wait for 100 ns;
		Reg_Key <= "11";

      -- insert stimulus here 

      wait;
   end process;

END;
