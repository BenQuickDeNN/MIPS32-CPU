
-- VHDL Instantiation Created from source file CU.vhd -- 20:58:44 04/12/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT CU
	PORT(
		opcode : IN std_logic_vector(5 downto 0);
		CLK : IN std_logic;
		flag_zero : IN std_logic;
		initiation : IN std_logic;
		mem_ready : IN std_logic;          
		instruction_done : OUT std_logic;
		test_MCounter : OUT std_logic_vector(5 downto 0);
		test_opcode : OUT std_logic_vector(5 downto 0);
		test_Miinstruct : OUT std_logic_vector(31 downto 0);
		write_PC : OUT std_logic;
		allow_PC_BUS : OUT std_logic;
		write_IR : OUT std_logic;
		write_RF : OUT std_logic;
		oe_RF : OUT std_logic;
		reg_type_select : OUT std_logic_vector(1 downto 0);
		write_MAR : OUT std_logic;
		write_MDR : OUT std_logic;
		MDR_data_select : OUT std_logic;
		allow_MDR_BUS : OUT std_logic;
		write_MEM : OUT std_logic;
		read_MEM : OUT std_logic;
		write_LA : OUT std_logic;
		write_LB : OUT std_logic;
		allow_ALU_BUS : OUT std_logic;
		alu_op : OUT std_logic_vector(5 downto 0);
		alu_op_select : OUT std_logic;
		pc_data_select : OUT std_logic_vector(1 downto 0);
		LB_data_select : OUT std_logic_vector(1 downto 0);
		allow_Imme_Shamt_to_Bus : OUT std_logic
		);
	END COMPONENT;

	Inst_CU: CU PORT MAP(
		opcode => ,
		CLK => ,
		flag_zero => ,
		initiation => ,
		instruction_done => ,
		mem_ready => ,
		test_MCounter => ,
		test_opcode => ,
		test_Miinstruct => ,
		write_PC => ,
		allow_PC_BUS => ,
		write_IR => ,
		write_RF => ,
		oe_RF => ,
		reg_type_select => ,
		write_MAR => ,
		write_MDR => ,
		MDR_data_select => ,
		allow_MDR_BUS => ,
		write_MEM => ,
		read_MEM => ,
		write_LA => ,
		write_LB => ,
		allow_ALU_BUS => ,
		alu_op => ,
		alu_op_select => ,
		pc_data_select => ,
		LB_data_select => ,
		allow_Imme_Shamt_to_Bus => 
	);


