`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:47:38 11/06/2023 
// Design Name: 
// Module Name:    CreateNumber 
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

module CreateNumber (
  input wire [1:0] btn,
  input wire [1:0] sw,
  output reg [15:0] num
);

  wire [3:0] A, B;
  initial num <= 16'b1010_1011_1100_1101; // display "ABCD"

  AddSub4b my_AddSub4b_A (
    .Ctrl(sw[0]),
    .A(num[3:0]),
    .B(4'b0001),
    .S(A)
  );

  AddSub4b my_AddSub4b_B (
    .Ctrl(sw[1]),
    .A(num[7:4]),
    .B(4'b0001),
    .S(B)
  );

  always @(posedge btn[0]) num[3:0] <= A;
  always @(posedge btn[1]) num[7:4] <= B;

endmodule

