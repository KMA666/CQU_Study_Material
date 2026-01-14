`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/12 22:41:09
// Design Name: 
// Module Name: orgate_sim
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
module or_gate_sim();
    // 信号定义
    reg [31:0] a;
    reg [31:0] b;
    wire [31:0] c;

    // 实例化或门模块
    orgate #(32) uut (
        .a(a),
        .b(b),
        .c(c)
    );
    // 初始化和测试过程
    initial begin
        // 初始状态
        a = 32'h0000_0000;
        b = 32'h0000_0000;
        // 测试序列
        #100 a = 32'hffff_ffff;
        #50 begin
            a = 32'haabb_89ff;
            b = 32'hffff_0000;
        end
        #100 b = 32'hffff_ffff;
        #100; // 等待最后一次变化稳定
        $finish; // 结束仿真
    end
    // 生成波形文件
    initial begin
        $dumpfile("or_gate.vcd");
        $dumpvars(0, or_gate_sim);
    end

endmodule