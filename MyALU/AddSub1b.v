`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:08 11/13/2023 
// Design Name: 
// Module Name:    AddSub1b 
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
module AddSub1b(
	input A,
	input B,
	input Ctrl,
	input Ci,
	output S,
	output Co
    );
	
	wire B_n;
	assign B_n = B ^ Ctrl;
	Adder1b my_Adder1b(
		.A (A),
		.B (B_n),
		.Ci (Ci),
		.S (S),
		.Co (Co)
	);
	
endmodule
