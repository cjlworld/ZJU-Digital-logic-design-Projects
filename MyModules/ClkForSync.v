`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:02:15 12/12/2023 
// Design Name: 
// Module Name:    CLK_FOR_LED16 
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
module ClkForSync(
	input wire clk,
	output reg clk_for_sync
);
	reg [31:0] cnt;
	
	initial begin
		cnt = 31'b0;
	end
	
	always @(posedge clk) begin
		if (cnt[11:1] == 11'b0000_0000_000) begin
			clk_for_sync <= 1;
		end else begin
			clk_for_sync <= 0;
		end
		cnt <= cnt + 1'b1;
	end
endmodule
