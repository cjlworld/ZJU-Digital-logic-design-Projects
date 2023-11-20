`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:19 11/13/2023 
// Design Name: 
// Module Name:    AddSub4b 
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
// Ctrl = 1 Îª¼õ·¨
module AddSub4b(
	input Ctrl,
	input [3:0] A,
	input [3:0] B,
	output [3:0] S,
	output Co
    );
	
	wire C_1, C_2, C_3;
	AddSub1b my_AddSub1b_0(
		.A (A[0]),
		.B (B[0]),
		.Ctrl(Ctrl),
		.Ci (Ctrl),
		.S (S[0]),
		.Co (C_1)
	);
	
	AddSub1b my_AddSub1b_1(
		.A (A[1]),
		.B (B[1]),
		.Ctrl(Ctrl),
		.Ci (C_1),
		.S (S[1]),
		.Co (C_2)
	);
	
	AddSub1b my_AddSub1b_2(
		.A (A[2]),
		.B (B[2]),
		.Ctrl(Ctrl),
		.Ci (C_2),
		.S (S[2]),
		.Co (C_3)
	);
	
	AddSub1b my_AddSub1b_3(
		.A (A[3]),
		.B (B[3]),
		.Ctrl(Ctrl),
		.Ci (C_3),
		.S (S[3]),
		.Co (Co)
	);
	
endmodule
