`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:35:37 11/27/2023 
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
	input wire btn,
	output [3:0] AN,
	output [7:0] SEGMENT,
	output wire Rc
);
	wire my_clk;
	clk_100ms my_clk_100ms(
		.clk (clk),
		.clk_ls (my_clk)
	);
	
	wire [15:0] cnt;
	
	RevCounter my_counter(
		.clk (my_clk),
		.s (btn),
		.cnt (cnt),
		.Rc (Rc)
	);
	
	DispNum my_dispnum(
		.clk (clk),
		.RST (1'b0),
		.HEXS (cnt),
		.LES (4'b0000),
		.points (4'b1111),
		.AN (AN),
		.Segment (SEGMENT)
	);
endmodule





