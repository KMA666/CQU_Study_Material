`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/13 19:09:58
// Design Name: 
// Module Name: nogate_sim
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
// 非门测试平台
module tb_notgate;

    // 1. 定义参数和信号
    parameter WIDTH = 8;  // 测试一个8位宽的非门

    reg  [WIDTH-1:0] a;   // 输入信号，使用reg类型
    wire [WIDTH-1:0] y;   // 输出信号，使用wire类型

    // 2. 实例化被测试的模块 (DUT - Design Under Test)
    notgate #(.WIDTH(WIDTH)) uut (
        .a(a),
        .y(y)
    );

    // 3. 定义测试过程
    initial begin
        // 初始化输入
        a = 0;

        // 等待10ns，让仿真器有时间显示初始状态
        #10;

        // 测试序列
        a = 8'hFF;   // 输入全1
        #10;         // 等待10ns

        a = 8'h00;   // 输入全0
        #10;

        a = 8'hA5;   // 输入一个随机值 (10100101)
        #10;

        a = 8'h3C;   // 输入另一个随机值 (00111100)
        #10;
        
        // 结束仿真
        $finish;
    end
    // 4. (可选) 生成波形文件，用于在仿真工具中查看
    initial begin
        $dumpfile("tb_notgate.vcd"); // 指定波形文件名
        $dumpvars(0, tb_notgate);    // 记录所有层次的信号
    end

endmodule
