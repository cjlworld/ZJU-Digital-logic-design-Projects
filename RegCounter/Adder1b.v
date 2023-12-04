`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:51 11/13/2023 
// Design Name: 
// Module Name:    Adder1b 
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
module Adder1b(
	input A, 
	input B,
	input Ci,
	output S,
	output Co
    );
	
	assign S = A ^ B ^ Ci;
	assign Co = (A & B) | (B & Ci) | (A & Ci);
endmodule
