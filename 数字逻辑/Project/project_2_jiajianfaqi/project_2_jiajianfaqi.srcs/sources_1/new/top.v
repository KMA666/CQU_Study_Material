// top.v - 4-bit add/sub top
`timescale 1ns/1ps
module top (
    input  wire clk,           // from W5
    input  wire btn_center_n,  // BTNC (active low) used as reset (rstn)
    input  wire [15:0] sw,     // SW15..SW0
    input  wire [3:0] btn,     // BTNU, BTNR, BTND, BTNL
    output wire [15:0] led,    // LD0..LD15
    output wire [6:0] seg,     // CA..CG
    output wire seg_dp,        // DP
    output wire [3:0] an       // AN0..AN3
);

    // make rstn active high in logic
    wire rstn = ~btn_center_n; // BTNC is active low, use directly

    // Operands
    wire [3:0] A = sw[3:0];    // SW3..SW0
    wire [3:0] B = sw[7:4];    // SW7..SW4
    wire sub = sw[15];         // SW15: 0 add, 1 sub

    // Result signals
    wire [3:0] result;
    wire carry_out, overflow;

    // 4-bit add/sub module
    addsub4 u_addsub4 (
        .a(A),
        .b(B),
        .sub(sub),
        .result(result),
        .carry_out(carry_out),
        .overflow(overflow)
    );

    // --- Map digits to 7-segment displays ---
    // 修改顺序：左起 AN3= A, AN2= B, AN1= 空位, AN0= result
    wire [3:0] d3 = A;        // AN3 (左most) 显示 A
    wire [3:0] d2 = B;        // AN2 显示 B
    wire [3:0] d1 = 4'h0;     // AN1 空位
    wire [3:0] d0 = result;   // AN0 (右most) 显示结果

    // Digit mux
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

    // --- LED mapping ---
    // LED0: carry_out
    // LED1: overflow
    // Other LEDs off
    assign led[0] = carry_out;
    assign led[1] = overflow;
    assign led[15:2] = 14'b0;

endmodule
