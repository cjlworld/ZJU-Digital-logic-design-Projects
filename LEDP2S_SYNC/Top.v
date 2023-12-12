`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:13:49 12/11/2023 
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
	input wire [3:0] BTN, // btn °å BTNX4Y0-BTNX4Y3
	
	// LED 
	output wire LED_CLK,
	output wire LED_CLR,
	output wire LED_DO,
	output wire LED_EN,
	
	// NUM 4H
	output wire [3:0] AN,
	output wire [7:0] SEGMENT,
	
	// btn °å Æô¶¯ X4 ÐÐ £¨BTNX4 = 1£©
	output wire BTNX4
);

	assign BTNX4 = 1'b0;
	
	wire [15:0] num;
	
	wire [3:0] bounced_btn;
	wire [31:0] clk_btn;
	
	clkdiv my_clk_for_btn(
		.clk (clk),
		.rst (1'b0),
		.clkdiv (clk_btn)
	);
	
	pbdebounce my_bounce_btn_0(
		.clk_1ms (clk_btn[16]),
		.btn (BTN[0]),
		.pbreg (bounced_btn[0])
	);
	
	pbdebounce my_bounce_btn_1(
		.clk_1ms (clk_btn[16]),
		.btn (BTN[1]),
		.pbreg (bounced_btn[1])
	);
	
	pbdebounce my_bounce_btn_2(
		.clk_1ms (clk_btn[16]),
		.btn (BTN[2]),
		.pbreg (bounced_btn[2])
	);
	
	pbdebounce my_bounce_btn_3(
		.clk_1ms (clk_btn[16]),
		.btn (BTN[3]),
		.pbreg (bounced_btn[3])
	);
	
	CreateNumber my_btn_control_num_unit(
		.btn (bounced_btn),
		.num (num)
	);
	
	DispNum my_display_4Hexs(
		.HEXS (num),
		.LES (4'b1111),
		.points (4'b1111),
		.clk (clk),
		.RST (1'b0),
		.AN (AN),
		.SEGMENT (SEGMENT)
	);
	
	LED_DRV_SYNC my_LED_sync (
		.HEXS (num),
		.clk (clk),
		.LED_CLK (LED_CLK),
		.LED_CLR (LED_CLR),
		.LED_DO (LED_DO),
		.LED_EN (LED_EN)
	);
endmodule
