// Verilog test fixture created from schematic C:\Users\cjlwo\Desktop\ISE\MyLATCHS\D_FLIPFLOP.sch - Mon Nov 20 17:23:08 2023

`timescale 1ns / 1ps

module D_FLIPFLOP_D_FLIPFLOP_sch_tb();

// Inputs
   reg Sbar;
   reg C;
   reg Rbar;
   reg D;

// Output
   wire Q;
   wire Qbar;

// Bidirs

// Instantiate the UUT
   D_FLIPFLOP UUT (
		.Q(Q), 
		.Qbar(Qbar), 
		.Sbar(Sbar), 
		.C(C), 
		.Rbar(Rbar), 
		.D(D)
   );
// Initialize Inputs
	initial begin
		Sbar = 1; 
		Rbar = 1;
		D = 0; #150;
		D = 1; #150; 
	end
	always begin
		C=0; #50;
		C=1; #50;
	end
endmodule
