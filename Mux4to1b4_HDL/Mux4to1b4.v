`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:12:11 11/06/2023 
// Design Name: 
// Module Name:    Mux4to1b4 
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
module Mux4to1b4(
    input [3:0] I0,
    input [3:0] I1,
    input [3:0] I2,
    input [3:0] I3,
    input [1:0] s,
    output [3:0] o
    );

    wire [3:0] D;
    Mux4to1 uut(
        .s (s),
        .D (D)
    );

    assign o[0] = (D[0] && I0[0]) || (D[1] && I1[0]) || (D[2] && I2[0]) || (D[3] && I3[0]);
    assign o[1] = (D[0] && I0[1]) || (D[1] && I1[1]) || (D[2] && I2[1]) || (D[3] && I3[1]);
    assign o[2] = (D[0] && I0[2]) || (D[1] && I1[2]) || (D[2] && I2[2]) || (D[3] && I3[2]);
    assign o[3] = (D[0] && I0[3]) || (D[1] && I1[3]) || (D[2] && I2[3]) || (D[3] && I3[3]);
endmodule
