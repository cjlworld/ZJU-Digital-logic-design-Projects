`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:33:38 12/12/2023 
// Design Name: 
// Module Name:    CreateNumByBtn 
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
module CreateNumByBtn(
	input wire clk_500ms,
	input wire [1:0] btn,
	output reg [3:0] num
);
	
	always @(posedge clk_500ms) begin
		if (btn[0] ^ btn[1]) begin 
			if (btn[0]) begin
				num <= num - 1;
			end else begin
				num <= num + 1;
			end
		end 
	end
endmodule
