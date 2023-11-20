// Verilog test fixture created from schematic C:\Users\cjlwo\Desktop\ISE\MyLATCHS\MS_FLIPFLOP.sch - Mon Nov 20 17:06:39 2023

`timescale 1ns / 1ps

module MS_FLIPFLOP_MS_FLIPFLOP_sch_tb();

// Inputs
   reg C;
   reg S;
   reg R;

// Output
   wire Q;
   wire Qbar;

// Bidirs

// Instantiate the UUT
   MS_FLIPFLOP UUT (
		.C(C), 
		.S(S), 
		.R(R), 
		.Q(Q), 
		.Qbar(Qbar)
   );
// Initialize Inputs
	initial begin
		R=1;S=0; #50;
		R=0;S=0; #50;
		R=0;S=1; #50;
		R=0;S=0; #50;
		R=0;S=0; #20;
		R=1;S=0; #5;
		R=0;S=0; #25;
	end
	
	always begin // ²úÉúÊ±ÖÓ
		C=0;#20;
		C=1;#20;
	end
endmodule
