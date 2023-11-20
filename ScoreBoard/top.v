`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:12 11/06/2023 
// Design Name: 
// Module Name:    top 
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
module top(
	input wire clk, 
	input wire [7:0] SW,
	input wire [3:0] btn,
	output wire [3:0] AN,
	output wire [7:0] SEGMENT,
	output wire BTNX4
);

	wire [15:0] num;
	CreateNumber c0(
		.btn (btn),
		.num (num)
	);
	DispNum d0(
		.clk (clk), 
		.HEXS (num), 
		.LES (SW[7:4]), 
		.points (SW[3:0]), 
		.RST (1'b0), 
		.AN (AN), 
		.Segment (SEGMENT)
	);
	
	assign BTNX4 = 1'b0; //Enable button inputs

endmodule
