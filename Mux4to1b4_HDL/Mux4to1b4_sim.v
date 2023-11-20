`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:34:42 11/06/2023
// Design Name:   Mux4to1b4
// Module Name:   C:/Users/cjlwo/Desktop/ISE/Mux4to1b4_HDL/Mux4to1b4_sim.v
// Project Name:  Mux4to1b4_HDL
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux4to1b4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux4to1b4_sim;
    reg [3:0] I0;
    reg [3:0] I1;
    reg [3:0] I2;
    reg [3:0] I3;
    reg [1:0] s;
    wire [3:0] o;

    Mux4to1b4 uut (
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .s(s),
        .o(o)
    );

    initial begin
        // 初始化输入信号
        I0 = 4'b0101;
        I1 = 4'b1100;
        I2 = 4'b0011;
        I3 = 4'b1001;

        // 枚举每种输入情况
        for (s = 2'b00; s <= 2'b11; s = s + 1) begin
            #10; // 等待 10 个时间单位
            $display("s = %b, o = %b", s, o);
        end

        // 结束仿真
        $finish;
    end

endmodule


