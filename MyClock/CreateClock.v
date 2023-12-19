`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:03:31 12/18/2023 
// Design Name: 
// Module Name:    CreateClock 
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
module CreateClock(
	input wire clk_1s,
	input wire rst,
	output wire [23:0] hexs
);
	reg [23:0] num;
	assign hexs = num;
	
	always @(posedge clk_1s) begin
		if (rst) begin
			num = 24'h000000;
		end else begin
			if (num[3:0] == 4'd9) begin
				num[3:0] = 4'd0;
				// µÚ¶þÎ»
				if (num[7:4] == 4'd5) begin
					num[7:4] = 4'd0;
					if (num[11:8] == 4'd9) begin
						num[11:8] = 4'd0;
						if (num[15:12] == 4'd5) begin
							num[15:12] = 4'd0;
							
							if (num[19:16] == 4'd9) begin 
								num[19:16] = 4'd0;
								num[23:20] = num[23:20] + 4'd1;
							end else begin
								if (num[23:16] == {4'd2, 4'd3}) begin
									num[23:16] = 8'b0;
								end else begin
									num[23:16] = num[23:16] + 4'd1;
								end
							end
						end else begin
							num[15:12] = num[15:12] + 4'd1;
						end
					end else begin
						num[11:8] = num[11:8] + 4'd1;
					end
					
				end else begin
					num[7:4] = num[7:4] + 4'd1;
				end
				
			end else begin
				num[3:0] = num[3:0] + 4'd1;
			end
			
		end
	end
endmodule
