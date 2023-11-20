`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:10 11/05/2023 
// Design Name: 
// Module Name:    D_74LS138_Test 
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
module D_74LS138_Test(
	input S1, S2, S3, S4, S5, S6,
	output [7:0] LED
    );

	D_74LS138 uut(
		.C (S3),
		.B (S2),
		.A (S1),
		.G2A (S6),
		.G2B (S5),
		.G (S4),
		.Y (LED)
	);
endmodule
