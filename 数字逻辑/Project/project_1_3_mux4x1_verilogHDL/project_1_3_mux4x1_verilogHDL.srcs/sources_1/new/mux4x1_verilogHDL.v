`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/13 23:28:28
// Design Name: 
// Module Name: mux4x1_verilogHDL
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


module mux4x1_verilogHDL(
    input  [1:0] s,   // 2位选择信号
    input        d0,  // 数据输入0
    input        d1,  // 数据输入1
    input        d2,  // 数据输入2
    input        d3,  // 数据输入3
    output reg   y    // 输出信号 (使用reg因为在always块中赋值)
);

    // 当选择信号s变化时，执行case语句
    always @(s or d0 or d1 or d2 or d3) begin
        case (s)
            2'b00: y = d0; // 如果s为00, y输出d0
            2'b01: y = d1; // 如果s为01, y输出d1
            2'b10: y = d2; // 如果s为10, y输出d2
            2'b11: y = d3; // 如果s为11, y输出d3
            default: y = 1'bx; // 其他情况 (增强代码健壮性)
        endcase
    end

endmodule
