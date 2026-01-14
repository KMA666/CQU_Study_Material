`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/24 19:37:07
// Design Name: 
// Module Name: andgate1
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

`timescale 1ns/1ps  //1ns代表基本时间刻度为1ns,1ps代表精度精确到1ps，可以自己修改
module andgate1      //定义模块名
#(parameter WIDTH=1)(  //定义模块参数
    input[WIDTH-1:0] a, //输入端口使用input
    input[WIDTH-1:0] b, //使用英文“,”隔开
    output[WIDTH-1:0] c //输出端口使用output，最后一个端口不要有“,”
);
assign c=a&b;           //与门，每条语句后使用英文“；”结束
endmodule               //最后不要忘了这个
