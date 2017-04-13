<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_6(31:0)" />
        <signal name="XLXN_11(4:0)" />
        <signal name="XLXN_14(31:0)" />
        <signal name="XLXN_16(31:0)" />
        <signal name="XLXN_21(31:0)" />
        <signal name="XLXN_25(25:0)" />
        <signal name="XLXN_29(4:0)" />
        <signal name="XLXN_30(4:0)" />
        <signal name="XLXN_31(4:0)" />
        <signal name="XLXN_35(5:0)" />
        <signal name="XLXN_36(5:0)" />
        <signal name="XLXN_38(15:0)" />
        <signal name="XLXN_41(31:0)" />
        <signal name="XLXN_43(4:0)" />
        <signal name="XLXN_44(31:0)" />
        <signal name="XLXN_47(31:0)" />
        <signal name="XLXN_48(31:0)" />
        <signal name="XLXN_20(31:0)" />
        <signal name="XLXN_50(31:0)" />
        <signal name="XLXN_53(31:0)" />
        <signal name="XLXN_55(31:0)" />
        <signal name="XLXN_63(5:0)" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66(5:0)" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79(1:0)" />
        <signal name="XLXN_80(1:0)" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93" />
        <signal name="XLXN_100(1:0)" />
        <signal name="XLXN_101(31:0)" />
        <signal name="XLXN_102" />
        <signal name="XLXN_104(3:0)" />
        <signal name="XLXN_105(31:0)" />
        <signal name="BUS_Main" />
        <signal name="CLK" />
        <signal name="XLXN_120" />
        <signal name="Initiation" />
        <signal name="InstructionDone" />
        <signal name="XLXN_103(31:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="Initiation" />
        <port polarity="Output" name="InstructionDone" />
        <blockdef name="ALU">
            <timestamp>2017-3-25T9:15:8</timestamp>
            <rect width="288" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="RegistersField">
            <timestamp>2017-3-25T10:49:27</timestamp>
            <rect width="304" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-300" height="24" />
            <line x2="432" y1="-288" y2="-288" x1="368" />
        </blockdef>
        <blockdef name="TriState">
            <timestamp>2017-3-25T9:16:20</timestamp>
            <rect width="304" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-108" height="24" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
        </blockdef>
        <blockdef name="Mux_Reg">
            <timestamp>2017-3-25T9:15:40</timestamp>
            <rect width="384" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-236" height="24" />
            <line x2="512" y1="-224" y2="-224" x1="448" />
        </blockdef>
        <blockdef name="Register_32">
            <timestamp>2017-3-25T11:4:7</timestamp>
            <rect width="304" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
        </blockdef>
        <blockdef name="Instruction_Seperator">
            <timestamp>2017-3-25T11:32:19</timestamp>
            <rect width="352" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="Oprand_Seperator">
            <timestamp>2017-3-25T11:49:28</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Imme_Seperator">
            <timestamp>2017-3-25T11:56:3</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PC_Seperator">
            <timestamp>2017-3-25T12:51:27</timestamp>
            <rect width="288" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="Mux_ALU_OP">
            <timestamp>2017-3-28T8:26:18</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="ImmeExt">
            <timestamp>2017-3-28T8:32:23</timestamp>
            <rect width="336" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <blockdef name="Mux_LB">
            <timestamp>2017-3-28T8:45:37</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="352" x="64" y="-256" height="320" />
        </blockdef>
        <blockdef name="ShamtExt">
            <timestamp>2017-3-28T8:50:22</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PC_Adder">
            <timestamp>2017-3-28T9:0:45</timestamp>
            <rect width="288" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="Mux_PC">
            <timestamp>2017-3-28T9:13:6</timestamp>
            <rect width="400" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="464" y="-236" height="24" />
            <line x2="528" y1="-224" y2="-224" x1="464" />
        </blockdef>
        <blockdef name="SRAM">
            <timestamp>2017-4-12T13:13:19</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-364" height="24" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <rect width="320" x="64" y="-384" height="576" />
        </blockdef>
        <blockdef name="Mux_MDR">
            <timestamp>2017-3-29T11:48:25</timestamp>
            <rect width="336" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
        </blockdef>
        <blockdef name="CU">
            <timestamp>2017-4-12T12:58:41</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="416" y1="32" y2="32" x1="352" />
            <line x2="416" y1="96" y2="96" x1="352" />
            <line x2="416" y1="160" y2="160" x1="352" />
            <line x2="416" y1="224" y2="224" x1="352" />
            <line x2="416" y1="288" y2="288" x1="352" />
            <line x2="416" y1="352" y2="352" x1="352" />
            <line x2="416" y1="416" y2="416" x1="352" />
            <line x2="416" y1="480" y2="480" x1="352" />
            <line x2="416" y1="544" y2="544" x1="352" />
            <line x2="416" y1="608" y2="608" x1="352" />
            <line x2="416" y1="672" y2="672" x1="352" />
            <line x2="416" y1="736" y2="736" x1="352" />
            <line x2="416" y1="800" y2="800" x1="352" />
            <line x2="416" y1="864" y2="864" x1="352" />
            <line x2="416" y1="928" y2="928" x1="352" />
            <rect width="64" x="352" y="980" height="24" />
            <line x2="416" y1="992" y2="992" x1="352" />
            <rect width="64" x="352" y="1044" height="24" />
            <line x2="416" y1="1056" y2="1056" x1="352" />
            <rect width="64" x="352" y="1108" height="24" />
            <line x2="416" y1="1120" y2="1120" x1="352" />
            <rect width="64" x="352" y="1172" height="24" />
            <line x2="416" y1="1184" y2="1184" x1="352" />
            <rect width="64" x="352" y="1236" height="24" />
            <line x2="416" y1="1248" y2="1248" x1="352" />
            <rect width="64" x="352" y="1300" height="24" />
            <line x2="416" y1="1312" y2="1312" x1="352" />
            <line x2="0" y1="-992" y2="-992" x1="64" />
            <line x2="416" y1="-992" y2="-992" x1="352" />
            <line x2="416" y1="-928" y2="-928" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-1024" height="2368" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="96" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="PCHighExtender">
            <timestamp>2017-4-12T13:23:35</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="ALU" name="ALU">
            <blockpin signalname="XLXN_16(31:0)" name="alu_in_a(31:0)" />
            <blockpin signalname="XLXN_14(31:0)" name="alu_in_b(31:0)" />
            <blockpin signalname="XLXN_36(5:0)" name="op_code(5:0)" />
            <blockpin signalname="XLXN_65" name="flag_z" />
            <blockpin signalname="XLXN_6(31:0)" name="result(31:0)" />
        </block>
        <block symbolname="TriState" name="ALU_BUS">
            <blockpin signalname="XLXN_77" name="ctrl" />
            <blockpin signalname="XLXN_6(31:0)" name="data_in(31:0)" />
            <blockpin signalname="BUS_Main" name="data_out(31:0)" />
        </block>
        <block symbolname="Register_32" name="LA">
            <blockpin signalname="XLXN_75" name="WE" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="BUS_Main" name="data_in(31:0)" />
            <blockpin signalname="XLXN_16(31:0)" name="data_out(31:0)" />
        </block>
        <block symbolname="Register_32" name="LB">
            <blockpin signalname="XLXN_90" name="WE" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_101(31:0)" name="data_in(31:0)" />
            <blockpin signalname="XLXN_14(31:0)" name="data_out(31:0)" />
        </block>
        <block symbolname="Register_32" name="IR">
            <blockpin signalname="XLXN_68" name="WE" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="BUS_Main" name="data_in(31:0)" />
            <blockpin signalname="XLXN_21(31:0)" name="data_out(31:0)" />
        </block>
        <block symbolname="Register_32" name="PC">
            <blockpin signalname="XLXN_67" name="WE" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_47(31:0)" name="data_in(31:0)" />
            <blockpin signalname="XLXN_103(31:0)" name="data_out(31:0)" />
        </block>
        <block symbolname="Register_32" name="MAR">
            <blockpin signalname="XLXN_71" name="WE" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="BUS_Main" name="data_in(31:0)" />
            <blockpin signalname="XLXN_55(31:0)" name="data_out(31:0)" />
        </block>
        <block symbolname="Instruction_Seperator" name="XLXI_20">
            <blockpin signalname="XLXN_21(31:0)" name="instruction_in(31:0)" />
            <blockpin signalname="XLXN_63(5:0)" name="OPcode(5:0)" />
            <blockpin signalname="XLXN_25(25:0)" name="OPrand(25:0)" />
        </block>
        <block symbolname="Oprand_Seperator" name="XLXI_21">
            <blockpin signalname="XLXN_25(25:0)" name="oprand(25:0)" />
            <blockpin signalname="XLXN_29(4:0)" name="Rs(4:0)" />
            <blockpin signalname="XLXN_30(4:0)" name="Rt(4:0)" />
            <blockpin signalname="XLXN_38(15:0)" name="Imme(15:0)" />
        </block>
        <block symbolname="Imme_Seperator" name="XLXI_22">
            <blockpin signalname="XLXN_38(15:0)" name="Imme(15:0)" />
            <blockpin signalname="XLXN_31(4:0)" name="Rd(4:0)" />
            <blockpin signalname="XLXN_43(4:0)" name="shamt(4:0)" />
            <blockpin signalname="XLXN_35(5:0)" name="alu_func(5:0)" />
        </block>
        <block symbolname="PC_Seperator" name="XLXI_25">
            <blockpin signalname="XLXN_103(31:0)" name="PC_value(31:0)" />
            <blockpin signalname="XLXN_104(3:0)" name="high4(3:0)" />
            <blockpin name="low4(27:0)" />
        </block>
        <block symbolname="ImmeExt" name="XLXI_27">
            <blockpin signalname="XLXN_38(15:0)" name="Imme_in(15:0)" />
            <blockpin signalname="XLXN_41(31:0)" name="Imme_out(31:0)" />
        </block>
        <block symbolname="Mux_LB" name="XLXI_29">
            <blockpin signalname="XLXN_41(31:0)" name="Data_Imme(31:0)" />
            <blockpin signalname="BUS_Main" name="Data_Bus(31:0)" />
            <blockpin signalname="XLXN_100(1:0)" name="Data_select(1:0)" />
            <blockpin signalname="XLXN_101(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="XLXN_44(31:0)" name="Data_Shamt(31:0)" />
        </block>
        <block symbolname="ShamtExt" name="XLXI_30">
            <blockpin signalname="XLXN_43(4:0)" name="shamt(4:0)" />
            <blockpin signalname="XLXN_44(31:0)" name="shamt32(31:0)" />
        </block>
        <block symbolname="PC_Adder" name="XLXI_31">
            <blockpin signalname="XLXN_103(31:0)" name="old_pc(31:0)" />
            <blockpin signalname="XLXN_48(31:0)" name="new_pc(31:0)" />
        </block>
        <block symbolname="Mux_PC" name="XLXI_32">
            <blockpin signalname="XLXN_48(31:0)" name="data_adder4(31:0)" />
            <blockpin signalname="BUS_Main" name="data_bus(31:0)" />
            <blockpin name="data_addr_merge(31:0)" />
            <blockpin signalname="XLXN_80(1:0)" name="data_select(1:0)" />
            <blockpin signalname="XLXN_47(31:0)" name="data_out(31:0)" />
        </block>
        <block symbolname="SRAM" name="XLXI_34">
            <blockpin signalname="XLXN_93" name="oe" />
            <blockpin signalname="XLXN_91" name="cs" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_55(31:0)" name="address(31:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="data_in(31:0)" />
            <blockpin signalname="XLXN_92" name="ready" />
            <blockpin signalname="XLXN_53(31:0)" name="data_out(31:0)" />
            <blockpin signalname="XLXN_93" name="write1" />
            <blockpin signalname="XLXN_93" name="read1" />
        </block>
        <block symbolname="TriState" name="MDR_BUS">
            <blockpin signalname="XLXN_74" name="ctrl" />
            <blockpin signalname="XLXN_20(31:0)" name="data_in(31:0)" />
            <blockpin signalname="BUS_Main" name="data_out(31:0)" />
        </block>
        <block symbolname="Register_32" name="MDR">
            <blockpin signalname="XLXN_72" name="WE" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_50(31:0)" name="data_in(31:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="data_out(31:0)" />
        </block>
        <block symbolname="Mux_MDR" name="XLXI_35">
            <blockpin signalname="XLXN_73" name="data_select" />
            <blockpin signalname="BUS_Main" name="data_bus(31:0)" />
            <blockpin signalname="XLXN_53(31:0)" name="data_mem(31:0)" />
            <blockpin signalname="XLXN_50(31:0)" name="data_out(31:0)" />
        </block>
        <block symbolname="CU" name="XLXI_39">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_93" name="write_MEM" />
            <blockpin signalname="XLXN_93" name="read_MEM" />
            <blockpin signalname="XLXN_66(5:0)" name="alu_op(5:0)" />
            <blockpin signalname="XLXN_65" name="flag_zero" />
            <blockpin signalname="Initiation" name="initiation" />
            <blockpin signalname="XLXN_92" name="mem_ready" />
            <blockpin signalname="XLXN_63(5:0)" name="opcode(5:0)" />
            <blockpin signalname="InstructionDone" name="instruction_done" />
            <blockpin signalname="XLXN_67" name="write_PC" />
            <blockpin signalname="XLXN_120" name="allow_PC_BUS" />
            <blockpin signalname="XLXN_68" name="write_IR" />
            <blockpin signalname="XLXN_69" name="write_RF" />
            <blockpin signalname="XLXN_70" name="oe_RF" />
            <blockpin signalname="XLXN_71" name="write_MAR" />
            <blockpin signalname="XLXN_72" name="write_MDR" />
            <blockpin signalname="XLXN_73" name="MDR_data_select" />
            <blockpin signalname="XLXN_74" name="allow_MDR_BUS" />
            <blockpin signalname="XLXN_75" name="write_LA" />
            <blockpin signalname="XLXN_90" name="write_LB" />
            <blockpin signalname="XLXN_77" name="allow_ALU_BUS" />
            <blockpin signalname="XLXN_78" name="alu_op_select" />
            <blockpin signalname="XLXN_102" name="allow_Imme_Shamt_to_Bus" />
            <blockpin name="test_MCounter(5:0)" />
            <blockpin name="test_opcode(5:0)" />
            <blockpin name="test_Miinstruct(31:0)" />
            <blockpin signalname="XLXN_79(1:0)" name="reg_type_select(1:0)" />
            <blockpin signalname="XLXN_80(1:0)" name="pc_data_select(1:0)" />
            <blockpin signalname="XLXN_100(1:0)" name="LB_data_select(1:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_42">
            <blockpin signalname="XLXN_91" name="P" />
        </block>
        <block symbolname="TriState" name="XLXI_43">
            <blockpin signalname="XLXN_102" name="ctrl" />
            <blockpin signalname="XLXN_101(31:0)" name="data_in(31:0)" />
            <blockpin signalname="BUS_Main" name="data_out(31:0)" />
        </block>
        <block symbolname="Mux_ALU_OP" name="XLXI_26">
            <blockpin signalname="XLXN_78" name="op_select" />
            <blockpin signalname="XLXN_35(5:0)" name="op0(5:0)" />
            <blockpin signalname="XLXN_66(5:0)" name="op1(5:0)" />
            <blockpin signalname="XLXN_36(5:0)" name="op_out(5:0)" />
        </block>
        <block symbolname="RegistersField" name="RF">
            <blockpin signalname="XLXN_69" name="WE" />
            <blockpin signalname="XLXN_70" name="OE" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="BUS_Main" name="W_data(31:0)" />
            <blockpin signalname="XLXN_11(4:0)" name="Reg_addr(4:0)" />
            <blockpin signalname="BUS_Main" name="R_data(31:0)" />
        </block>
        <block symbolname="Mux_Reg" name="RegSelect">
            <blockpin signalname="XLXN_29(4:0)" name="Reg_addr_0(4:0)" />
            <blockpin signalname="XLXN_30(4:0)" name="Reg_addr_1(4:0)" />
            <blockpin signalname="XLXN_31(4:0)" name="Reg_addr_2(4:0)" />
            <blockpin signalname="XLXN_79(1:0)" name="Reg_Key(1:0)" />
            <blockpin signalname="XLXN_11(4:0)" name="Reg_out_addr(4:0)" />
        </block>
        <block symbolname="PCHighExtender" name="XLXI_47">
            <blockpin signalname="XLXN_104(3:0)" name="pc_high(3:0)" />
            <blockpin signalname="XLXN_105(31:0)" name="pc_ext(31:0)" />
        </block>
        <block symbolname="TriState" name="XLXI_48">
            <blockpin signalname="XLXN_120" name="ctrl" />
            <blockpin signalname="XLXN_105(31:0)" name="data_in(31:0)" />
            <blockpin signalname="BUS_Main" name="data_out(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1472" y="944" name="ALU" orien="R270">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-312" type="instance" />
        </instance>
        <branch name="XLXN_6(31:0)">
            <wire x2="1440" y1="496" y2="528" x1="1440" />
        </branch>
        <instance x="1472" y="496" name="ALU_BUS" orien="R270">
            <attrtext style="alignment:VRIGHT;fontsize:28;fontname:Arial" attrname="InstName" x="248" y="0" type="instance" />
        </instance>
        <branch name="XLXN_11(4:0)">
            <wire x2="2272" y1="496" y2="528" x1="2272" />
        </branch>
        <branch name="XLXN_14(31:0)">
            <wire x2="1376" y1="944" y2="976" x1="1376" />
        </branch>
        <instance x="1024" y="1408" name="IR" orien="R270">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-312" type="instance" />
        </instance>
        <instance x="1536" y="1408" name="LB" orien="R270">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-312" type="instance" />
        </instance>
        <branch name="XLXN_16(31:0)">
            <wire x2="1312" y1="944" y2="976" x1="1312" />
        </branch>
        <instance x="1152" y="1408" name="LA" orien="M270">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-312" type="instance" />
        </instance>
        <instance x="448" y="1408" name="PC" orien="R270">
            <attrtext style="alignment:VRIGHT;fontsize:28;fontname:Arial" attrname="InstName" x="312" y="0" type="instance" />
        </instance>
        <branch name="XLXN_21(31:0)">
            <wire x2="864" y1="960" y2="960" x1="768" />
            <wire x2="864" y1="960" y2="976" x1="864" />
            <wire x2="768" y1="960" y2="1472" x1="768" />
            <wire x2="864" y1="1472" y2="1472" x1="768" />
            <wire x2="864" y1="1472" y2="1696" x1="864" />
        </branch>
        <instance x="960" y="1696" name="XLXI_20" orien="M90">
        </instance>
        <branch name="XLXN_25(25:0)">
            <wire x2="928" y1="2176" y2="2208" x1="928" />
        </branch>
        <instance x="1088" y="2208" name="XLXI_21" orien="M90">
        </instance>
        <instance x="1216" y="2624" name="XLXI_22" orien="M90">
        </instance>
        <branch name="XLXN_29(4:0)">
            <wire x2="928" y1="2592" y2="3104" x1="928" />
            <wire x2="2272" y1="3104" y2="3104" x1="928" />
            <wire x2="2272" y1="1040" y2="3104" x1="2272" />
        </branch>
        <branch name="XLXN_30(4:0)">
            <wire x2="992" y1="2592" y2="3040" x1="992" />
            <wire x2="2336" y1="3040" y2="3040" x1="992" />
            <wire x2="2336" y1="1040" y2="3040" x1="2336" />
        </branch>
        <branch name="XLXN_31(4:0)">
            <wire x2="1056" y1="3008" y2="3088" x1="1056" />
            <wire x2="2400" y1="3088" y2="3088" x1="1056" />
            <wire x2="2400" y1="1040" y2="3088" x1="2400" />
        </branch>
        <branch name="XLXN_38(15:0)">
            <wire x2="1056" y1="2608" y2="2608" x1="960" />
            <wire x2="1056" y1="2608" y2="2624" x1="1056" />
            <wire x2="960" y1="2608" y2="3152" x1="960" />
            <wire x2="1504" y1="3152" y2="3152" x1="960" />
            <wire x2="1056" y1="2592" y2="2608" x1="1056" />
            <wire x2="1504" y1="2816" y2="3152" x1="1504" />
        </branch>
        <instance x="1536" y="2816" name="XLXI_27" orien="R270">
        </instance>
        <instance x="1616" y="2112" name="XLXI_29" orien="R270">
        </instance>
        <branch name="XLXN_41(31:0)">
            <wire x2="1392" y1="2112" y2="2224" x1="1392" />
            <wire x2="1504" y1="2224" y2="2224" x1="1392" />
            <wire x2="1504" y1="2224" y2="2352" x1="1504" />
        </branch>
        <instance x="1680" y="2816" name="XLXI_30" orien="R270">
        </instance>
        <branch name="XLXN_43(4:0)">
            <wire x2="1120" y1="3008" y2="3136" x1="1120" />
            <wire x2="1648" y1="3136" y2="3136" x1="1120" />
            <wire x2="1648" y1="2816" y2="3136" x1="1648" />
        </branch>
        <branch name="XLXN_44(31:0)">
            <wire x2="1648" y1="2112" y2="2432" x1="1648" />
        </branch>
        <branch name="XLXN_47(31:0)">
            <wire x2="416" y1="1408" y2="1440" x1="416" />
        </branch>
        <instance x="640" y="1968" name="XLXI_32" orien="R270">
        </instance>
        <branch name="XLXN_48(31:0)">
            <wire x2="176" y1="352" y2="1984" x1="176" />
            <wire x2="416" y1="1984" y2="1984" x1="176" />
            <wire x2="544" y1="352" y2="352" x1="176" />
            <wire x2="544" y1="352" y2="512" x1="544" />
            <wire x2="416" y1="1968" y2="1984" x1="416" />
        </branch>
        <instance x="4064" y="704" name="MDR_BUS" orien="R270">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-248" type="instance" />
        </instance>
        <instance x="3696" y="816" name="MDR" orien="R90">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-312" type="instance" />
        </instance>
        <branch name="XLXN_20(31:0)">
            <wire x2="3392" y1="1296" y2="1952" x1="3392" />
            <wire x2="3424" y1="1952" y2="1952" x1="3392" />
            <wire x2="3856" y1="1296" y2="1296" x1="3392" />
            <wire x2="4032" y1="1296" y2="1296" x1="3856" />
            <wire x2="3856" y1="1248" y2="1296" x1="3856" />
            <wire x2="4032" y1="704" y2="1296" x1="4032" />
        </branch>
        <branch name="XLXN_50(31:0)">
            <wire x2="3728" y1="784" y2="816" x1="3728" />
        </branch>
        <instance x="3568" y="320" name="XLXI_35" orien="R90">
        </instance>
        <branch name="XLXN_53(31:0)">
            <wire x2="3600" y1="304" y2="320" x1="3600" />
            <wire x2="3920" y1="304" y2="304" x1="3600" />
            <wire x2="3920" y1="304" y2="1632" x1="3920" />
            <wire x2="3920" y1="1632" y2="1632" x1="3872" />
        </branch>
        <instance x="2896" y="800" name="MAR" orien="R90">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-312" type="instance" />
        </instance>
        <instance x="2624" y="3808" name="XLXI_39" orien="R0">
        </instance>
        <branch name="XLXN_63(5:0)">
            <wire x2="864" y1="2176" y2="4032" x1="864" />
            <wire x2="2624" y1="4032" y2="4032" x1="864" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="1312" y1="480" y2="480" x1="784" />
            <wire x2="1312" y1="480" y2="528" x1="1312" />
            <wire x2="784" y1="480" y2="3840" x1="784" />
            <wire x2="2624" y1="3840" y2="3840" x1="784" />
        </branch>
        <branch name="XLXN_66(5:0)">
            <wire x2="1840" y1="1360" y2="1440" x1="1840" />
            <wire x2="3136" y1="1440" y2="1440" x1="1840" />
            <wire x2="3136" y1="1440" y2="3776" x1="3136" />
            <wire x2="3056" y1="3776" y2="3776" x1="3040" />
            <wire x2="3136" y1="3776" y2="3776" x1="3056" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="288" y1="1408" y2="5216" x1="288" />
            <wire x2="3120" y1="5216" y2="5216" x1="288" />
            <wire x2="3120" y1="3904" y2="3904" x1="3040" />
            <wire x2="3120" y1="3904" y2="5216" x1="3120" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="864" y1="1408" y2="1424" x1="864" />
            <wire x2="3104" y1="1424" y2="1424" x1="864" />
            <wire x2="3104" y1="1424" y2="4032" x1="3104" />
            <wire x2="3104" y1="4032" y2="4032" x1="3040" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="2016" y1="496" y2="5232" x1="2016" />
            <wire x2="3136" y1="5232" y2="5232" x1="2016" />
            <wire x2="3136" y1="4096" y2="4096" x1="3040" />
            <wire x2="3136" y1="4096" y2="5232" x1="3136" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="2080" y1="496" y2="1312" x1="2080" />
            <wire x2="3088" y1="1312" y2="1312" x1="2080" />
            <wire x2="3088" y1="1312" y2="4160" x1="3088" />
            <wire x2="3088" y1="4160" y2="4160" x1="3040" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="3200" y1="4224" y2="4224" x1="3040" />
            <wire x2="3200" y1="720" y2="720" x1="3056" />
            <wire x2="3200" y1="720" y2="4224" x1="3200" />
            <wire x2="3056" y1="720" y2="800" x1="3056" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="3184" y1="4288" y2="4288" x1="3040" />
            <wire x2="3184" y1="800" y2="4288" x1="3184" />
            <wire x2="3856" y1="800" y2="800" x1="3184" />
            <wire x2="3856" y1="800" y2="816" x1="3856" />
        </branch>
        <branch name="XLXN_73">
            <wire x2="3168" y1="4352" y2="4352" x1="3040" />
            <wire x2="3168" y1="256" y2="4352" x1="3168" />
            <wire x2="3728" y1="256" y2="256" x1="3168" />
            <wire x2="3728" y1="256" y2="320" x1="3728" />
        </branch>
        <branch name="XLXN_74">
            <wire x2="3968" y1="4416" y2="4416" x1="3040" />
            <wire x2="3968" y1="704" y2="720" x1="3968" />
            <wire x2="3968" y1="720" y2="4416" x1="3968" />
        </branch>
        <branch name="XLXN_75">
            <wire x2="1312" y1="1408" y2="1504" x1="1312" />
            <wire x2="3232" y1="1504" y2="1504" x1="1312" />
            <wire x2="3232" y1="1504" y2="4480" x1="3232" />
            <wire x2="3232" y1="4480" y2="4480" x1="3040" />
        </branch>
        <branch name="XLXN_77">
            <wire x2="1376" y1="496" y2="512" x1="1376" />
            <wire x2="1536" y1="512" y2="512" x1="1376" />
            <wire x2="1536" y1="32" y2="512" x1="1536" />
            <wire x2="3296" y1="32" y2="32" x1="1536" />
            <wire x2="3296" y1="32" y2="4608" x1="3296" />
            <wire x2="3296" y1="4608" y2="4608" x1="3040" />
        </branch>
        <branch name="XLXN_78">
            <wire x2="1712" y1="1360" y2="1376" x1="1712" />
            <wire x2="3264" y1="1376" y2="1376" x1="1712" />
            <wire x2="3264" y1="1376" y2="4672" x1="3264" />
            <wire x2="3056" y1="4672" y2="4672" x1="3040" />
            <wire x2="3264" y1="4672" y2="4672" x1="3056" />
        </branch>
        <branch name="XLXN_79(1:0)">
            <wire x2="2464" y1="1040" y2="5200" x1="2464" />
            <wire x2="3056" y1="5200" y2="5200" x1="2464" />
            <wire x2="3056" y1="4992" y2="4992" x1="3040" />
            <wire x2="3056" y1="4992" y2="5200" x1="3056" />
        </branch>
        <branch name="XLXN_80(1:0)">
            <wire x2="608" y1="1968" y2="2192" x1="608" />
            <wire x2="3072" y1="2192" y2="2192" x1="608" />
            <wire x2="3072" y1="2192" y2="5056" x1="3072" />
            <wire x2="3072" y1="5056" y2="5056" x1="3040" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="3056" y1="2880" y2="2880" x1="3040" />
            <wire x2="3248" y1="2880" y2="2880" x1="3056" />
            <wire x2="3248" y1="2080" y2="2880" x1="3248" />
            <wire x2="3424" y1="2080" y2="2080" x1="3248" />
        </branch>
        <instance x="2576" y="1760" name="XLXI_42" orien="R0" />
        <instance x="3424" y="1984" name="XLXI_34" orien="R0">
        </instance>
        <branch name="XLXN_55(31:0)">
            <wire x2="3056" y1="1232" y2="1888" x1="3056" />
            <wire x2="3424" y1="1888" y2="1888" x1="3056" />
        </branch>
        <branch name="XLXN_90">
            <wire x2="1376" y1="1408" y2="1488" x1="1376" />
            <wire x2="3328" y1="1488" y2="1488" x1="1376" />
            <wire x2="3328" y1="1488" y2="4544" x1="3328" />
            <wire x2="3328" y1="4544" y2="4544" x1="3040" />
        </branch>
        <branch name="XLXN_91">
            <wire x2="2640" y1="1760" y2="1824" x1="2640" />
            <wire x2="2736" y1="1824" y2="1824" x1="2640" />
            <wire x2="2736" y1="1760" y2="1824" x1="2736" />
            <wire x2="3424" y1="1760" y2="1760" x1="2736" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="2560" y1="2720" y2="3968" x1="2560" />
            <wire x2="2624" y1="3968" y2="3968" x1="2560" />
            <wire x2="3936" y1="2720" y2="2720" x1="2560" />
            <wire x2="3936" y1="2016" y2="2016" x1="3872" />
            <wire x2="3936" y1="2016" y2="2720" x1="3936" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="3056" y1="2816" y2="2816" x1="3040" />
            <wire x2="3280" y1="2816" y2="2816" x1="3056" />
            <wire x2="3424" y1="2144" y2="2144" x1="3056" />
            <wire x2="3056" y1="2144" y2="2816" x1="3056" />
            <wire x2="3280" y1="1696" y2="2816" x1="3280" />
            <wire x2="3424" y1="1696" y2="1696" x1="3280" />
        </branch>
        <branch name="XLXN_36(5:0)">
            <wire x2="1440" y1="944" y2="960" x1="1440" />
            <wire x2="1536" y1="960" y2="960" x1="1440" />
            <wire x2="1536" y1="896" y2="960" x1="1536" />
            <wire x2="1712" y1="896" y2="896" x1="1536" />
            <wire x2="1712" y1="896" y2="976" x1="1712" />
        </branch>
        <branch name="XLXN_35(5:0)">
            <wire x2="1184" y1="3008" y2="3024" x1="1184" />
            <wire x2="1184" y1="3024" y2="3072" x1="1184" />
            <wire x2="1776" y1="3072" y2="3072" x1="1184" />
            <wire x2="1776" y1="1360" y2="3072" x1="1776" />
        </branch>
        <instance x="1872" y="1360" name="XLXI_26" orien="R270">
        </instance>
        <instance x="2496" y="1040" name="RegSelect" orien="R270">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-376" type="instance" />
        </instance>
        <instance x="2304" y="496" name="RF" orien="R270">
            <attrtext style="alignment:VRIGHT;fontsize:28;fontname:Arial" attrname="InstName" x="440" y="0" type="instance" />
        </instance>
        <instance x="2752" y="1008" name="XLXI_43" orien="R270">
        </instance>
        <branch name="XLXN_100(1:0)">
            <wire x2="1584" y1="2112" y2="2128" x1="1584" />
            <wire x2="3408" y1="2128" y2="2128" x1="1584" />
            <wire x2="3408" y1="2128" y2="5120" x1="3408" />
            <wire x2="3408" y1="5120" y2="5120" x1="3040" />
        </branch>
        <branch name="XLXN_101(31:0)">
            <wire x2="1392" y1="1520" y2="1632" x1="1392" />
            <wire x2="1504" y1="1520" y2="1520" x1="1392" />
            <wire x2="2720" y1="1520" y2="1520" x1="1504" />
            <wire x2="1504" y1="1408" y2="1520" x1="1504" />
            <wire x2="2720" y1="1008" y2="1520" x1="2720" />
        </branch>
        <branch name="XLXN_102">
            <wire x2="2656" y1="1008" y2="1296" x1="2656" />
            <wire x2="3376" y1="1296" y2="1296" x1="2656" />
            <wire x2="3376" y1="1296" y2="4736" x1="3376" />
            <wire x2="3376" y1="4736" y2="4736" x1="3040" />
        </branch>
        <instance x="576" y="928" name="XLXI_31" orien="R270">
        </instance>
        <instance x="384" y="896" name="XLXI_25" orien="R270">
        </instance>
        <instance x="688" y="928" name="XLXI_47" orien="R270">
        </instance>
        <branch name="XLXN_104(3:0)">
            <wire x2="288" y1="400" y2="480" x1="288" />
            <wire x2="432" y1="400" y2="400" x1="288" />
            <wire x2="432" y1="400" y2="960" x1="432" />
            <wire x2="656" y1="960" y2="960" x1="432" />
            <wire x2="656" y1="928" y2="960" x1="656" />
        </branch>
        <instance x="688" y="480" name="XLXI_48" orien="R270">
        </instance>
        <branch name="XLXN_105(31:0)">
            <wire x2="656" y1="480" y2="544" x1="656" />
        </branch>
        <branch name="BUS_Main">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="272" y="32" type="branch" />
            <wire x2="224" y1="32" y2="2048" x1="224" />
            <wire x2="480" y1="2048" y2="2048" x1="224" />
            <wire x2="272" y1="32" y2="32" x1="224" />
            <wire x2="592" y1="32" y2="32" x1="272" />
            <wire x2="592" y1="32" y2="48" x1="592" />
            <wire x2="848" y1="32" y2="32" x1="592" />
            <wire x2="1088" y1="32" y2="32" x1="848" />
            <wire x2="1376" y1="32" y2="32" x1="1088" />
            <wire x2="1376" y1="32" y2="64" x1="1376" />
            <wire x2="1088" y1="32" y2="1456" x1="1088" />
            <wire x2="1184" y1="1456" y2="1456" x1="1088" />
            <wire x2="480" y1="1968" y2="2048" x1="480" />
            <wire x2="992" y1="1408" y2="1456" x1="992" />
            <wire x2="1088" y1="1456" y2="1456" x1="992" />
            <wire x2="1184" y1="1408" y2="1456" x1="1184" />
            <wire x2="1376" y1="16" y2="32" x1="1376" />
            <wire x2="1840" y1="16" y2="16" x1="1376" />
            <wire x2="2016" y1="16" y2="16" x1="1840" />
            <wire x2="2016" y1="16" y2="64" x1="2016" />
            <wire x2="2656" y1="16" y2="16" x1="2016" />
            <wire x2="2656" y1="16" y2="576" x1="2656" />
            <wire x2="2928" y1="16" y2="16" x1="2656" />
            <wire x2="2928" y1="16" y2="800" x1="2928" />
            <wire x2="3664" y1="16" y2="16" x1="2928" />
            <wire x2="3664" y1="16" y2="320" x1="3664" />
            <wire x2="3968" y1="16" y2="16" x1="3664" />
            <wire x2="3968" y1="16" y2="272" x1="3968" />
            <wire x2="1840" y1="16" y2="576" x1="1840" />
            <wire x2="1968" y1="576" y2="576" x1="1840" />
            <wire x2="2208" y1="576" y2="576" x1="1968" />
            <wire x2="1968" y1="576" y2="2176" x1="1968" />
            <wire x2="1520" y1="2112" y2="2176" x1="1520" />
            <wire x2="1968" y1="2176" y2="2176" x1="1520" />
            <wire x2="2208" y1="496" y2="576" x1="2208" />
        </branch>
        <branch name="CLK">
            <wire x2="352" y1="1408" y2="3232" x1="352" />
            <wire x2="2608" y1="3232" y2="3232" x1="352" />
            <wire x2="928" y1="1408" y2="1472" x1="928" />
            <wire x2="1248" y1="1472" y2="1472" x1="928" />
            <wire x2="1440" y1="1472" y2="1472" x1="1248" />
            <wire x2="1696" y1="1472" y2="1472" x1="1440" />
            <wire x2="1696" y1="1472" y2="2416" x1="1696" />
            <wire x2="2144" y1="2416" y2="2416" x1="1696" />
            <wire x2="2608" y1="2416" y2="2416" x1="2144" />
            <wire x2="2608" y1="2416" y2="2816" x1="2608" />
            <wire x2="2624" y1="2816" y2="2816" x1="2608" />
            <wire x2="2608" y1="2816" y2="3232" x1="2608" />
            <wire x2="2880" y1="2416" y2="2416" x1="2608" />
            <wire x2="2896" y1="2416" y2="2416" x1="2880" />
            <wire x2="2992" y1="2416" y2="2416" x1="2896" />
            <wire x2="4112" y1="2416" y2="2416" x1="2992" />
            <wire x2="4928" y1="2416" y2="2416" x1="4112" />
            <wire x2="5312" y1="2416" y2="2416" x1="4928" />
            <wire x2="1248" y1="1408" y2="1472" x1="1248" />
            <wire x2="1440" y1="1408" y2="1472" x1="1440" />
            <wire x2="2144" y1="496" y2="2416" x1="2144" />
            <wire x2="2880" y1="736" y2="2416" x1="2880" />
            <wire x2="2992" y1="736" y2="736" x1="2880" />
            <wire x2="2992" y1="736" y2="800" x1="2992" />
            <wire x2="3424" y1="1824" y2="1824" x1="2992" />
            <wire x2="2992" y1="1824" y2="2416" x1="2992" />
            <wire x2="3792" y1="736" y2="816" x1="3792" />
            <wire x2="4112" y1="736" y2="736" x1="3792" />
            <wire x2="4112" y1="736" y2="2416" x1="4112" />
        </branch>
        <iomarker fontsize="28" x="5312" y="2416" name="CLK" orien="R0" />
        <branch name="XLXN_120">
            <wire x2="592" y1="480" y2="528" x1="592" />
            <wire x2="752" y1="528" y2="528" x1="592" />
            <wire x2="752" y1="528" y2="1584" x1="752" />
            <wire x2="3152" y1="1584" y2="1584" x1="752" />
            <wire x2="3152" y1="1584" y2="3968" x1="3152" />
            <wire x2="3152" y1="3968" y2="3968" x1="3040" />
        </branch>
        <branch name="Initiation">
            <wire x2="2592" y1="2640" y2="3904" x1="2592" />
            <wire x2="2624" y1="3904" y2="3904" x1="2592" />
            <wire x2="5328" y1="2640" y2="2640" x1="2592" />
        </branch>
        <iomarker fontsize="28" x="5328" y="2640" name="Initiation" orien="R0" />
        <branch name="InstructionDone">
            <wire x2="5328" y1="3840" y2="3840" x1="3040" />
            <wire x2="5328" y1="2800" y2="3840" x1="5328" />
            <wire x2="5376" y1="2800" y2="2800" x1="5328" />
        </branch>
        <iomarker fontsize="28" x="5376" y="2800" name="InstructionDone" orien="R0" />
        <branch name="XLXN_103(31:0)">
            <wire x2="288" y1="944" y2="944" x1="240" />
            <wire x2="544" y1="944" y2="944" x1="288" />
            <wire x2="288" y1="944" y2="976" x1="288" />
            <wire x2="240" y1="944" y2="1424" x1="240" />
            <wire x2="624" y1="1424" y2="1424" x1="240" />
            <wire x2="288" y1="896" y2="944" x1="288" />
            <wire x2="544" y1="928" y2="944" x1="544" />
            <wire x2="624" y1="944" y2="1424" x1="624" />
            <wire x2="912" y1="944" y2="944" x1="624" />
            <wire x2="912" y1="464" y2="944" x1="912" />
        </branch>
    </sheet>
</drawing>