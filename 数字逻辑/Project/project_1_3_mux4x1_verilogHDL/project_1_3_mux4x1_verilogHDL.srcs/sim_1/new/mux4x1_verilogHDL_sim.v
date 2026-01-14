`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/13 23:39:30
// Design Name: 
// Module Name: mux4x1_verilogHDL_sim
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

module mux4x1_verilogHDL_sim;

    // 1. 定义信号
    reg  [1:0] s;
    reg        d0, d1, d2, d3;
    wire       y;

    // 2. 实例化被测试模块 (DUT)
    mux4x1_verilogHDL uut (
        .s(s),
        .d0(d0),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .y(y)
    );

    // 3. 生成激励信号
    initial begin
        // 初始化所有输入
        s = 0;
        d0 = 0; d1 = 0; d2 = 0; d3 = 0;
        
        // 等待10ns
        #10;
        
        // 设置4个输入为不同的值，方便观察
        d0 = 1; d1 = 0; d2 = 1; d3 = 0;

        // 遍历所有选择情况
        s = 2'b00; #10; // 选择d0, 期望输出 1
        s = 2'b01; #10; // 选择d1, 期望输出 0
        s = 2'b10; #10; // 选择d2, 期望输出 1
        s = 2'b11; #10; // 选择d3, 期望输出 0
        
        // 改变输入数据，再测试一遍
        d0 = 0; d1 = 1; d2 = 0; d3 = 1;
        
        s = 2'b00; #10; // 选择d0, 期望输出 0
        s = 2'b01; #10; // 选择d1, 期望输出 1
        s = 2'b10; #10; // 选择d2, 期望输出 0
        s = 2'b11; #10; // 选择d3, 期望输出 1

        // 结束仿真
        $finish;
    end



endmodule

