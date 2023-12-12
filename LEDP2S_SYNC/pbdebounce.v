`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:50 11/13/2023 
// Design Name: 
// Module Name:    pbdebounce 
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
module pbdebounce( // 对按钮进行过滤，只在连续 8ms 为同一个值的时候改变状态
	input wire clk_1ms,
	input wire btn, 
	output reg pbreg
);
	reg [7:0] pbshift = 8'b0;
	
	initial begin
		pbreg = 1'b0;
	end
	
	always @(posedge clk_1ms) begin
		pbshift = pbshift << 1;
		pbshift[0] = btn;
		if (pbshift == 8'b0) begin
			pbreg = 0;
		end 
		if (pbshift == 8'hFF) begin
			pbreg = 1;	
		end 
	end
endmodule