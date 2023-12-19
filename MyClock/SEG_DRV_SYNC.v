`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:37 12/12/2023 
// Design Name: 
// Module Name:    SEG_DRV_SYNC 
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
module SEG_DRV_SYNC(
	input wire [31:0] HEXS, // 8 位 16 进制数
	input wire [7:0] LES,
	input wire [7:0] POINTS,
	input wire clk,
	output wire SEG_CLK,
	output wire SEG_CLR,
	output wire SEG_DO,
	output wire SEG_EN
);	
	// 产生输出
	wire [63:0] data;
	
	genvar i;
	generate
		for (i = 0; i < 8; i = i + 1) begin : gen_block
			MyMC14495 instance_i (
				.hex (HEXS[4*i+3:4*i]),
				.LE (~LES[i]),
				.point (POINTS[i]),
				.p (data[8*i+7]),
				.g (data[8*i+6]),
				.f (data[8*i+5]),
				.e (data[8*i+4]),
				.d (data[8*i+3]),
				.c (data[8*i+2]),
				.b (data[8*i+1]),
				.a (data[8*i+0])
			);
		end
	endgenerate
	
	reg [5:0] top;
	reg [63:0] temp;
	reg finished;
	reg out;
	
	wire load;
	
	ClkForSync my_clk_for_sync(
		.clk (clk),
		.clk_for_sync (load)
	);
	
	assign SEG_CLK = clk | finished;
	assign SEG_CLR = 1;
	assign SEG_EN = 1;
	assign SEG_DO = out;
	
	always @(posedge clk) begin
		if (load) begin 
			top <= 6'b111111;
			out <= data[63];
			temp <= {data[62:0], 1'b0};
			finished <= 0;
		end else begin
			if (~finished) begin
				out <= temp[63];
				temp <= {temp[62:0], 1'b0};
				
				if (top == 6'b0) begin 
					finished <= 1;
				end else begin
					top <= top - 1'b1;
				end
			end 
		end
	end
endmodule
