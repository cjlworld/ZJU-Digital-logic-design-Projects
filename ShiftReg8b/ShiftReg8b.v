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
  input wire clk, // ʱ��
  input wire S_L,	// S_L = 0 Ϊ���ܴ�������, S_L = 1 Ϊ���ܲ�������
  input wire s_in, // �������룬�������λ����λ����λ�ƣ�����ȸ�ֵ�Ļᵽ��λ
  input wire [7:0] p_in, // ��������
  output wire [7:0] Q // ���
);

  reg [7:0] reg_data;
	
  initial begin 
    reg_data = 8'b00000000;
  end
  
  always @(posedge clk) begin
    if (S_L) begin
      reg_data <= p_in;
    end else begin
		// ��������
      reg_data <= {s_in, reg_data[7:1]};
    end
  end

  // ��� Q
  assign Q = reg_data;
  
endmodule