// full_adder.v
module full_adder (
    input  wire a,
    input  wire b,
    input  wire cin,
    output wire sum,
    output wire cout
);
    wire ab_xor;
    assign ab_xor = a ^ b;
    assign sum = ab_xor ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule
