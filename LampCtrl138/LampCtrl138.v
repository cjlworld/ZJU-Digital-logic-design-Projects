`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:52:18 11/06/2023 
// Design Name: 
// Module Name:    LampCtrl138 
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
module LampCtrl138(
	input S1, S2, S3,
	output F
);
	wire [7:0] Y;
	D_74LS138 my_D_74LS138(
		.A (S1),
		.B (S2),
		.C (S3),
		.G (1'b1),
		.G2A (1'b0),
		.G2B (1'b0),
		.Y (Y)
	);
	assign F = !(Y[1] && Y[2] && Y[4] && Y[7]);
endmodule
