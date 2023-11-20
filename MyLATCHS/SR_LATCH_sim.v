// Verilog test fixture created from schematic C:\Users\cjlwo\Desktop\ISE\MyLATCHS\SR_LATCH.sch - Mon Nov 20 16:22:54 2023

`timescale 1ns / 1ps

module SR_LATCH_SR_LATCH_sch_tb();

// Inputs

// Output

// Bidirs

// Instantiate the UUT
	reg R, S;
	wire Q, Qbar;
	
   SR_LATCH UUT (
		.R (R),
		.S (S),
		.Q (Q),
		.Qbar (Qbar)
   );
// Initialize Inputs
   initial begin
		R=1;S=1; #50;
		R=1;S=0; #50;
		R=1;S=1; #50;
		R=0;S=1; #50;
		R=1;S=1; #50;
		R=0;S=0; #50;
		R=1;S=1; #50;
	end
endmodule
