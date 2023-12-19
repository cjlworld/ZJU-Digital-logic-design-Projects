`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:00:47 12/18/2023 
// Design Name: 
// Module Name:    My74LS161 
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

// 16 进制计数器
module My74LS161(
	input wire CP, // clk
	input wire CR, // 异步清零 CR = 1, 全清零, 低电平有效, 最优先
	input wire Ld, // Ld = 1, 并行 RESET 为 D, 低电平有效, 次优先
	input wire CTT, // ENABLE
	input wire CTP, // ENABLE, 两个 ENABLE 都为 1 才可以计数
	input wire [3:0] D, // RESET 值
	output wire [3:0] Q, // 计数输出
	output wire CO // 进位输出
);
	reg [3:0] c;
	reg co;
	
	initial begin 
		c = 4'b0000;
		co = 1'b0;
	end
	
	assign Q[0] = CR ? (1'b0) : (Ld ? (D[0]) : (c[0]));
	assign Q[1] = CR ? (1'b0) : (Ld ? (D[1]) : (c[1]));
	assign Q[2] = CR ? (1'b0) : (Ld ? (D[2]) : (c[2]));
	assign Q[3] = CR ? (1'b0) : (Ld ? (D[3]) : (c[3]));
	assign CO = CR ? (1'b0) : (Ld ? 1'b0 : co);
	
	always @(posedge CP) begin
		if (CTT & CTP) begin
			if (Q == 4'b1111) begin
				c <= 4'b0000;
				co <= 1'b1;
			end else begin
				c <= Q + 4'b0001;
				co <= 1'b0;
			end
		end
	end 
endmodule
