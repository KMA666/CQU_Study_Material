`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/24 19:55:25
// Design Name: 
// Module Name: andgate1_sim
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

`timescale 1ns/1ps
module andgate1_sim(); //创建andgate1模块的输入输出端口
    reg[31:0] a;
    reg[31:0] b; //input 用分号“;”隔开
    wire[31:0] c; //output
    //实例化模块
    andgate #(32) andgate1(
    .a(a),
    .b(b),
    .c(c)
    );
    initial begin
        a=32'h0000_0000;
        b=32'h0000_0000;  //初始化输入端口
        #100 a=32'hffff_ffff; //#100代表经过100ns后进行的操作
        #50 begin
            a=32'haabb_89ff;
            b=32'hffff_0000;
        end //多个操作需要使用begin和end包括起来
        #50 a= 32'hddab_1111;
        #100 b=32'hffff_ffff;
    end
endmodule
