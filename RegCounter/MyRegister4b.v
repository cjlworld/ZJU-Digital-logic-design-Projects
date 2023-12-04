`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:13 12/04/2023 
// Design Name: 
// Module Name:    MyRegister4b 
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
module MyRegister4b(
	input wire clk,
	input wire Load,
	input wire [3:0] IN,
	output wire [3:0] OUT
);
	reg [3:0] num;
	assign OUT = num;
	
	initial begin
		num = 4'b0000;
	end 
	
	always @ (posedge clk) begin 
		if(Load) begin
			num <= IN;
		end
	end 
endmodule
