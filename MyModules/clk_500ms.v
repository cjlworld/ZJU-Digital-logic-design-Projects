`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:39:19 12/12/2023 
// Design Name: 
// Module Name:    clk_500ms 
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:49 11/27/2023 
// Design Name: 
// Module Name:    clk_100ms 
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
module clk_500ms(
	input wire clk,
	output reg clk_ls
);
	reg [31:0] cnt;
	always @ (posedge clk) begin
		if (cnt < 250_000_00) begin
			cnt <= cnt + 1;
		end 
		else begin
			cnt <= 0;
			clk_ls <= ~clk_ls;
		end
	end
endmodule
