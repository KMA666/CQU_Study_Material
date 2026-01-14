`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/13 19:08:52
// Design Name: 
// Module Name: nogate
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

// 非门电路 (NOT Gate)
// 参数化设计，可以处理多位宽输入
module notgate
#(parameter WIDTH = 1) // 默认位宽为1
(
    input  [WIDTH-1:0] a,  // 输入端口
    output [WIDTH-1:0] y   // 输出端口
);

// 使用连续赋值语句和取反运算符 "~" 实现非门功能
// 当输入为多位宽时，会对每一位进行取反操作
assign y = ~a;

endmodule
