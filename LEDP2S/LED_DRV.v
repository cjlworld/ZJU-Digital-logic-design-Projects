`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:14:06 12/11/2023 
// Design Name: 
// Module Name:    LED_DRV 
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
module LED_DRV( // 16 个 LED 灯的驱动
	input wire [15:0] HEXS, // 数字，从高到低
	input wire load,        // pulse（上下） 一次，load 一次，可以接入一个按钮，也可以接入一个间隔长的时钟
	input wire clk,         // 时钟
	output wire LED_CLK,    // LED_CLK: LED 的时钟
	output wire LED_CLR,    // LED_CLR: LED_CLR = 0 全亮
	output wire LED_DO,		// LED_DO: 通信串口
	output wire LED_EN      // LED_EN: Enable
);
	reg [3:0] top;
	reg [15:0] temp;
	reg start;
	reg finished;
	reg out;
	
	assign LED_CLK = clk | finished;
	// load = 0, LED_CLK === 1
	assign LED_CLR = 1;
	assign LED_EN = 1;
	assign LED_DO = out;
	
	initial begin 
		top = 4'b1111;
		temp = 16'b0000000000000000;
		finished = 1;
		out = 1;
	end
	
	always @(posedge clk) begin
		if (load) begin 
			top <= 4'b1111;
			out <= ~HEXS[15];
			temp <= {HEXS[14:0], 1'b0};
			finished <= 0;
		end else begin
			if (~finished) begin
				out <= ~temp[15];
				temp <= {temp[14:0], 1'b0};
				
				if (top == 4'b0000) begin 
					finished <= 1;
				end else begin
					top <= top - 1'b1;
				end
			end 
		end
	end
endmodule
