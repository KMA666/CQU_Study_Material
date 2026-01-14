//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Oct 13 20:38:37 2025
//Host        : anbera running 64-bit major release  (build 9200)
//Command     : generate_target mux2x1_1.bd
//Design      : mux2x1_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mux2x1_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mux2x1_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "mux2x1_1.hwdef" *) 
module mux2x1_1
   (a,
    b,
    f,
    s);
  input a;
  input b;
  output [0:0]f;
  input s;

  wire a_1;
  wire [0:0]andgate_0_c;
  wire [0:0]andgate_1_c;
  wire b_1;
  wire [0:0]notgate_0_y;
  wire [0:0]orgate_0_c;
  wire s_1;

  assign a_1 = a;
  assign b_1 = b;
  assign f[0] = orgate_0_c;
  assign s_1 = s;
  mux2x1_1_andgate_0_0 andgate_0
       (.a(a_1),
        .b(notgate_0_y),
        .c(andgate_0_c));
  mux2x1_1_andgate_1_0 andgate_1
       (.a(s_1),
        .b(b_1),
        .c(andgate_1_c));
  mux2x1_1_notgate_0_0 notgate_0
       (.a(s_1),
        .y(notgate_0_y));
  mux2x1_1_orgate_0_0 orgate_0
       (.a(andgate_0_c),
        .b(andgate_1_c),
        .c(orgate_0_c));
endmodule
