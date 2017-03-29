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
        <signal name="XLXN_20(31:0)" />
        <signal name="XLXN_21(31:0)" />
        <signal name="XLXN_25(25:0)" />
        <signal name="XLXN_29(4:0)" />
        <signal name="XLXN_30(4:0)" />
        <signal name="XLXN_31(4:0)" />
        <signal name="XLXN_35(5:0)" />
        <signal name="XLXN_36(5:0)" />
        <signal name="XLXN_38(15:0)" />
        <signal name="XLXN_40(15:0)" />
        <signal name="XLXN_41(31:0)" />
        <signal name="XLXN_42(31:0)" />
        <signal name="XLXN_43(4:0)" />
        <signal name="XLXN_44(31:0)" />
        <signal name="XLXN_46(31:0)" />
        <signal name="XLXN_47(31:0)" />
        <signal name="XLXN_48(31:0)" />
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
        <block symbolname="ALU" name="ALU">
            <blockpin signalname="XLXN_16(31:0)" name="alu_in_a(31:0)" />
            <blockpin signalname="XLXN_14(31:0)" name="alu_in_b(31:0)" />
            <blockpin signalname="XLXN_36(5:0)" name="op_code(5:0)" />
            <blockpin name="flag_z" />
            <blockpin signalname="XLXN_6(31:0)" name="result(31:0)" />
        </block>
        <block symbolname="RegistersField" name="RF">
            <blockpin name="WE" />
            <blockpin name="OE" />
            <blockpin name="clk" />
            <blockpin name="W_data(31:0)" />
            <blockpin signalname="XLXN_11(4:0)" name="Reg_addr(4:0)" />
            <blockpin name="R_data(31:0)" />
        </block>
        <block symbolname="TriState" name="ALU_BUS">
            <blockpin name="ctrl" />
            <blockpin signalname="XLXN_6(31:0)" name="data_in(31:0)" />
            <blockpin name="data_out(31:0)" />
        </block>
        <block symbolname="Mux_Reg" name="RegSelect">
            <blockpin signalname="XLXN_29(4:0)" name="Reg_addr_0(4:0)" />
            <blockpin signalname="XLXN_30(4:0)" name="Reg_addr_1(4:0)" />
            <blockpin signalname="XLXN_31(4:0)" name="Reg_addr_2(4:0)" />
            <blockpin name="Reg_Key(1:0)" />
            <blockpin signalname="XLXN_11(4:0)" name="Reg_out_addr(4:0)" />
        </block>
        <block symbolname="Register_32" name="LA">
            <blockpin name="WE" />
            <blockpin name="clk" />
            <blockpin name="data_in(31:0)" />
            <blockpin signalname="XLXN_16(31:0)" name="data_out(31:0)" />
        </block>
        <block symbolname="Register_32" name="LB">
            <blockpin name="WE" />
            <blockpin name="clk" />
            <blockpin signalname="XLXN_42(31:0)" name="data_in(31:0)" />
            <blockpin signalname="XLXN_14(31:0)" name="data_out(31:0)" />
        </block>
        <block symbolname="Register_32" name="IR">
            <blockpin name="WE" />
            <blockpin name="clk" />
            <blockpin name="data_in(31:0)" />
            <blockpin signalname="XLXN_21(31:0)" name="data_out(31:0)" />
        </block>
        <block symbolname="Register_32" name="PC">
            <blockpin name="WE" />
            <blockpin name="clk" />
            <blockpin signalname="XLXN_47(31:0)" name="data_in(31:0)" />
            <blockpin signalname="XLXN_46(31:0)" name="data_out(31:0)" />
        </block>
        <block symbolname="Register_32" name="MAR">
            <blockpin name="WE" />
            <blockpin name="clk" />
            <blockpin name="data_in(31:0)" />
            <blockpin name="data_out(31:0)" />
        </block>
        <block symbolname="Register_32" name="MDR">
            <blockpin name="WE" />
            <blockpin name="clk" />
            <blockpin name="data_in(31:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="data_out(31:0)" />
        </block>
        <block symbolname="TriState" name="MDR_BUS">
            <blockpin name="ctrl" />
            <blockpin signalname="XLXN_20(31:0)" name="data_in(31:0)" />
            <blockpin name="data_out(31:0)" />
        </block>
        <block symbolname="Instruction_Seperator" name="XLXI_20">
            <blockpin signalname="XLXN_21(31:0)" name="instruction_in(31:0)" />
            <blockpin name="OPcode(5:0)" />
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
            <blockpin signalname="XLXN_46(31:0)" name="PC_value(31:0)" />
            <blockpin name="high4(3:0)" />
            <blockpin name="low4(27:0)" />
        </block>
        <block symbolname="Mux_ALU_OP" name="XLXI_26">
            <blockpin name="op_select" />
            <blockpin signalname="XLXN_35(5:0)" name="op0(5:0)" />
            <blockpin name="op1(5:0)" />
            <blockpin signalname="XLXN_36(5:0)" name="op_out(5:0)" />
        </block>
        <block symbolname="ImmeExt" name="XLXI_27">
            <blockpin signalname="XLXN_38(15:0)" name="Imme_in(15:0)" />
            <blockpin signalname="XLXN_41(31:0)" name="Imme_out(31:0)" />
        </block>
        <block symbolname="Mux_LB" name="XLXI_29">
            <blockpin signalname="XLXN_41(31:0)" name="Data_Imme(31:0)" />
            <blockpin name="Data_Bus(31:0)" />
            <blockpin name="Data_select(1:0)" />
            <blockpin signalname="XLXN_42(31:0)" name="Data_out(31:0)" />
            <blockpin signalname="XLXN_44(31:0)" name="Data_Shamt(31:0)" />
        </block>
        <block symbolname="ShamtExt" name="XLXI_30">
            <blockpin signalname="XLXN_43(4:0)" name="shamt(4:0)" />
            <blockpin signalname="XLXN_44(31:0)" name="shamt32(31:0)" />
        </block>
        <block symbolname="PC_Adder" name="XLXI_31">
            <blockpin signalname="XLXN_46(31:0)" name="old_pc(31:0)" />
            <blockpin signalname="XLXN_48(31:0)" name="new_pc(31:0)" />
        </block>
        <block symbolname="Mux_PC" name="XLXI_32">
            <blockpin signalname="XLXN_48(31:0)" name="data_adder4(31:0)" />
            <blockpin name="data_bus(31:0)" />
            <blockpin name="data_addr_merge(31:0)" />
            <blockpin name="data_select(1:0)" />
            <blockpin signalname="XLXN_47(31:0)" name="data_out(31:0)" />
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
        <instance x="2080" y="496" name="RF" orien="R270">
            <attrtext style="alignment:VRIGHT;fontsize:28;fontname:Arial" attrname="InstName" x="440" y="0" type="instance" />
        </instance>
        <branch name="XLXN_11(4:0)">
            <wire x2="2048" y1="496" y2="528" x1="2048" />
        </branch>
        <instance x="2272" y="1040" name="RegSelect" orien="R270">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-376" type="instance" />
        </instance>
        <branch name="XLXN_14(31:0)">
            <wire x2="1376" y1="944" y2="960" x1="1376" />
            <wire x2="1376" y1="960" y2="976" x1="1376" />
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
        <instance x="3216" y="480" name="MDR_BUS" orien="R270">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-248" type="instance" />
        </instance>
        <instance x="2848" y="592" name="MDR" orien="R90">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-312" type="instance" />
        </instance>
        <branch name="XLXN_20(31:0)">
            <wire x2="3008" y1="1024" y2="1072" x1="3008" />
            <wire x2="3184" y1="1072" y2="1072" x1="3008" />
            <wire x2="3184" y1="480" y2="1072" x1="3184" />
        </branch>
        <instance x="2416" y="592" name="MAR" orien="R90">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="0" y="-312" type="instance" />
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
            <wire x2="928" y1="2592" y2="3056" x1="928" />
            <wire x2="2048" y1="3056" y2="3056" x1="928" />
            <wire x2="2048" y1="1040" y2="3056" x1="2048" />
        </branch>
        <branch name="XLXN_30(4:0)">
            <wire x2="992" y1="2592" y2="3024" x1="992" />
            <wire x2="2112" y1="3024" y2="3024" x1="992" />
            <wire x2="2112" y1="1040" y2="3024" x1="2112" />
        </branch>
        <branch name="XLXN_31(4:0)">
            <wire x2="1056" y1="3008" y2="3040" x1="1056" />
            <wire x2="2176" y1="3040" y2="3040" x1="1056" />
            <wire x2="2176" y1="1040" y2="3040" x1="2176" />
        </branch>
        <instance x="1872" y="1360" name="XLXI_26" orien="R270">
        </instance>
        <branch name="XLXN_35(5:0)">
            <wire x2="1184" y1="3008" y2="3072" x1="1184" />
            <wire x2="1776" y1="3072" y2="3072" x1="1184" />
            <wire x2="1776" y1="1360" y2="3072" x1="1776" />
        </branch>
        <branch name="XLXN_36(5:0)">
            <wire x2="1440" y1="944" y2="960" x1="1440" />
            <wire x2="1536" y1="960" y2="960" x1="1440" />
            <wire x2="1536" y1="896" y2="960" x1="1536" />
            <wire x2="1712" y1="896" y2="896" x1="1536" />
            <wire x2="1712" y1="896" y2="976" x1="1712" />
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
        <branch name="XLXN_42(31:0)">
            <wire x2="1392" y1="1520" y2="1632" x1="1392" />
            <wire x2="1504" y1="1520" y2="1520" x1="1392" />
            <wire x2="1504" y1="1408" y2="1520" x1="1504" />
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
        <instance x="576" y="864" name="XLXI_31" orien="R270">
        </instance>
        <instance x="384" y="848" name="XLXI_25" orien="R270">
        </instance>
        <branch name="XLXN_46(31:0)">
            <wire x2="288" y1="848" y2="912" x1="288" />
            <wire x2="288" y1="912" y2="976" x1="288" />
            <wire x2="544" y1="912" y2="912" x1="288" />
            <wire x2="544" y1="864" y2="912" x1="544" />
        </branch>
        <branch name="XLXN_47(31:0)">
            <wire x2="416" y1="1408" y2="1440" x1="416" />
        </branch>
        <instance x="640" y="1968" name="XLXI_32" orien="R270">
        </instance>
        <branch name="XLXN_48(31:0)">
            <wire x2="176" y1="352" y2="2048" x1="176" />
            <wire x2="416" y1="2048" y2="2048" x1="176" />
            <wire x2="544" y1="352" y2="352" x1="176" />
            <wire x2="544" y1="352" y2="448" x1="544" />
            <wire x2="416" y1="1968" y2="2048" x1="416" />
        </branch>
    </sheet>
</drawing>