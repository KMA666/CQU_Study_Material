// tb_addsub4.v
`timescale 1ns/1ps
module tb_addsub4;
    reg [3:0] a, b;
    reg sub;
    wire [3:0] res;
    wire cout, ovf;

    addsub4 uut(.a(a), .b(b), .sub(sub), .result(res), .carry_out(cout), .overflow(ovf));

    initial begin
        $dumpfile("tb_addsub4.vcd");
        $dumpvars(0, tb_addsub4);
        // tests
        a = 4'd3; b = 4'd4; sub = 0; #10;
        a = 4'd7; b = 4'd9; sub = 0; #10;
        a = 4'b0111; b = 4'b0001; sub = 0; #10; // 7+1=8
        a = 4'b0111; b = 4'b0111; sub = 0; #10; // 7+7 overflow?
        a = 4'b1000; b = 4'b0001; sub = 1; #10; // -8 -1
        $finish;
    end
endmodule
