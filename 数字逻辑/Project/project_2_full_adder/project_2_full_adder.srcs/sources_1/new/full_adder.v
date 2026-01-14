`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/15 19:40:53
// Design Name: 
// Module Name: full_adder
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

module full_adder(
    input A, B, Cin,  //定义输入变量
    output Sum, Cout  //定义输出变量
);
assign Sum = A ^ B ^ Cin;               // 异或运算实现和
assign Cout = (A & B) | (A & Cin) | (B & Cin);  // 与或运算实现进位
endmodule
