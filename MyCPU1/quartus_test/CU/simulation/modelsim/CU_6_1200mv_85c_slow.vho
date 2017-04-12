-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 11.0 Build 157 04/27/2011 SJ Full Version"

-- DATE "03/30/2017 21:04:44"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CU IS
    PORT (
	instruction_done : OUT std_logic;
	write_PC : OUT std_logic;
	allow_PC_BUS : OUT std_logic;
	write_IR : OUT std_logic;
	write_RF : OUT std_logic;
	oe_RF : OUT std_logic;
	reg_type_select : OUT std_logic_vector(1 DOWNTO 0);
	write_MAR : OUT std_logic;
	write_MDR : OUT std_logic;
	MDR_data_select : OUT std_logic;
	allow_MDR_BUS : OUT std_logic;
	write_MEM : OUT std_logic;
	read_MEM : OUT std_logic;
	write_LA : OUT std_logic;
	write_LB : OUT std_logic;
	allow_ALU_BUS : OUT std_logic;
	alu_op : OUT std_logic_vector(5 DOWNTO 0);
	alu_op_select : OUT std_logic;
	pc_data_select : OUT std_logic_vector(1 DOWNTO 0);
	LB_data_select : OUT std_logic_vector(1 DOWNTO 0);
	allow_Imme_Shamt_to_Bus : OUT std_logic;
	opcode : IN std_logic_vector(5 DOWNTO 0);
	CLK : IN std_logic;
	flag_zero : IN std_logic;
	initiation : IN std_logic;
	mem_ready : IN std_logic
	);
END CU;

-- Design Ports Information
-- flag_zero	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instruction_done	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_PC	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allow_PC_BUS	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_IR	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_RF	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oe_RF	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_type_select[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_type_select[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_MAR	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_MDR	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDR_data_select	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allow_MDR_BUS	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_MEM	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_MEM	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_LA	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_LB	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allow_ALU_BUS	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[4]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_op_select	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_data_select[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_data_select[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LB_data_select[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LB_data_select[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- allow_Imme_Shamt_to_Bus	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[0]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[1]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[4]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- opcode[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mem_ready	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- initiation	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_instruction_done : std_logic;
SIGNAL ww_write_PC : std_logic;
SIGNAL ww_allow_PC_BUS : std_logic;
SIGNAL ww_write_IR : std_logic;
SIGNAL ww_write_RF : std_logic;
SIGNAL ww_oe_RF : std_logic;
SIGNAL ww_reg_type_select : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_write_MAR : std_logic;
SIGNAL ww_write_MDR : std_logic;
SIGNAL ww_MDR_data_select : std_logic;
SIGNAL ww_allow_MDR_BUS : std_logic;
SIGNAL ww_write_MEM : std_logic;
SIGNAL ww_read_MEM : std_logic;
SIGNAL ww_write_LA : std_logic;
SIGNAL ww_write_LB : std_logic;
SIGNAL ww_allow_ALU_BUS : std_logic;
SIGNAL ww_alu_op : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_alu_op_select : std_logic;
SIGNAL ww_pc_data_select : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LB_data_select : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_allow_Imme_Shamt_to_Bus : std_logic;
SIGNAL ww_opcode : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_flag_zero : std_logic;
SIGNAL ww_initiation : std_logic;
SIGNAL ww_mem_ready : std_logic;
SIGNAL \flag_zero~input_o\ : std_logic;
SIGNAL \opcode[0]~input_o\ : std_logic;
SIGNAL \opcode[1]~input_o\ : std_logic;
SIGNAL \opcode[2]~input_o\ : std_logic;
SIGNAL \opcode[3]~input_o\ : std_logic;
SIGNAL \opcode[4]~input_o\ : std_logic;
SIGNAL \opcode[5]~input_o\ : std_logic;
SIGNAL \mem_ready~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \initiation~input_o\ : std_logic;

BEGIN

instruction_done <= ww_instruction_done;
write_PC <= ww_write_PC;
allow_PC_BUS <= ww_allow_PC_BUS;
write_IR <= ww_write_IR;
write_RF <= ww_write_RF;
oe_RF <= ww_oe_RF;
reg_type_select <= ww_reg_type_select;
write_MAR <= ww_write_MAR;
write_MDR <= ww_write_MDR;
MDR_data_select <= ww_MDR_data_select;
allow_MDR_BUS <= ww_allow_MDR_BUS;
write_MEM <= ww_write_MEM;
read_MEM <= ww_read_MEM;
write_LA <= ww_write_LA;
write_LB <= ww_write_LB;
allow_ALU_BUS <= ww_allow_ALU_BUS;
alu_op <= ww_alu_op;
alu_op_select <= ww_alu_op_select;
pc_data_select <= ww_pc_data_select;
LB_data_select <= ww_LB_data_select;
allow_Imme_Shamt_to_Bus <= ww_allow_Imme_Shamt_to_Bus;
ww_opcode <= opcode;
ww_CLK <= CLK;
ww_flag_zero <= flag_zero;
ww_initiation <= initiation;
ww_mem_ready <= mem_ready;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y31_N9
\instruction_done~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instruction_done);

-- Location: IOOBUF_X24_Y0_N2
\write_PC~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_PC);

-- Location: IOOBUF_X33_Y28_N9
\allow_PC_BUS~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_allow_PC_BUS);

-- Location: IOOBUF_X14_Y0_N9
\write_IR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_IR);

-- Location: IOOBUF_X33_Y22_N9
\write_RF~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_RF);

-- Location: IOOBUF_X33_Y11_N2
\oe_RF~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_oe_RF);

-- Location: IOOBUF_X26_Y0_N2
\reg_type_select[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_type_select(0));

-- Location: IOOBUF_X20_Y0_N9
\reg_type_select[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_reg_type_select(1));

-- Location: IOOBUF_X29_Y0_N2
\write_MAR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_MAR);

