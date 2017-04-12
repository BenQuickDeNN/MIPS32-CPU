--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:19:40 03/30/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL/MyCPU1_ISE/MyCPU1/source/test_CU.vhd
-- Project Name:  MyCPU1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CU
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
 
ENTITY test_CU IS
END test_CU;
 
ARCHITECTURE behavior OF test_CU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CU
    PORT(
         opcode : IN  std_logic_vector(5 downto 0);
         CLK : IN  std_logic;
         flag_zero : IN  std_logic;
         initiation : IN  std_logic;
			test_MCounter : OUT std_logic_vector(5 downto 0);
			test_opcode: out std_logic_vector(5 downto 0);
			test_Miinstruct : OUT std_logic_vector(31 downto 0);
         instruction_done : OUT  std_logic;
         mem_ready : IN  std_logic;
         write_PC : OUT  std_logic;
         allow_PC_BUS : OUT  std_logic;
         write_IR : OUT  std_logic;
         write_RF : OUT  std_logic;
         oe_RF : OUT  std_logic;
         reg_type_select : OUT  std_logic_vector(1 downto 0);
         write_MAR : OUT  std_logic;
         write_MDR : OUT  std_logic;
         MDR_data_select : OUT  std_logic;
         allow_MDR_BUS : OUT  std_logic;
         write_MEM : OUT  std_logic;
         read_MEM : OUT  std_logic;
         write_LA : OUT  std_logic;
         write_LB : OUT  std_logic;
         allow_ALU_BUS : OUT  std_logic;
         alu_op : OUT  std_logic_vector(5 downto 0);
         alu_op_select : OUT  std_logic;
         pc_data_select : OUT  std_logic_vector(1 downto 0);
         LB_data_select : OUT  std_logic_vector(1 downto 0);
         allow_Imme_Shamt_to_Bus : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal opcode : std_logic_vector(5 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal flag_zero : std_logic := '0';
   signal initiation : std_logic := '0';
   signal mem_ready : std_logic := '0';

 	--Outputs
	signal test_opcode : std_logic_vector(5 downto 0);
	signal test_MCounter : std_logic_vector(5 downto 0);
	signal test_Miinstruct : std_logic_vector(31 downto 0);
   signal instruction_done : std_logic;
   signal write_PC : std_logic;
   signal allow_PC_BUS : std_logic;
   signal write_IR : std_logic;
   signal write_RF : std_logic;
   signal oe_RF : std_logic;
   signal reg_type_select : std_logic_vector(1 downto 0);
   signal write_MAR : std_logic;
   signal write_MDR : std_logic;
   signal MDR_data_select : std_logic;
   signal allow_MDR_BUS : std_logic;
   signal write_MEM : std_logic;
   signal read_MEM : std_logic;
   signal write_LA : std_logic;
   signal write_LB : std_logic;
   signal allow_ALU_BUS : std_logic;
   signal alu_op : std_logic_vector(5 downto 0);
   signal alu_op_select : std_logic;
   signal pc_data_select : std_logic_vector(1 downto 0);
   signal LB_data_select : std_logic_vector(1 downto 0);
   signal allow_Imme_Shamt_to_Bus : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CU PORT MAP (
          opcode => opcode,
          CLK => CLK,
          flag_zero => flag_zero,
          initiation => initiation,
			 test_MCounter => test_MCounter,
			 test_opcode => test_opcode,
			 test_Miinstruct => test_Miinstruct,
          instruction_done => instruction_done,
          mem_ready => mem_ready,
          write_PC => write_PC,
          allow_PC_BUS => allow_PC_BUS,
          write_IR => write_IR,
          write_RF => write_RF,
          oe_RF => oe_RF,
          reg_type_select => reg_type_select,
          write_MAR => write_MAR,
          write_MDR => write_MDR,
          MDR_data_select => MDR_data_select,
          allow_MDR_BUS => allow_MDR_BUS,
          write_MEM => write_MEM,
          read_MEM => read_MEM,
          write_LA => write_LA,
          write_LB => write_LB,
          allow_ALU_BUS => allow_ALU_BUS,
          alu_op => alu_op,
          alu_op_select => alu_op_select,
          pc_data_select => pc_data_select,
          LB_data_select => LB_data_select,
          allow_Imme_Shamt_to_Bus => allow_Imme_Shamt_to_Bus
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
      wait for 100 ns;	

		mem_ready <= '1';
		opcode <= "001000";-- ADDI
		initiation <= '1';
		
      wait for CLK_period*20;
		
		initiation <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
