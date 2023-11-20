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
	input [15:0] HEXS,
	input [3:0] LES,
	input [3:0] points,
	input clk,
	input RST,
	output [3:0] AN,
	output [7:0] Segment
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
