`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:08 12/18/2023 
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
	input wire rst,
	
	output wire [3:0] AN,
	output wire [7:0] SEGMENT,
	
	output wire SEG_CLK,
	output wire SEG_CLR,
	output wire SEG_DO,
	output wire SEG_EN,
	
	output wire LED_CLK,
	output wire LED_CLR,
	output wire LED_DO,
	output wire LED_EN
);

	wire [31:0] hexs;
	wire clk_100ms_wire;
	
	clk_100ms my_clk_100ms(
		.clk (clk),
		.clk_ls (clk_100ms_wire)
	);
		
	CreateClock my_clock(
		.clk_1s (clk_100ms_wire),
		.rst (rst),
		.hexs (hexs[23:0])
	);
		
	DispNum my_dispnum(
		.HEXS (hexs[15:0]),
		.LES (4'b1111),
		.points (4'b0100),
		.clk (clk),
		.RST (1'b0),
		.AN (AN),
		.SEGMENT (SEGMENT)
	);
	
	SEG_DRV_SYNC my_seg_drv(
		.HEXS (hexs[31:0]),
		.LES (8'b00111111),
		.POINTS (8'b00010100),
		.clk (clk),
		.SEG_CLK (SEG_CLK),
		.SEG_CLR (SEG_CLR),
		.SEG_DO (SEG_DO),
		.SEG_EN (SEG_EN)
	);
	
	LED_DRV_SYNC my_led_dgv(
		.HEXS (hexs[15:0]),
		.clk (clk),
		.LED_CLK (LED_CLK),
		.LED_CLR (LED_CLR),
		.LED_DO (LED_DO),
		.LED_EN (LED_EN)
	);
endmodule
