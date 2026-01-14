`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/13 22:10:26
// Design Name: 
// Module Name: notgate_2_sim
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


// 双输入双输出非门仿真模块（Testbench）
module notgate_2;

// 定义内部信号：连接设计模块的输入（reg型，需赋值）和输出（wire型，仅读取）
reg  tb_in1;
reg  tb_in2;
wire tb_out1;
wire tb_out2;

// 实例化设计模块：将仿真信号与设计模块端口连接
notgate_2 uut(
    .in1(tb_in1),  // 仿真输入tb_in1接设计模块in1
    .in2(tb_in2),  // 仿真输入tb_in2接设计模块in2
    .out1(tb_out1),// 设计模块out1接仿真输出tb_out1
    .out2(tb_out2) // 设计模块out2接仿真输出tb_out2
);

// 生成测试激励：遍历所有输入组合
initial begin
    // 1. 初始状态：输入全0
    tb_in1 = 1'b0;
    tb_in2 = 1'b0;
    #10;  // 延迟10ns，让信号稳定后观察输出
    
    // 2. 输入0、1
    tb_in1 = 1'b0;
    tb_in2 = 1'b1;
    #10;
    
    // 3. 输入1、0
    tb_in1 = 1'b1;
    tb_in2 = 1'b0;
    #10;
    
    // 4. 输入全1
    tb_in1 = 1'b1;
    tb_in2 = 1'b1;
    #10;
    
    // 结束仿真
    $finish;
end

// 打印仿真结果：在控制台显示输入和对应输出（可选，便于快速核对）
initial begin
    $monitor("Time = %0t ns, in1 = %b, in2 = %b, out1 = %b, out2 = %b", 
             $time, tb_in1, tb_in2, tb_out1, tb_out2);
end

endmodule
