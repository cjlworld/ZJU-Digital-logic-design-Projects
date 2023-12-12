`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:00 12/12/2023 
// Design Name: 
// Module Name:    Top 
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
module Top(
	input wire clk,
	input wire [15:0] SW,
	
	output wire SEG_CLK,
	output wire SEG_CLR,
	output wire SEG_DO,
	output wire SEG_EN
);

	wire [31:0] num;
	wire clk_500;
	clk_500ms my_clk_500ms(
		.clk (clk),
		.clk_ls (clk_500)
	);
	
	genvar i;
	generate 
		for (i = 0; i < 8; i = i + 1) begin : gen_num_block
			CreateNumByBtn my_create_num_by_btn(
				.clk_500ms (clk_500),
				.btn (SW[2*i+1:2*i]),
				.num (num[4*i+3:4*i])
			);
		end
	endgenerate

	SEG_DRV_SYNC my_display_8num_sync(
		.clk (clk),
		.HEXS (num),
		.LES (8'b1111_1111),
		.POINTS (8'b0000_0000),
		.SEG_CLK (SEG_CLK),
		.SEG_CLR (SEG_CLR),
		.SEG_DO (SEG_DO),
		.SEG_EN (SEG_EN)
	);
endmodule
