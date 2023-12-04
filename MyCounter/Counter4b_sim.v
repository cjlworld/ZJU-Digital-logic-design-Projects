`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:24:10 11/27/2023
// Design Name:   Counter4b
// Module Name:   C:/Users/cjlwo/Desktop/ISE/MyCounter/Counter4b_sim.v
// Project Name:  MyCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Counter4b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Counter4b_sim;

	// Inputs
	reg clk;

	// Outputs
	wire Qa;
	wire Qb;
	wire Qc;
	wire Qd;
	wire Rc;

	// Instantiate the Unit Under Test (UUT)
	Counter4b uut (
		.clk(clk), 
		.Qa(Qa), 
		.Qb(Qb), 
		.Qc(Qc), 
		.Qd(Qd), 
		.Rc(Rc)
	);

	initial forever begin
		clk = 1'b0; #100;
		clk = 1'b1; #100;
	end
endmodule

