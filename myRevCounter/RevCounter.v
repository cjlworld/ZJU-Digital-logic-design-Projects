`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:31 11/27/2023 
// Design Name: 
// Module Name:    RevCounter 
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
module RevCounter(
	input wire clk,
	input wire s,
	output reg [15:0] cnt,
	output wire Rc
);
	initial cnt = 0;
	assign Rc = (~s & (~|cnt)) | (s & (&cnt));
	always @ (posedge clk) begin
		if (s) begin
			cnt <= cnt + 1;
		end 
		else begin
			cnt <= cnt - 1;
		end
	end
endmodule
