--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:15:11 04/14/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/testComputer.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Computer
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
 
ENTITY testComputer IS
END testComputer;
 
ARCHITECTURE behavior OF testComputer IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Computer
    PORT(
         CLK : IN  std_logic;
         Initiation, pro_run : IN  std_logic;
         boot : IN  std_logic;
         InstructionDone : OUT  std_logic;
			-- µ÷ÊÔÊä³ö¶Ë¿Ú
			debug_memData, debug_memAddr, debug_PCData, debug_IRData, debug_BUSData : out std_logic_vector(31 downto 0);
			debug_microInstruc : out std_logic_vector(31 downto 0);
			debug_CUOPcode : out std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal Initiation, pro_run : std_logic := '0';
   signal boot : std_logic := '0';

 	--Outputs
   signal InstructionDone : std_logic;
	signal debug_memData, debug_memAddr, debug_PCData ,debug_IRData, debug_BUSData : std_logic_vector(31 downto 0);
	signal debug_microInstruc : std_logic_vector(31 downto 0);
	signal debug_CUOPcode : std_logic_vector(5 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Computer PORT MAP (
          CLK => CLK,
          Initiation => Initiation,
			 pro_run => pro_run,
          boot => boot,
          InstructionDone => InstructionDone,
			 debug_memData => debug_memData,
			 debug_memAddr => debug_memAddr,
			 debug_PCData => debug_PCData,
			 debug_IRData => debug_IRData,
			 debug_BUSData => debug_BUSData,
			 debug_CUOPcode => debug_CUOPcode
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		boot <= '0';
		wait for 100 ns;
		boot <= '1';
		wait for 50 ns;
		boot <= '0';
		Initiation <= '0';
      wait for 50 ns;	
		Initiation <= '1';
		wait for 50 ns;
		Initiation <= '0';
		wait for 10 ns;
		pro_run <= '1';
      wait for CLK_period*50;

      -- insert stimulus here 

      wait;
   end process;

END;
