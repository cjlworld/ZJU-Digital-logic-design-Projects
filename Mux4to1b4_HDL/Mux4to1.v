`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:26 11/06/2023 
// Design Name: 
// Module Name:    Mux4to1 
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
module Mux4to1(
    input [1:0] s,
    output [3:0] D
	);
    assign D[0] = (s == 2'b00) ? 1'b1 : 1'b0;
    assign D[1] = (s == 2'b01) ? 1'b1 : 1'b0;
    assign D[2] = (s == 2'b10) ? 1'b1 : 1'b0;
    assign D[3] = (s == 2'b11) ? 1'b1 : 1'b0;
endmodule