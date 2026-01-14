// addsub_param.v
`timescale 1ns/1ps
module addsub_param #(
    parameter WIDTH = 32
)(
    input  wire [WIDTH-1:0] a,
    input  wire [WIDTH-1:0] b,
    input  wire sub,
    output wire [WIDTH-1:0] result,
    output wire carry_out,
    output wire overflow
);
    wire [WIDTH-1:0] b_xor;
    wire [WIDTH-1:0] carry;
    genvar i;
    assign b_xor = b ^ {WIDTH{sub}};
    generate
        for (i=0; i<WIDTH; i=i+1) begin : gen_fa
            if (i == 0) begin
                full_adder fa(.a(a[0]), .b(b_xor[0]), .cin(sub), .sum(result[0]), .cout(carry[0]));
            end else begin
                full_adder fa(.a(a[i]), .b(b_xor[i]), .cin(carry[i-1]), .sum(result[i]), .cout(carry[i]));
            end
        end
    endgenerate
    assign carry_out = carry[WIDTH-1];
    generate
        if (WIDTH == 1) begin
            // overflow meaningless for 1 bit
            assign overflow = 1'b0;
        end else begin
            assign overflow = carry[WIDTH-2] ^ carry[WIDTH-1];
        end
    endgenerate
endmodule
