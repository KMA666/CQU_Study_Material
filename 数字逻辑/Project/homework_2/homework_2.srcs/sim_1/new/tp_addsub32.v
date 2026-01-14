`timescale 1ns/1ps
module tp_addsub32;

    reg clk;
    reg [15:0] sw;
    reg [3:0] btn;
    reg btn_center_n;

    wire [15:0] led;
    wire [6:0] seg;
    wire seg_dp;
    wire [3:0] an;

    // instantiate top32
    top32 uut (
        .clk(clk),
        .btn_center_n(btn_center_n),
        .sw(sw),
        .btn(btn),
        .led(led),
        .seg(seg),
        .seg_dp(seg_dp),
        .an(an)
    );

    // clock 100 MHz
    initial clk = 0;
    always #5 clk = ~clk; // period 10 ns

    initial begin
        // reset
        btn_center_n = 0; #20;
        btn_center_n = 1;

        // test vectors
        sw = 16'h0010; #20; // A=0, B=1, sub=0 ¡ú 0+1=1
        sw = 16'h8010; #20; // A=0, B=1, sub=1 ¡ú 0-1=-1 (res=15)
        sw = 16'h0005; #20; // A=5, B=0, sub=0 ¡ú 5+0=5
        sw = 16'h8005; #20; // A=5, B=0, sub=1 ¡ú 5-0=5
        sw = 16'h000F; #20; // A=15, B=0, sub=0 ¡ú 15+0=15
        sw = 16'h80F0; #20; // A=0, B=15, sub=1 ¡ú 0-15=-15 (res=1)
        $finish;
    end

    // monitor outputs
    initial begin
        $monitor("time=%0t | sw=%h | AN=%b seg=%h led=%b", $time, sw, an, seg, led);
    end

endmodule
