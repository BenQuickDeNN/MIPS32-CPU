--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: MyCPU1_timesim.vhd
-- /___/   /\     Timestamp: Fri Mar 24 23:31:47 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -ar Structure -tm MyCPU1 -w -dir netgen/fit -ofmt vhdl -sim MyCPU1.nga MyCPU1_timesim.vhd 
-- Device	: XC9536-5-PC44 (Speed File: Version 3.0)
-- Input file	: MyCPU1.nga
-- Output file	: E:\projects\VHDL\MyCPU1_ISE\MyCPU1\netgen\fit\MyCPU1_timesim.vhd
-- # of Entities	: 1
-- Design Name	: MyCPU1.nga
-- Xilinx	: D:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity MyCPU1 is
  port (
    a : in STD_LOGIC := 'X'; 
    b : out STD_LOGIC 
  );
end MyCPU1;

architecture Structure of MyCPU1 is
  signal b_OBUF_1 : STD_LOGIC; 
  signal b_OBUF_BUF0_3 : STD_LOGIC; 
  signal b_OBUF_BUF0_Q_4 : STD_LOGIC; 
  signal b_OBUF_BUF0_D_5 : STD_LOGIC; 
  signal b_OBUF_BUF0_D1_6 : STD_LOGIC; 
  signal b_OBUF_BUF0_D2_7 : STD_LOGIC; 
  signal NlwBufferSignal_b_OBUF_BUF0_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_b_OBUF_BUF0_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_b_OBUF_BUF0_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_b_OBUF_BUF0_D2_IN1 : STD_LOGIC; 
begin
  b_OBUF : X_BUF
    port map (
      I => a,
      O => b_OBUF_1
    );
  b_4 : X_BUF
    port map (
      I => b_OBUF_BUF0_3,
      O => b
    );
  b_OBUF_BUF0 : X_BUF
    port map (
      I => b_OBUF_BUF0_Q_4,
      O => b_OBUF_BUF0_3
    );
  b_OBUF_BUF0_Q : X_BUF
    port map (
      I => b_OBUF_BUF0_D_5,
      O => b_OBUF_BUF0_Q_4
    );
  b_OBUF_BUF0_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_b_OBUF_BUF0_D_IN0,
      I1 => NlwBufferSignal_b_OBUF_BUF0_D_IN1,
      O => b_OBUF_BUF0_D_5
    );
  b_OBUF_BUF0_D1 : X_ZERO
    port map (
      O => b_OBUF_BUF0_D1_6
    );
  b_OBUF_BUF0_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_b_OBUF_BUF0_D2_IN0,
      I1 => NlwBufferSignal_b_OBUF_BUF0_D2_IN1,
      O => b_OBUF_BUF0_D2_7
    );
  NlwBufferBlock_b_OBUF_BUF0_D_IN0 : X_BUF
    port map (
      I => b_OBUF_BUF0_D1_6,
      O => NlwBufferSignal_b_OBUF_BUF0_D_IN0
    );
  NlwBufferBlock_b_OBUF_BUF0_D_IN1 : X_BUF
    port map (
      I => b_OBUF_BUF0_D2_7,
      O => NlwBufferSignal_b_OBUF_BUF0_D_IN1
    );
  NlwBufferBlock_b_OBUF_BUF0_D2_IN0 : X_BUF
    port map (
      I => b_OBUF_1,
      O => NlwBufferSignal_b_OBUF_BUF0_D2_IN0
    );
  NlwBufferBlock_b_OBUF_BUF0_D2_IN1 : X_BUF
    port map (
      I => b_OBUF_1,
      O => NlwBufferSignal_b_OBUF_BUF0_D2_IN1
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => PRLD);

end Structure;

