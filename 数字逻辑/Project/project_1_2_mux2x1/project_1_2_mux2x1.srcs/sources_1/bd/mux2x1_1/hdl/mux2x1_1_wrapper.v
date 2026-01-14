//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Mon Oct 13 20:38:37 2025
//Host        : anbera running 64-bit major release  (build 9200)
//Command     : generate_target mux2x1_1_wrapper.bd
//Design      : mux2x1_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mux2x1_1_wrapper
   (a,
    b,
    f,
    s);
  input a;
  input b;
  output [0:0]f;
  input s;

  wire a;
  wire b;
  wire [0:0]f;
  wire s;

  mux2x1_1 mux2x1_1_i
       (.a(a),
        .b(b),
        .f(f),
        .s(s));
endmodule