-- Location: IOOBUF_X33_Y22_N2
\write_MDR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_MDR);

-- Location: IOOBUF_X24_Y0_N9
\MDR_data_select~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_MDR_data_select);

-- Location: IOOBUF_X33_Y14_N9
\allow_MDR_BUS~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_allow_MDR_BUS);

-- Location: IOOBUF_X33_Y15_N2
\write_MEM~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_MEM);

-- Location: IOOBUF_X22_Y0_N9
\read_MEM~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_MEM);

-- Location: IOOBUF_X26_Y31_N9
\write_LA~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_LA);

-- Location: IOOBUF_X33_Y11_N9
\write_LB~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_write_LB);

-- Location: IOOBUF_X12_Y0_N9
\allow_ALU_BUS~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_allow_ALU_BUS);

-- Location: IOOBUF_X20_Y0_N2
\alu_op[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_op(0));

-- Location: IOOBUF_X29_Y31_N9
\alu_op[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_op(1));

-- Location: IOOBUF_X12_Y31_N2
\alu_op[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_op(2));

-- Location: IOOBUF_X29_Y31_N2
\alu_op[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_op(3));

-- Location: IOOBUF_X26_Y0_N9
\alu_op[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_op(4));

-- Location: IOOBUF_X33_Y27_N9
\alu_op[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_op(5));

-- Location: IOOBUF_X8_Y0_N2
\alu_op_select~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_alu_op_select);

-- Location: IOOBUF_X31_Y31_N9
\pc_data_select[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pc_data_select(0));

-- Location: IOOBUF_X31_Y0_N9
\pc_data_select[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_pc_data_select(1));

-- Location: IOOBUF_X12_Y0_N2
\LB_data_select[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LB_data_select(0));

-- Location: IOOBUF_X22_Y0_N2
\LB_data_select[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LB_data_select(1));

-- Location: IOOBUF_X14_Y0_N2
\allow_Imme_Shamt_to_Bus~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_allow_Imme_Shamt_to_Bus);

-- Location: IOIBUF_X33_Y16_N8
\flag_zero~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_flag_zero,
	o => \flag_zero~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\opcode[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(0),
	o => \opcode[0]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\opcode[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(1),
	o => \opcode[1]~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\opcode[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(2),
	o => \opcode[2]~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\opcode[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(3),
	o => \opcode[3]~input_o\);

-- Location: IOIBUF_X33_Y24_N1
\opcode[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(4),
	o => \opcode[4]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\opcode[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opcode(5),
	o => \opcode[5]~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\mem_ready~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mem_ready,
	o => \mem_ready~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\initiation~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_initiation,
	o => \initiation~input_o\);
END structure;


