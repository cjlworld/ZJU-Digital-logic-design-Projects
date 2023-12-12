`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:49:07 12/11/2023
// Design Name:   ShiftReg8b
// Module Name:   C:/Users/cjlwo/Desktop/ISE/ShiftReg8b/ShfitReg8b_sim.v
// Project Name:  ShiftReg8b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ShiftReg8b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ShfitReg8b_sim;

	// Inputs
	reg clk;
	reg S_L;
	reg s_in;
	reg [7:0] p_in;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	ShiftReg8b uut (
		.clk(clk), 
		.S_L(S_L), 
		.s_in(s_in), 
		.p_in(p_in), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		S_L = 0;
		s_in = 0;
		p_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		S_L = 0;
		s_in = 1;
		p_in =0;
		#200;
		S_L = 1;
		s_in = 0;
		p_in = 8'b0101_0101;
		#500;
	end
	
	always begin
		clk = 0; #20;
		clk = 1; #20;
	end
      
endmodule

