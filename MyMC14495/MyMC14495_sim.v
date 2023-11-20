`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:48:23 10/30/2023
// Design Name:   MyMC14495
// Module Name:   C:/Users/cjlwo/Desktop/ISE/MyMC14495/MyMC14495_sim.v
// Project Name:  MyMC14495
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MyMC14495
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MyMC14495_sim;

	// Inputs
	reg D0;
	reg D1;
	reg D2;
	reg D3;
	reg point;
	reg LE;

	// Outputs
	wire p;
	wire a;
	wire b;
	wire c;
	wire d;
	wire e;
	wire f;
	wire g;

	// Instantiate the Unit Under Test (UUT)
	MyMC14495 uut (
		.D0(D0), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3), 
		.point(point), 
		.LE(LE), 
		.p(p), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g)
	);

integer i;
initial begin
	D3 = 0;
	D2 = 0;
	D1 = 0;
	D0 = 0;
	LE = 0;
	point = 0;
	

for (i=0; i<=15;i=i+1) begin
		#50;
		{D3,D2,D1,D0}=i;
		point = i;
	end
		
	#50;
	LE = 1;
end

      
endmodule

