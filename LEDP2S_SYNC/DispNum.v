`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:56:03 11/06/2023 
// Design Name: 
// Module Name:    DispNum 
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
module DispNum(
	input [15:0] HEXS,   // �ĸ� ��λ����������16���ƣ�
	input [3:0] LES,     // ��Ӧλ�������Ƿ���ʾ 1 Ϊ��ʾ
	input [3:0] points,  // ��Ӧλ��С�����Ƿ���ʾ 1 Ϊ��ʾ
	input clk,           // ����ʱ��
	input RST,			   // �Ƿ����ã����� 0
	output [3:0] AN,     // ����������ϵģ��������ĵ����ĸ�����
	output [7:0] SEGMENT // ����������ϵģ������������ֵĶ�Ӧ�� LED �ƹ�
);
	wire [31:0] clkd;
	clkdiv my_clkdiv(
		.clk (clk),
		.rst (RST),
		.clkdiv (clkd)
	);
		
	wire [3:0] HEX;
	wire p;
	wire LE;
	
	DisplaySync my_display_sync(
		.Hexs (HEXS),
		.Point (points),
		.Les (~LES),
		.Scan (clkd[18:17]),
		.Hex (HEX),
		.AN (AN),
		.p (p),
		.LE (LE)
	);
	
	MyMC14495 my_MyMC14495 (
		.D0 (HEX[0]),
		.D1 (HEX[1]),
		.D2 (HEX[2]),
		.D3 (HEX[3]),
		.point (p),
		.LE (LE),
		.p (SEGMENT[7]),
		.a (SEGMENT[0]),
		.b (SEGMENT[1]),
		.c (SEGMENT[2]),
		.d (SEGMENT[3]),
		.e (SEGMENT[4]),
		.f (SEGMENT[5]),
		.g (SEGMENT[6])
	);
	
endmodule
