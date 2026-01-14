//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Oct 13 22:42:00 2025
//Host        : anbera running 64-bit major release  (build 9200)
//Command     : generate_target mux4x1_block_wrapper.bd
//Design      : mux4x1_block_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mux4x1_block_wrapper
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

  wire [0:0]F;
  wire a;
  wire b;
  wire c;
  wire d;
  wire s0;
  wire s1;

  mux4x1_block mux4x1_block_i
       (.F(F),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .s0(s0),
        .s1(s1));
endmodule
