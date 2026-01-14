// digit_mux.v
`timescale 1ns/1ps
module digit_mux (
    input  wire clk,
    input  wire rstn,
    input  wire [3:0] d3,  // A
    input  wire [3:0] d2,  // B
    input  wire [3:0] d1,  // 空位
    input  wire [3:0] d0,  // result
    output wire [6:0] seg,
    output reg  [3:0] an,
    output reg  seg_dp
);
    // 分频计数器，用于轮询四个数码管
    reg [17:0] clkdiv;
    wire [1:0] sel;
    always @(posedge clk or negedge rstn) begin
        if (!rstn) clkdiv <= 18'd0;
        else clkdiv <= clkdiv + 1'b1;
    end
    assign sel = clkdiv[17:16]; // 高两位选择数码管

    // 当前显示的数字
    reg [3:0] cur_hex;
    wire [6:0] seg_inner;

    // hex7seg 映射当前数字到 seg
    hex7seg hexdec(
        .x(cur_hex),
        .seg(seg_inner)
    );

    assign seg = seg_inner;

    // 数码管轮询逻辑（AN低有效）
    always @(*) begin
        seg_dp = 1'b1; // DP 默认关闭
        case (sel)
            2'b00: begin an = 4'b1110; cur_hex = d0; end // 右most 显示 result
            2'b01: begin an = 4'b1101; cur_hex = d1; end // 空位
            2'b10: begin an = 4'b1011; cur_hex = d2; end // B
            2'b11: begin an = 4'b0111; cur_hex = d3; end // 左most 显示 A
            default: begin an = 4'b1110; cur_hex = d0; end
        endcase
    end
endmodule
