`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:05:57 11/13/2023 
// Design Name: 
// Module Name:    Top 
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
module Top(
	input wire clk,
	input wire [1:0]BTN,
	input wire [1:0]SW1,
	input wire [1:0]SW2,
	output wire [3:0]AN,
	output wire [7:0]SEGMENT,
	output wire BTNX4
	); 
	wire [15:0] num;
	wire [1:0] btn_out;
	wire [3:0] C;
	wire Co;
	wire [31:0] clk_div;
	wire [15:0] disp_hexs;

	assign disp_hexs[15:12] = num[3:0]; //A
	assign disp_hexs[11:8] = num[7:4]; //B
	assign disp_hexs[7:4] = {3'b000, Co};
	assign disp_hexs[3:0] = C[3:0];
	
	pbdebounce m0(clk_div[17], BTN [0], btn_out[0]);
	pbdebounce m1(clk_div[17], BTN[1], btn_out[1]);
	clkdiv m2(
		.clk(clk),
		.rst(1'b0),
		.clkdiv(clk_div)
	);
	// 自行补充部分
	CreateNumber m3(
		.btn (btn_out),
		.sw (SW1),
		.num (num)
	); 
	// 自行补充部分
	myALU m5(
		.A (num[3:0]),
		.B (num[7:4]),
		.S (SW2[1:0]),
		.Co (Co),
		.C (C)
	);
	DispNum m6(
		.clk(clk), 
		.HEXS(disp_hexs), 
		.LES(4'b0), 
		.points(4'b0), 
		.RST(1'b0), 
		.AN(AN), 
		.Segment(SEGMENT)
	);
	assign BTNX4 = 1'b0; //Enable button inputs
	
endmodule
