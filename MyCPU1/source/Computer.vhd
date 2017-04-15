----------------------------------------------------------------------------------
-- Company: ������ͨ��ѧ�����43��
-- Engineer: ����
-- 
-- Create Date:    21:43:13 04/12/2017 
-- Design Name: 	Multiple Periods CPU
-- Module Name:    Computer - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_textio.all;
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
-- ����ṹ
entity Computer is
	port(CLK, Initiation, boot, pro_run : in std_logic;
			InstructionDone : out std_logic;
			-- ��������˿�
			debug_memData, debug_memAddr, debug_PCData, debug_IRData, debug_BUSData : out std_logic_vector(31 downto 0);
			debug_microInstruc : out std_logic_vector(31 downto 0);
			debug_CUOPcode : out std_logic_vector(5 downto 0));
end Computer;

architecture Behavioral of Computer is
-- ���岿��
-- CU
	COMPONENT CU
    PORT(
         opcode : IN  std_logic_vector(5 downto 0);
         CLK : IN  std_logic;
         flag_zero : IN  std_logic;
         initiation, pro_run : IN  std_logic;
			test_MCounter : OUT std_logic_vector(5 downto 0);
			test_opcode: out std_logic_vector(5 downto 0);
			test_Miinstruct : OUT std_logic_vector(31 downto 0);
			test_ROM_out : out std_logic_vector(31 downto 0);
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
	 -- ALU
	 COMPONENT ALU
    PORT(
         alu_in_a : IN  std_logic_vector(31 downto 0);
         alu_in_b : IN  std_logic_vector(31 downto 0);
         op_code : IN  std_logic_vector(5 downto 0);
         flag_z : OUT  std_logic;
         result : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
-- SRAM
	COMPONENT SRAM
    PORT(
         address : IN  std_logic_vector(31 downto 0);
         data_in : IN  std_logic_vector(31 downto 0);
         write1 : IN  std_logic;
			read1 : in std_logic;
         oe : IN  std_logic;
         cs : IN  std_logic;
         clk : IN  std_logic;
			boot : in std_logic;
			ready : out std_logic;-- �ڴ�׼����
         data_out : OUT  std_logic_vector(31 downto 0);
			test_data_out : out std_logic_vector(31 downto 0)
        );
    END COMPONENT;
-- Register
	COMPONENT Register32
    PORT(
         data_in : IN  std_logic_vector(31 downto 0);
         data_out : OUT  std_logic_vector(31 downto 0);
         WE : IN  std_logic;
			OE : in std_logic; -- ���ʹ��
         clk : IN  std_logic
        );
    END COMPONENT;
	 -- PC Adder
	 COMPONENT PC_Adder
    PORT(
         old_pc : IN  std_logic_vector(31 downto 0);
         new_pc : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
	 -- PC Seperator
	 COMPONENT PC_Seperator
    PORT(
         PC_value : IN  std_logic_vector(31 downto 0);
         high4 : OUT  std_logic_vector(3 downto 0);
         low4 : OUT  std_logic_vector(27 downto 0)
        );
    END COMPONENT;
	 -- PC ��4λ��չ
	 COMPONENT PCHighExtender
    PORT(
         pc_high : IN  std_logic_vector(3 downto 0);
         pc_ext : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
	 -- PC����Դ��·ѡ����
	 COMPONENT Mux_PC
    PORT(
         data_adder4 : IN  std_logic_vector(31 downto 0);
         data_bus : IN  std_logic_vector(31 downto 0);
         data_addr_merge : IN  std_logic_vector(31 downto 0);
         data_out : OUT  std_logic_vector(31 downto 0);
         data_select : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
	 -- 32λ��̬��
	 COMPONENT TriState
    PORT(
         data_in : IN  std_logic_vector(31 downto 0);
         data_out : OUT  std_logic_vector(31 downto 0);
         ctrl : IN  std_logic
        );
    END COMPONENT;
	 -- ָ�������
	 COMPONENT Instruction_Seperator
    PORT(
         instruction_in : IN  std_logic_vector(31 downto 0);
         OPcode : OUT  std_logic_vector(5 downto 0);
         OPrand : OUT  std_logic_vector(25 downto 0)
        );
    END COMPONENT;
	 -- ������������
	 COMPONENT Oprand_Seperator
    PORT(
         oprand : IN  std_logic_vector(25 downto 0);
         Rs : OUT  std_logic_vector(4 downto 0);
         Rt : OUT  std_logic_vector(4 downto 0);
         Imme : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 -- ������������
	 COMPONENT Imme_Seperator
    PORT(
         Imme : IN  std_logic_vector(15 downto 0);
         Rd : OUT  std_logic_vector(4 downto 0);
         shamt : OUT  std_logic_vector(4 downto 0);
         alu_func : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
	 -- ��������չ��
	 COMPONENT ImmeExt
    PORT(
         Imme_in : IN  std_logic_vector(15 downto 0);
         Imme_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
	 -- ��λ����չ��
	 COMPONENT ShamtExt
    PORT(
         shamt : IN  std_logic_vector(4 downto 0);
         shamt32 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
	 -- LB����Դѡ����
	 COMPONENT Mux_LB
    PORT(
         Data_Imme : IN  std_logic_vector(31 downto 0);
         Data_Shamt : IN  std_logic_vector(31 downto 0);
         Data_Bus : IN  std_logic_vector(31 downto 0);
         Data_out : OUT  std_logic_vector(31 downto 0);
         Data_select : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
	 -- ALU������ѡ����
	 COMPONENT Mux_ALU_OP
    PORT(
         op0 : IN  std_logic_vector(5 downto 0);
         op1 : IN  std_logic_vector(5 downto 0);
         op_out : OUT  std_logic_vector(5 downto 0);
         op_select : IN  std_logic
        );
    END COMPONENT;
	 -- Register Field
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
	 -- MUX REG
	 COMPONENT Mux_Reg
    PORT(
         Reg_addr_0 : IN  std_logic_vector(4 downto 0);
         Reg_addr_1 : IN  std_logic_vector(4 downto 0);
         Reg_addr_2 : IN  std_logic_vector(4 downto 0);
         Reg_out_addr : OUT  std_logic_vector(4 downto 0);
         Reg_Key : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
	 -- MUX MDR
	 COMPONENT Mux_MDR
    PORT(
         data_bus : IN  std_logic_vector(31 downto 0);
         data_mem : IN  std_logic_vector(31 downto 0);
         data_out : OUT  std_logic_vector(31 downto 0);
         data_select : IN  std_logic
        );
    END COMPONENT;

	 -- ���幫���ź�
	 signal MainBus : std_logic_vector(31 downto 0) := (others => '0'); -- ����
	 signal C_VCC : std_logic := '1'; -- Ĭ�ϸߵ�ƽ
	 signal C_GND : std_logic := '0'; -- Ĭ�ϵ�
	 
	 -- CU�ź�
	 -- CU����ź�
	 signal CUControl : std_logic_vector(31 downto 0); -- CU΢��������
	 -- CU�����ź�
	 signal MEMready : std_logic;-- �ڴ�׼����
	 signal CUOpcode : std_logic_vector(5 downto 0);-- ָ������벿��
	 signal ALUFlag_Zero : std_logic; -- ���0��־
	 
	 -- ALU�ź�
	 -- ALU����ź�
	 -- ALUFlag_Zero
	 signal ALUResult : std_logic_vector(31 downto 0); -- ALU������
	 -- ALU�����ź�
	 signal ALUOprand_a : std_logic_vector(31 downto 0); -- ALU�������
	 signal ALUOprand_b : std_logic_vector(31 downto 0); -- ALU�Ҳ�����
	 signal ALUFunc : std_logic_vector(5 downto 0); -- ALU������
	 
	 -- SRAM
	 -- SRAM����ź�
	 -- MEMready
	 signal MEMDataOut : std_logic_vector(31 downto 0); -- �ڴ��������
	 -- SRAM�����ź�
	 -- clk
	 signal MEMAddress : std_logic_vector(31 downto 0) := (others => '0'); -- �ڴ��ַ����
	 signal MEMDataIn : std_logic_vector(31 downto 0) := (others => '0'); -- �ڴ���������
	 -- MEMWrite : std_logic; -- �ڴ�д�ź�
	 -- MEMRead : std_logic; -- �ڴ���ź�
	 -- MEMOE : std_logic; -- �ڴ����ʹ��
	 -- MEMCS : std_logic; -- �ڴ�Ƭѡ
	 
	 -- ר�üĴ����ź�
	 
	 -- PC�Ĵ���
	 -- PC����ź�
	 signal PCDataOut : std_logic_vector(31 downto 0)  := (others => '0');
	 -- PC�����ź�
	 -- clk
	 -- WritePC
	 -- oe = 1
	 signal PCDataIn : std_logic_vector(31 downto 0)  := (others => '0');
	 
	 -- IR�Ĵ���
	 -- IR����ź�
	 signal IRDataOut : std_logic_vector(31 downto 0)  := (others => '0');
	 -- IR�����ź�
	 -- clk
	 -- data_in from bus
	 -- write IR
	 -- oe = 1
	 
	 -- LA�ݴ���
	 -- LA����ź�
	 -- ALUOprand_a
	 -- LA�����ź�
	 -- clk
	 -- data_in from bus
	 -- write LA
	 -- oe = 1
	 
	 -- LB�ݴ���
	 -- LB����ź�
	 -- ALUOprand_b
	 -- LB�����ź�
	 -- clk
	 -- write LB
	 -- oe = 1
	 signal LBDataIn : std_logic_vector(31 downto 0); -- LB����Դ
	 
	 -- MAR
	 -- MAR����ź�
	 -- MEMAddress
	 -- MAR�����ź�
	 -- clk
	 -- write MAR
	 -- oe = 1
	 -- data_in from bus
	 
	 -- MDR
	 -- MDR����ź�
	 -- MEMDataOut
	 -- MDR�����ź�
	 -- clk
	 -- write MDR
	 -- oe = 1
	 signal MDRDataIn : std_logic_vector(31 downto 0); -- MDR����Դ
	 
	 -- PC Adder
	 -- PC Adder ����ź�
	 signal PCAdderDataOut : std_logic_vector(31 downto 0);
	 -- PC Adder �����ź�
	 -- PCDataOut
	 
	 -- PC Seperator
	 -- PC Seperator ����ź�
	 signal PCHigh : std_logic_vector(3 downto 0); -- PC����λ����
	 signal PCLow : std_logic_vector(27 downto 0); -- PC����λ����
	 -- PC Seperator �����ź�
	 -- PCDataOut
	 
	 -- PC High4 Extender
	 -- PC High4 Extender ����ź�
	 signal PCHigh4Ext : std_logic_vector(31 downto 0); -- PC��4λ��չΪ32λ��
	 -- PC High4 Extender �����ź�
	 -- PCHigh
	 
	 -- MUX PC
	 -- MUX PC ����ź�
	 -- PCDataIn
	 -- MUX PC �����ź�
	 -- PCAdderDataOut
	 -- data from bus
	 -- pc_data_select
	 signal addrMerge : std_logic_vector(31 downto 0); -- ��ַ�ϲ��źţ������ϣ�
	 
	 -- Tri Gate PC to Bus
	 -- ���
	 -- bus
	 -- ����
	 -- allow_pc_bus
	 -- PCHigh4Ext
	 
	 -- Tri Gate ALU to Bus
	 -- ���
	 -- bus
	 -- ����
	 -- ALUResult
	 -- allow_alu_bus
	 
	 -- Tri Gate ImmeShamt to Bus ����������λ��������֮�����̬��
	 -- ���
	 -- bus
	 -- ����
	 -- allow_Imme_Shamt_to_Bus
	 -- LBDataIn
	 
	 -- Tri Gate MDR to Bus
	 -- ���
	 -- bus
	 -- ����
	 -- allow_MDR_Bus
	 -- MEMDataIn
	 
	 -- Instruction Seperator
	 -- ���
	 -- CUOpcode
	 signal Oprand_1 : std_logic_vector(25 downto 0);
	 -- ����
	 -- IRDataOut
	 
	 -- Oprand Seperator
	 -- ���
	 signal RSAddr : std_logic_vector(4 downto 0); -- RS�Ĵ�����
	 signal RTAddr : std_logic_vector(4 downto 0); -- RT�Ĵ�����
	 signal RealImme : std_logic_vector(15 downto 0); -- ������
	 -- ����
	 -- Oprand_1
	 
	 -- Imme Seperator
	 -- ���
	 signal ALUFunc_1 : std_logic_vector(5 downto 0); -- ALU������1
	 signal RDAddr : std_logic_vector(4 downto 0); -- RD�Ĵ�����
	 signal RealShamt : std_logic_vector(4 downto 0); -- ��λֵ
	 -- ����
	 -- RealImme
	 
	 -- ImmeExt
	 -- ���
	 signal Imme32 : std_logic_vector(31 downto 0); -- 32λ������
	 -- ����
	 -- RealImme
	 
	 -- ShamtExt
	 -- ���
	 signal Shamt32 : std_logic_vector(31 downto 0); -- 32λ��λ��
	 -- ����
	 -- RealShamt
	 
	 -- MUX LB
	 -- ���
	 -- LBDataIn
	 -- ����
	 -- Imme32
	 -- Shamt32
	 -- bus
	 -- LB_data_select
	 
	 -- MUX ALU OP
	 -- ���
	 -- ALUFunc
	 -- ����
	 -- ALUFunc_1
	 -- alu_op
	 -- alu_op_select
	 
	 -- RF
	 -- ���
	 -- bus
	 -- ����
	 -- clk
	 -- write_RF
	 -- oe_RF
	 -- bus
	 signal RegAddr : std_logic_vector(4 downto 0); -- �Ĵ�����
	 
	 -- MUX REG
	 -- ���
	 -- RegAddr
	 -- ����
	 -- RSAddr
	 -- RTAddr
	 -- RDAddr
	 -- reg_type_select
	 
	 -- MUX MDR
	 -- ���
	 -- MDRDataIn
	 -- ����
	 -- MEMDataOut
	 -- bus
	 -- MDR_data_select
	 
	 
	 
	 -- �����ʼ��ʱ��
	 signal BootCLK : std_logic := '0';
	 
begin
	-- ������Բ���
	BootCLK <= CLK;
	debug_PCData <= PCDataOut;
	debug_memAddr <= MEMAddress;
	-- debug_memData <= MEMDataIn;
	debug_IRData <= IRDataOut;
	debug_BUSData <= MainBus;
	-- debug_microInstruc <= CUControl;
	debug_CUOPcode <= CUOPcode;
	-- ���������
	CentralCU : CU port map(
			-- ����˿�
			opcode => CUOpcode,
         CLK => CLK,
         flag_zero => ALUFlag_Zero,
         initiation => Initiation,
			pro_run => pro_run,
			mem_ready => MEMready,
			--test_MCounter,
			--test_opcode,
			test_ROM_out => debug_microInstruc,
			-- ����˿�
         instruction_done => InstructionDone,
			--test_Miinstruct => debug_microInstruc,
         -- ΢��������˿�
         write_PC => CUControl(0),
         allow_PC_BUS => CUControl(1),
         write_IR => CUControl(2),
         write_RF => CUControl(3),
         oe_RF => CUControl(4),
         reg_type_select => CUControl(6 downto 5),
         write_MAR => CUControl(7),
         write_MDR => CUControl(8),
         allow_MDR_BUS => CUControl(9),
			MDR_data_select => CUControl(10),
         write_MEM => CUControl(11),
         read_MEM => CUControl(12),
         write_LA => CUControl(13),
         write_LB => CUControl(14),
         allow_ALU_BUS => CUControl(15),
         alu_op => CUControl(21 downto 16),
         alu_op_select => CUControl(22),
         pc_data_select => CUControl(24 downto 23),
         LB_data_select => CUControl(26 downto 25),
         allow_Imme_Shamt_to_Bus => CUControl(27)
		);
	-- ALU
	MainALU : ALU port map(
			-- ����˿�
			alu_in_a => ALUOprand_a,
         alu_in_b => ALUOprand_b,
         op_code => ALUFunc,
			-- ����˿�
         flag_z => ALUFlag_Zero,
         result => ALUResult
		);
	-- SRAM
	MainSRAM : SRAM port map(
			-- ����˿�
			clk => BootCLK,
			address => MEMAddress,
			data_in => MEMDataIn,
			write1 => CUControl(11),
			read1 => CUControl(12),
			oe => CUControl(12),
			cs => C_VCC,
			boot => boot,
			-- ����˿�
			data_out => MEMDataOut,
			test_data_out => debug_memData
		);
	PC_Reg : Register32 port map(
			-- ����˿�
			clk => BootCLK,
			data_in => PCDataIn,
			WE => CUControl(0),
			OE => C_VCC, -- ���ʹ��һֱ��Ч
			-- ����˿�
			data_out => PCDataOut
		);
	IR_Reg : Register32 port map(
			-- ����˿�
			clk => CLK,
			data_in => MainBus,
			WE => CUControl(2),
			OE => C_VCC,
			-- ����˿�
			data_out => IRDataOut
		);
	LA_Reg : Register32 port map(
			-- ����˿�
			clk => CLK,
			data_in => MainBus,
			WE => CUControl(13),
			OE => C_VCC,
			-- ����˿�
			data_out => ALUOprand_a
		);
	LB_Reg : Register32 port map(
			-- ����˿�
			clk => CLK,
			data_in => LBDataIn,
			WE => CUControl(14),
			OE => C_VCC,
			-- ����˿�
			data_out => ALUOprand_b
		);
	MAR_Reg : Register32 port map(
			-- ����˿�
			clk => CLK,
			data_in => MainBus,
			WE => CUControl(7),
			OE => C_VCC,
			-- ����˿�
			data_out => MEMAddress
		);
	MDR_Reg : Register32 port map(
			-- ����˿�
			clk => CLK,
			data_in => MDRDataIn,
			WE => CUControl(8),
			OE => C_VCC,
			-- ����˿�
			data_out => MEMDataIn
		);
	-- ע�⣺PC��ַ���Լ�1
	PCAdder : PC_Adder port map(
			-- ����˿�
			old_pc => PCDataOut,
			-- ����˿�
			new_pc => PCAdderDataOut
		);
	PCSeperator : PC_Seperator port map(
			-- ����˿�
			PC_value => PCDataOut,
			-- ����˿�
			high4 => PCHigh,
			low4 => PCLow
		);
	PCHigh4Extender : PCHighExtender port map(
			-- �����ź�
			pc_high => PCHigh,
			-- ����ź�
			pc_ext => PCHigh4Ext
		);
	MUXPC : MUX_PC port map(
			-- �����ź�
			data_adder4 => PCAdderDataOut,
			data_bus => MainBus,
			data_addr_merge => addrMerge,
			data_select => CUControl(24 downto 23),
			-- ����ź�
			data_out => PCDataIn
		);
	TriGate_PCBus_Main : TriState port map(
		-- ����˿�
		ctrl => CUControl(1),
		data_in => PCDataOut,
		-- ����˿�
		data_out => MainBus
	);
	TriGate_PCBus : TriState port map(
			-- ����˿�
			ctrl => C_GND,
			data_in => PCHigh4Ext,
			-- ����˿�
			data_out => MainBus
		);
	TriGate_ALUBus : TriState port map(
			-- ����˿�
			ctrl => CUControl(15),
			data_in => ALUResult,
			-- ����˿�
			data_out => MainBus
		);
	TriGate_ImmeShamtBus : TriState port map(
			-- ����˿�
			ctrl => CUControl(27),
			data_in => LBDataIn,
			-- ����˿�
			data_out => MainBus
		);
	TriGate_MDRBus : TriState port map(
			-- ����˿�
			ctrl => CUControl(9),
			data_in => MEMDataIn,
			-- ����˿�
			data_out => MainBus
		);
	InstructionSeperator : Instruction_Seperator port map(
			-- ����˿�
			instruction_in => IRDataOut,
			-- ����˿�
			OPcode => CUOpcode,
			OPrand => Oprand_1
		);
	OperandSeperator : Oprand_Seperator port map(
			-- ����˿�
			oprand => Oprand_1,
			-- ����˿�
			Rs => RSAddr,
			Rt => RTAddr,
			Imme => RealImme
		);
	ImmeSeperator : Imme_Seperator port map(
			-- ����˿�
			Imme => RealImme,
			-- ����˿�
			Rd => RDAddr,
			shamt => RealShamt,
			alu_func => ALUFunc_1
		);
	Imme_Ext : ImmeExt port map(
			-- ����˿�
			Imme_in => RealImme,
			-- ����˿�
			Imme_out => Imme32
		);
	Shamt_Ext : ShamtExt port map(
			-- ����˿�
			shamt => RealShamt,
			-- ����˿�
			shamt32 => Shamt32
		);
	MUXLB : MUX_LB port map(
			-- ����˿�
			Data_Imme => Imme32,
			Data_Shamt => Shamt32,
			Data_Bus => MainBus,
			Data_select => CUControl(26 downto 25),
			-- ����˿�
			Data_out => LBDataIn
		);
	MUX_ALUOP : MUX_ALU_OP port map(
			-- ����˿�
			op0 => ALUFunc_1,
			op1 => CUControl(21 downto 16),
			op_select => CUControl(22),
			-- ����˿�
			op_out => ALUFunc
		);
	Register_Field : RegistersField port map(
			-- ����˿�
			W_data => MainBus,
			WE => CUControl(3),
			OE => CUControl(4),
			clk => CLK,
			Reg_addr => RegAddr,
			-- ����˿�
			R_data => MainBus
		);
	MUXReg : MUX_Reg port map(
			-- ����˿�
			Reg_addr_0 => RSAddr,
			Reg_addr_1 => RTAddr,
			Reg_addr_2 => RDAddr,
			Reg_Key => CUControl(6 downto 5),
			-- ����˿�
			Reg_out_addr => RegAddr
		);
	MUXMDR : MUX_MDR port map(
			-- ����˿�
			data_bus => MainBus,
			data_mem => MEMDataOut,
			data_select => CUControl(10),
			-- ����˿�
			data_out => MDRDataIn
		);
	
	-- ָ���������
	
end Behavioral;

