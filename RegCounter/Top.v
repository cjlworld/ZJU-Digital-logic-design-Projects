`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:45 12/04/2023 
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
	output wire [3:0] AN,
	output wire [7:0] SEGMENT
);

	wire Load_A, Load_B, Load_C, Co;
	wire [3:0] A, A_IN, A1;
	wire [31:0] clk_div;
	
	wire [3:0] C_IN, C, C1;
	wire [3:0] B_IN, B, B1;
	
	LoadGen load_gen_A(
		.clk (clk), 
		.clk_1ms (clk_div[17]), 
		.btn_in (SW[2]),
		.Load_out (Load_A) // �Ĵ��� A �� Load �ź�
	); 
	
	LoadGen load_gen_C(
		.clk (clk), 
		.clk_1ms (clk_div[17]), 
		.btn_in (SW[4]),
		.Load_out (Load_C) // �Ĵ��� C �� Load �ź�
	); 
	
	LoadGen load_gen_B(
		.clk (clk), 
		.clk_1ms (clk_div[17]), 
		.btn_in (SW[3]),
		.Load_out (Load_B) // �Ĵ��� B �� Load �ź�
	);
	
	MyRegister4b RegA(
		.clk(clk), 
		.IN(A_IN), 
		.Load(Load_A), 
		.OUT(A)
	);
	
	MyRegister4b RegC(
		.clk(clk), 
		.IN(C_IN), 
		.Load(Load_C), 
		.OUT(C)
	);
	
	MyRegister4b RegB(
		.clk(clk), 
		.IN(B_IN), 
		.Load(Load_B), 
		.OUT(B)
	);
	
	clkdiv m3(clk, 1'b0, clk_div);
	
	AddSub4b my_addsub4b_A(
		.A (A), 
		.B (4'b0001), 
		.Ctrl (SW[0]), 
		.S (A1) // ����/�Լ��߼�
	);
	
	AddSub4b my_addsub4b_B(
		.A (B), 
		.B (4'b0001), 
		.Ctrl (SW[1]), 
		.S (B1) // ����/�Լ��߼�
	);
	
	wire [3:0] mux_out;
	
	assign mux_out = ((SW[8] == 1'b1) ? C : ((SW[7] == 1'b1) ? B : A));
		
	assign A_IN = (SW[15] == 1'b0) ? A1 : mux_out; // 2ѡ1��·����������λ�Ĵ�����ֵ
	assign B_IN = (SW[15] == 1'b0) ? B1 : mux_out; // 2ѡ1��·����������λ�Ĵ�����ֵ
	
	wire [3:0] C_IN_0, C_IN_1;
	
	assign C_IN_1 = mux_out;
	
	myALU my_ALU( 
		.A (A),
		.B (B),
		.S (SW[6:5]),
		.C (C_IN_0),
		.Co (Co)
	);
	
	assign C_IN = (SW[15] == 1'b0) ? C_IN_0 : C_IN_1;
	
	DispNum m8(
		.clk (clk), 
		.HEXS ({A, B, C, mux_out}), 
		.LES(4'b0), 
		.points(4'b0), 
		.RST(1'b0), 
		.AN(AN), 
		.Segment(SEGMENT)
	);
endmodule
