`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:28:20 11/05/2023
// Design Name:   D_74LS138
// Module Name:   C:/Users/cjlwo/Desktop/ISE/D_74LS138_HDL/D_74LS138_sim.v
// Project Name:  D_74LS138_HDL
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_74LS138
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module D_74LS138_sim;

	// Inputs
	reg C;
	reg B;
	reg A;
	reg G;
	reg G2A;
	reg G2B;

	// Outputs
	wire [7:0] Y;

	// Instantiate the Unit Under Test (UUT)
	D_74LS138 uut (
		.C(C), 
		.B(B), 
		.A(A), 
		.G(G), 
		.G2A(G2A), 
		.G2B(G2B), 
		.Y(Y)
	);

	integer i;
	initial begin
		C = 0;
		B = 0;
		A = 0;
		G = 1;
		G2A = 0;
		G2B = 0;
		#50;
		for (i=0; i<=7;i=i+1) begin
		{C,B,A} = i;
		#50;
		end
		assign G = 0;
		assign G2A = 0;
		assign G2B = 0;
		#50;
		assign G = 1;
		assign G2A = 1;
		assign G2B = 0;
		#50;
		assign G = 1;
		assign G2A = 0;
		assign G2B = 1;
		#50;
	end
endmodule

