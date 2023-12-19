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

// 16 ���Ƽ�����
module My74LS161(
	input wire CP, // clk
	input wire CR, // �첽���� CR = 1, ȫ����, �͵�ƽ��Ч, ������
	input wire Ld, // Ld = 1, ���� RESET Ϊ D, �͵�ƽ��Ч, ������
	input wire CTT, // ENABLE
	input wire CTP, // ENABLE, ���� ENABLE ��Ϊ 1 �ſ��Լ���
	input wire [3:0] D, // RESET ֵ
	output wire [3:0] Q, // �������
	output wire CO // ��λ���
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
