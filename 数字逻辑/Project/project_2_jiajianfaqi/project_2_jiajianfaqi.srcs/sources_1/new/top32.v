// top32.v - 32-bit add/sub top (low 4-bit input only)
`timescale 1ns/1ps
module top32 (
    input  wire clk,
    input  wire btn_center_n,
    input  wire [15:0] sw,
    input  wire [3:0] btn,
    output wire [15:0] led,
    output wire [6:0] seg,
    output wire seg_dp,
    output wire [3:0] an
);
    // active-high reset
    wire rstn = ~btn_center_n;

    // operands (low 4-bit from switches)
    wire [31:0] A = {28'b0, sw[3:0]};
    wire [31:0] B = {28'b0, sw[7:4]};
    wire sub = sw[15];  // 0 add, 1 subtract

    // result
    wire [31:0] res32;
    wire cout32, ovf32;

    // 32-bit add/sub module
    addsub_param #(.WIDTH(32)) u32 (
        .a(A),
        .b(B),
        .sub(sub),
        .result(res32),
        .carry_out(cout32),
        .overflow(ovf32)
    );

    // display mapping (AN3..AN0)
    wire [3:0] d3 = A[3:0];      // leftmost: A
    wire [3:0] d2 = B[3:0];      // next: B
    wire [3:0] d1 = 4'h0;        // empty
    wire [3:0] d0 = res32[3:0];  // rightmost: result

    digit_mux display (
        .clk(clk),
        .rstn(rstn),
        .d3(d3),
        .d2(d2),
        .d1(d1),
        .d0(d0),
        .seg(seg),
        .an(an),
        .seg_dp(seg_dp)
    );

    // LED mapping
    assign led[0] = cout32;
    assign led[1] = ovf32;
    assign led[15:2] = 14'b0;

endmodule
