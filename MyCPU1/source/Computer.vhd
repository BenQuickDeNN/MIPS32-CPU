----------------------------------------------------------------------------------
-- Company: 西安交通大学计算机43班
-- Engineer: 屈彬
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
-- 整体结构
entity Computer is
	port(CLK, Initiation : in std_logic;
			InstructionDone : out std_logic);
end Computer;

architecture Behavioral of Computer is
-- 定义部件
-- CU
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
			ready : out std_logic;-- 内存准备好
         data_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
-- Register
	COMPONENT Register32
    PORT(
         data_in : IN  std_logic_vector(31 downto 0);
         data_out : OUT  std_logic_vector(31 downto 0);
         WE : IN  std_logic;
			OE : in std_logic; -- 输出使能
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
	 -- PC 高4位扩展
	 COMPONENT PCHighExtender
    PORT(
         pc_high : IN  std_logic_vector(3 downto 0);
         pc_ext : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
	 -- PC数据源多路选择器
	 COMPONENT Mux_PC
    PORT(
         data_adder4 : IN  std_logic_vector(31 downto 0);
         data_bus : IN  std_logic_vector(31 downto 0);
         data_addr_merge : IN  std_logic_vector(31 downto 0);
         data_out : OUT  std_logic_vector(31 downto 0);
         data_select : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
	 -- 32位三态门
	 COMPONENT TriState
    PORT(
         data_in : IN  std_logic_vector(31 downto 0);
         data_out : OUT  std_logic_vector(31 downto 0);
         ctrl : IN  std_logic
        );
    END COMPONENT;
	 -- 指令分离器
	 COMPONENT Instruction_Seperator
    PORT(
         instruction_in : IN  std_logic_vector(31 downto 0);
         OPcode : OUT  std_logic_vector(5 downto 0);
         OPrand : OUT  std_logic_vector(25 downto 0)
        );
    END COMPONENT;
	 -- 操作数分离器
	 COMPONENT Oprand_Seperator
    PORT(
         oprand : IN  std_logic_vector(25 downto 0);
         Rs : OUT  std_logic_vector(4 downto 0);
         Rt : OUT  std_logic_vector(4 downto 0);
         Imme : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
	 -- 立即数分离器
	 COMPONENT Imme_Seperator
    PORT(
         Imme : IN  std_logic_vector(15 downto 0);
         Rd : OUT  std_logic_vector(4 downto 0);
         shamt : OUT  std_logic_vector(4 downto 0);
         alu_func : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
	 -- 立即数扩展器
	 COMPONENT ImmeExt
    PORT(
         Imme_in : IN  std_logic_vector(15 downto 0);
         Imme_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
	 -- 移位数扩展器
	 COMPONENT ShamtExt
    PORT(
         shamt : IN  std_logic_vector(4 downto 0);
         shamt32 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
	 -- LB数据源选择器
	 COMPONENT Mux_LB
    PORT(
         Data_Imme : IN  std_logic_vector(31 downto 0);
         Data_Shamt : IN  std_logic_vector(31 downto 0);
         Data_Bus : IN  std_logic_vector(31 downto 0);
         Data_out : OUT  std_logic_vector(31 downto 0);
         Data_select : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
	 -- ALU操作码选择器
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

	 -- 定义公共信号
	 signal MainBus : std_logic_vector(31 downto 0); -- 总线
	 signal C_VCC : std_logic := '1'; -- 默认高电平
	 signal C_GND : std_logic := '0'; -- 默认地
	 
	 -- CU信号
	 -- CU输出信号
	 signal CUControl : std_logic_vector(31 downto 0); -- CU微命令向量
	 -- CU输入信号
	 signal MEMready : std_logic;-- 内存准备好
	 signal CUOpcode : std_logic_vector(5 downto 0);-- 指令操作码部分
	 signal ALUFlag_Zero : std_logic; -- 结果0标志
	 
	 -- ALU信号
	 -- ALU输出信号
	 -- ALUFlag_Zero
	 signal ALUResult : std_logic_vector(31 downto 0); -- ALU运算结果
	 -- ALU输入信号
	 signal ALUOprand_a : std_logic_vector(31 downto 0); -- ALU左操作数
	 signal ALUOprand_b : std_logic_vector(31 downto 0); -- ALU右操作数
	 signal ALUFunc : std_logic_vector(5 downto 0); -- ALU运算码
	 
	 -- SRAM
	 -- SRAM输出信号
	 -- MEMready
	 signal MEMDataOut : std_logic_vector(31 downto 0); -- 内存数据输出
	 -- SRAM输入信号
	 -- clk
	 signal MEMAddress : std_logic_vector(31 downto 0); -- 内存地址输入
	 signal MEMDataIn : std_logic_vector(31 downto 0); -- 内存数据输入
	 -- MEMWrite : std_logic; -- 内存写信号
	 -- MEMRead : std_logic; -- 内存读信号
	 -- MEMOE : std_logic; -- 内存输出使能
	 -- MEMCS : std_logic; -- 内存片选
	 
	 -- 专用寄存器信号
	 
	 -- PC寄存器
	 -- PC输出信号
	 signal PCDataOut : std_logic_vector(31 downto 0);
	 -- PC输入信号
	 -- clk
	 -- WritePC
	 -- oe = 1
	 signal PCDataIn : std_logic_vector(31 downto 0);
	 
	 -- IR寄存器
	 -- IR输出信号
	 signal IRDataOut : std_logic_vector(31 downto 0);
	 -- IR输入信号
	 -- clk
	 -- data_in from bus
	 -- write IR
	 -- oe = 1
	 
	 -- LA暂存器
	 -- LA输出信号
	 -- ALUOprand_a
	 -- LA输入信号
	 -- clk
	 -- data_in from bus
	 -- write LA
	 -- oe = 1
	 
	 -- LB暂存器
	 -- LB输出信号
	 -- ALUOprand_b
	 -- LB输入信号
	 -- clk
	 -- write LB
	 -- oe = 1
	 signal LBDataIn : std_logic_vector(31 downto 0); -- LB数据源
	 
	 -- MAR
	 -- MAR输出信号
	 -- MEMAddress
	 -- MAR输入信号
	 -- clk
	 -- write MAR
	 -- oe = 1
	 -- data_in from bus
	 
	 -- MDR
	 -- MDR输出信号
	 -- MEMDataOut
	 -- MDR输入信号
	 -- clk
	 -- write MDR
	 -- oe = 1
	 signal MDRDataIn : std_logic_vector(31 downto 0); -- MDR数据源
	 
	 -- PC Adder
	 -- PC Adder 输出信号
	 signal PCAdderDataOut : std_logic_vector(31 downto 0);
	 -- PC Adder 输入信号
	 -- PCDataOut
begin
	-- 中央控制器
	CentralCU : CU port map(
			-- 输入端口
			opcode => CUOpcode,
         CLK => CLK,
         flag_zero => ALUFlag_Zero,
         initiation => Initiation,
			mem_ready => MEMready,
			--test_MCounter,
			--test_opcode,
			--test_Miinstruct,
			-- 输出端口
         instruction_done => InstructionDone,
         -- 微命令输出端口
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
			-- 输入端口
			alu_in_a => ALUOprand_a,
         alu_in_b => ALUOprand_b,
         op_code => ALUFunc,
			-- 输出端口
         flag_z => ALUFlag_Zero,
         result => ALUResult
		);
	-- SRAM
	MainSRAM : SRAM port map(
			-- 输入端口
			clk => CLK,
			address => MEMAddress,
			data_in => MEMDataIn,
			write1 => CUControl(11),
			read1 => CUControl(12),
			oe => CUControl(12),
			cs => C_VCC,
			-- 输出端口
			data_out => MEMDataOut
		);
	PC_Reg : Register32 port map(
			-- 输入端口
			clk => CLK,
			data_in => PCDataIn,
			WE => CUControl(0),
			OE => C_VCC, -- 输出使能一直有效
			-- 输出端口
			data_out => PCDataOut
		);
	IR_Reg : Register32 port map(
			-- 输入端口
			clk => CLK,
			data_in => MainBus,
			WE => CUControl(2),
			OE => C_VCC,
			-- 输出端口
			data_out => IRDataOut
		);
	LA_Reg : Register32 port map(
			-- 输入端口
			clk => CLK,
			data_in => MainBus,
			WE => CUControl(13),
			OE => C_VCC,
			-- 输出端口
			data_out => ALUOprand_a
		);
	LB_Reg : Register32 port map(
			-- 输入端口
			clk => CLK,
			data_in => LBDataIn,
			WE => CUControl(14),
			OE => C_VCC,
			-- 输出端口
			data_out => ALUOprand_b
		);
	MAR_Reg : Register32 port map(
			-- 输入端口
			clk => CLK,
			data_in => MainBus,
			WE => CUControl(7),
			OE => C_VCC,
			-- 输出端口
			data_out => MEMAddress
		);
	MDR_Reg : Register32 port map(
			-- 输入端口
			clk => CLK,
			data_in => MDRDataIn,
			WE => CUControl(8),
			OE => C_VCC,
			-- 输出端口
			data_out => MEMDataIn
		);
	PCAdder : PC_Adder port map(
			-- 输入端口
			old_pc => PCDataOut,
			-- 输出端口
			new_pc => PCAdderDataOut
		);
end Behavioral;

