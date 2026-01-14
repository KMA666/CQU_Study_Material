`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/24 20:25:30
// Design Name: 
// Module Name: andgete_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps
module andgate_sim();
reg [31:0] a;
reg [31:0] b; //input
wire [31:0] c; //output

 andgate #(32) andgate1(
.a(a),
.b(b),
 .c(c)
 );
initial begin
a = 32'h0000_0000;
b = 32'h0000_0000; //初始化输入端口
#100 a = 32'hffff_ffff; //#100代表经过100ns后进行的操作
 #50 begin
a = 32'haabb_89ff;
b = 32'hffff_0000;
end
#50 a = 32'hddab_1111;
#100 b = 32'hffff_ffff;
end
endmodule

