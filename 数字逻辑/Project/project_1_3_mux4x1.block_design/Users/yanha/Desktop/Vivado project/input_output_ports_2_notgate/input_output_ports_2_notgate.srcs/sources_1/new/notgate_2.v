`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/13 22:09:49
// Design Name: 
// Module Name: notgate_2
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


// 双输入双输出非门设计模块
module notgate_2(
    input  wire in1,  // 第一个输入端口
    input  wire in2,  // 第二个输入端口
    output wire out1, // 第一个输出端口（对应in1的非）
    output wire out2  // 第二个输出端口（对应in2的非）
);

// 组合逻辑：直接实现非运算，输入与输出实时相反
assign out1 = ~in1;  // out1等于in1的非
assign out2 = ~in2;  // out2等于in2的非

endmodule
