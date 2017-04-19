--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:20:25 04/12/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/testSRAM.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SRAM
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
 
ENTITY testSRAM IS
END testSRAM;
 
ARCHITECTURE behavior OF testSRAM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SRAM
    PORT(
         address : IN  std_logic_vector(31 downto 0);
         data_in : IN  std_logic_vector(31 downto 0);
         write1 : IN  std_logic;
			read1 : in std_logic;
         oe : IN  std_logic;
         cs : IN  std_logic;
         clk : IN  std_logic;
			boot : IN std_logic;
         data_out : OUT  std_logic_vector(31 downto 0);
			test_data_out : out std_logic_vector(31 downto 0);
			ready : out std_logic-- 内存准备好
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(31 downto 0) := (others => '0');
   signal data_in : std_logic_vector(31 downto 0) := (others => '0');
   signal write1 : std_logic := '0';
	signal read1 : std_logic;
   signal oe : std_logic := '0';
   signal cs : std_logic := '0';
   signal clk : std_logic := '0';
	signal boot : std_logic := '0';
	signal test_data_out : std_logic_vector(31 downto 0) := (others => '0');
	signal ready : std_logic;-- 内存准备好

 	--Outputs
   signal data_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SRAM PORT MAP (
          address => address,
          data_in => data_in,
          write1 => write1,
			 read1 => read1,
          oe => oe,
          cs => cs,
          clk => clk,
			 boot => boot,
          data_out => data_out,
			 test_data_out => test_data_out,
			 ready => ready
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
		boot <= '0';
		wait for 50 ns;
		boot <= '1';
		wait for 100 ns;
		boot <= '0';
		address <= "00000000000000000000000000000001";
		data_in <= "11111111111111111111111111111111";
		wait for 20 ns;
		write1 <= '1';
		cs <= '1';
		wait for 30 ns;
		write1 <= '0';
		oe <= '1';
		read1 <= '1';
      wait;
   end process;

END;
