// addsub4.v
`timescale 1ns/1ps
module addsub4 (
    input  wire [3:0] a,
    input  wire [3:0] b,
    input  wire sub,           // 0 add, 1 subtract
    output wire [3:0] result,
    output wire carry_out,
    output wire overflow
);
    wire [3:0] b_xor;
    wire cin0;
    wire carry_into_msb, cout;

    assign b_xor = b ^ {4{sub}}; // invert b when sub==1
    assign cin0 = sub;

    adder4 u_adder4 (
        .a(a),
        .b(b_xor),
        .cin(cin0),
        .sum(result),
        .cout(cout),
        .carry_into_msb(carry_into_msb)
    );

    assign carry_out = cout;
    assign overflow = carry_into_msb ^ carry_out;
endmodule
