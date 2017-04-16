--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:07:09 04/12/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/testRegister32.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Register32
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
 
ENTITY testRegister32 IS
END testRegister32;
 
ARCHITECTURE behavior OF testRegister32 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Register32
    PORT(
         data_in : IN  std_logic_vector(31 downto 0);
         data_out : OUT  std_logic_vector(31 downto 0);
			opcode_ready : out std_logic;-- 操作码准备好（IR寄存器）
         WE : IN  std_logic;
			OE : in std_logic; -- 输出使能
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data_in : std_logic_vector(31 downto 0) := (others => '0');
   signal WE : std_logic := '0';
   signal clk : std_logic := '0';
	signal OE : std_logic; -- 输出使能
 	--Outputs
   signal data_out : std_logic_vector(31 downto 0);
	signal opcode_ready : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Register32 PORT MAP (
          data_in => data_in,
          data_out => data_out,
			 opcode_ready => opcode_ready,
          WE => WE,
			 OE => OE,
          clk => clk
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
		
		data_in <= "11111111111111111111111111111111";
		WE <= '1';
		wait for clk_period;
		WE <= '0';
		data_in <= "00000000000000000000000000000000";
		wait for clk_period*2;
		OE <= '1';
		wait for clk_period*2;
		WE <= '1';
		wait for clk_period;
		WE <= '0';
		wait for clk_period*2;
		OE <= '0';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
