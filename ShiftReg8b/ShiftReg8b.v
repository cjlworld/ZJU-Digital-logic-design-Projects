`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:41:11 12/11/2023 
// Design Name: 
// Module Name:    ShiftReg8b 
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
module ShiftReg8b(
  input wire clk, // 时钟
  input wire S_L,	// S_L = 0 为接受串行输入, S_L = 1 为接受并行输入
  input wire s_in, // 串行输入，先输给高位，高位往低位移，因此先赋值的会到低位
  input wire [7:0] p_in, // 并行输入
  output wire [7:0] Q // 输出
);

  reg [7:0] reg_data;
	
  initial begin 
    reg_data = 8'b00000000;
  end
  
  always @(posedge clk) begin
    if (S_L) begin
      reg_data <= p_in;
    end else begin
		// 串行输入
      reg_data <= {s_in, reg_data[7:1]};
    end
  end

  // 输出 Q
  assign Q = reg_data;
  
endmodule