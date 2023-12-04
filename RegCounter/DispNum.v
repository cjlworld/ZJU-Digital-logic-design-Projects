`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:56:03 11/06/2023 
// Design Name: 
// Module Name:    DispNum 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DispNum(
	input [15:0] HEXS,   // 四个 四位二进制数（16进制）
	input [3:0] LES,     // 数字是否显示
	input [3:0] points,  // 小数点是否显示 
	input clk,           // 传入时钟
	input RST,			   // 是否重置，传入 0
	output [3:0] AN,     // 输出到板子上的，决定亮的的是哪个数字
	output [7:0] Segment // 输出到板子上的，决定亮的数字的对应的 LED 灯管
);
	wire [31:0] clkd;
	clkdiv my_clkdiv(
		.clk (clk),
		.rst (RST),
		.clkdiv (clkd)
	);
		
	wire [3:0] HEX;
	wire p;
	wire LE;
	
	DisplaySync my_display_sync(
		.Hexs (HEXS),
		.Point (points),
		.Les (LES),
		.Scan (clkd[18:17]),
		.Hex (HEX),
		.AN (AN),
		.p (p),
		.LE (LE)
	);
	
	MyMC14495 my_MyMC14495 (
		.D0 (HEX[0]),
		.D1 (HEX[1]),
		.D2 (HEX[2]),
		.D3 (HEX[3]),
		.point (p),
		.LE (LE),
		.p (Segment[7]),
		.a (Segment[0]),
		.b (Segment[1]),
		.c (Segment[2]),
		.d (Segment[3]),
		.e (Segment[4]),
		.f (Segment[5]),
		.g (Segment[6])
	);
	
endmodule
