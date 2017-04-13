--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:37:12 04/13/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/testRF.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegistersField
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
 
ENTITY testRF IS
END testRF;
 
ARCHITECTURE behavior OF testRF IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegistersField
    PORT(
         W_data : IN  std_logic_vector(31 downto 0);
         R_data : OUT  std_logic_vector(31 downto 0);
         WE : IN  std_logic;
         OE : IN  std_logic;
         clk : IN  std_logic;
         Reg_addr : IN  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal W_data : std_logic_vector(31 downto 0) := (others => '0');
   signal WE : std_logic := '0';
   signal OE : std_logic := '0';
   signal clk : std_logic := '0';
   signal Reg_addr : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal R_data : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegistersField PORT MAP (
          W_data => W_data,
          R_data => R_data,
          WE => WE,
          OE => OE,
          clk => clk,
          Reg_addr => Reg_addr
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		W_data <= "11111111000000000000000000000000";
		WE <= '1';
		OE <= '0';
		Reg_addr <= "00001";
		wait for clk_period*2;
		WE <= '0';
		OE <= '1';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
