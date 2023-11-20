`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:26:50 11/05/2023 
// Design Name: 
// Module Name:    D_74LS138 
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

module D_74LS138(C, B, A, G, G2A,G2B, Y);
	input wire A, B, C, G, G2A, G2B;
	output wire [7:0] Y;
	not node_0_0(A_n, A),
	node_0_1(B_n, B),
	node_0_2(C_n, C),
	node_0_3(G_n, G);
	and node_1_0(D0, B_n, A_n),
	node_1_1(D1, B_n, A ),
	node_1_2(D2, B, A_n),
	node_1_3(D3, B, A );
	nor node_1_4(EN, G_n, G2A, G2B);
	nand node_2_0(Y[0], EN, D0, C_n),
	node_2_1(Y[1], EN, D1, C_n),
	node_2_2(Y[2], EN, D2, C_n),
	node_2_3(Y[3], EN, D3, C_n),
	node_2_4(Y[4], EN, D0, C ),
	node_2_5(Y[5], EN, D1, C ),
	node_2_6(Y[6], EN, D2, C ),
	node_2_7(Y[7], EN, D3, C );
endmodule
