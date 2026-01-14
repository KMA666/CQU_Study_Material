//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Oct 13 22:42:00 2025
//Host        : anbera running 64-bit major release  (build 9200)
//Command     : generate_target mux4x1_block.bd
//Design      : mux4x1_block
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mux4x1_block,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mux4x1_block,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=16,numReposBlks=16,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "mux4x1_block.hwdef" *) 
module mux4x1_block
   (F,
    a,
    b,
    c,
    d,
    s0,
    s1);
  output [0:0]F;
  input a;
  input b;
  input c;
  input d;
  input s0;
  input s1;

  wire a_1;
  wire [0:0]andgate_0_c;
  wire [0:0]andgate_10_c;
  wire [0:0]andgate_11_c;
  wire [0:0]andgate_1_c;
  wire [0:0]andgate_2_c;
  wire [0:0]andgate_3_c;
  wire [0:0]andgate_4_c;
  wire [0:0]andgate_5_c;
  wire [0:0]andgate_6_c;
  wire [0:0]andgate_7_c;
  wire [0:0]andgate_8_c;
  wire [0:0]andgate_9_c;
  wire b_1;
  wire c_1;
  wire d_1;
  wire notgate_2_0_out1;
  wire notgate_2_0_out2;
  wire [0:0]orgate_0_c;
  wire [0:0]orgate_1_c;
  wire [0:0]orgate_2_c;
  wire s0_1;
  wire s1_1;

  assign F[0] = orgate_2_c;
  assign a_1 = a;
  assign b_1 = b;
  assign c_1 = c;
  assign d_1 = d;
  assign s0_1 = s0;
  assign s1_1 = s1;
  mux4x1_block_andgate_0_0 andgate_0
       (.a(andgate_1_c),
        .b(andgate_3_c),
        .c(andgate_0_c));
  mux4x1_block_andgate_1_0 andgate_1
       (.a(s0_1),
        .b(b_1),
        .c(andgate_1_c));
  mux4x1_block_andgate_10_0 andgate_10
       (.a(s0_1),
        .b(d_1),
        .c(andgate_10_c));
  mux4x1_block_andgate_11_0 andgate_11
       (.a(andgate_9_c),
        .b(andgate_10_c),
        .c(andgate_11_c));
  mux4x1_block_andgate_2_0 andgate_2
       (.a(a_1),
        .b(notgate_2_0_out1),
        .c(andgate_2_c));
  mux4x1_block_andgate_3_0 andgate_3
       (.a(notgate_2_0_out1),
        .b(b_1),
        .c(andgate_3_c));
  mux4x1_block_andgate_4_0 andgate_4
       (.a(a_1),
        .b(notgate_2_0_out2),
        .c(andgate_4_c));
  mux4x1_block_andgate_5_0 andgate_5
       (.a(andgate_2_c),
        .b(andgate_4_c),
        .c(andgate_5_c));
  mux4x1_block_andgate_6_0 andgate_6
       (.a(s1_1),
        .b(c_1),
        .c(andgate_6_c));
  mux4x1_block_andgate_7_0 andgate_7
       (.a(notgate_2_0_out2),
        .b(c_1),
        .c(andgate_7_c));
  mux4x1_block_andgate_8_0 andgate_8
       (.a(andgate_6_c),
        .b(andgate_7_c),
        .c(andgate_8_c));
  mux4x1_block_andgate_9_0 andgate_9
       (.a(d_1),
        .b(s1_1),
        .c(andgate_9_c));
  mux4x1_block_notgate_2_0_0 notgate_2_0
       (.in1(s1_1),
        .in2(s0_1),
        .out1(notgate_2_0_out1),
        .out2(notgate_2_0_out2));
  mux4x1_block_orgate_0_0 orgate_0
       (.a(andgate_11_c),
        .b(andgate_5_c),
        .c(orgate_0_c));
  mux4x1_block_orgate_1_0 orgate_1
       (.a(andgate_8_c),
        .b(andgate_0_c),
        .c(orgate_1_c));
  mux4x1_block_orgate_2_0 orgate_2
       (.a(orgate_0_c),
        .b(orgate_1_c),
        .c(orgate_2_c));
endmodule
