`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:29:22 10/30/2023 
// Design Name: 
// Module Name:    MyMC14495 
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
module MyMC14495(
    input D0,
    input D1,
    input D2,
    input D3,
    input point,
    input LE,
    output reg p,
    output reg a,
    output reg b,
    output reg c,
    output reg d,
    output reg e,
    output reg f,
    output reg g
);

// 将 D3D2D1D0 转换为一个 4 位的二进制数
wire [3:0] hexValue;
assign hexValue = {D3, D2, D1, D0};

// 根据输入的十六进制数和 BI/LE 信号生成输出
always @(hexValue, point, LE) begin
    case(hexValue)
			4'b0000: {a, b, c, d, e, f, g} = 8'b0000001;
			4'b0001: {a, b, c, d, e, f, g} = 8'b1001111;
			4'b0010: {a, b, c, d, e, f, g} = 8'b0010010;
			4'b0011: {a, b, c, d, e, f, g} = 8'b0000110;
			4'b0100: {a, b, c, d, e, f, g} = 8'b1001100;
			4'b0101: {a, b, c, d, e, f, g} = 8'b0100100;
			4'b0110: {a, b, c, d, e, f, g} = 8'b0100000;
			4'b0111: {a, b, c, d, e, f, g} = 8'b0001111;
			4'b1000: {a, b, c, d, e, f, g} = 8'b0000000;
			4'b1001: {a, b, c, d, e, f, g} = 8'b0000100;
			4'b1010: {a, b, c, d, e, f, g} = 8'b0001000;
			4'b1011: {a, b, c, d, e, f, g} = 8'b1100000;
			4'b1100: {a, b, c, d, e, f, g} = 8'b0110001;
			4'b1101: {a, b, c, d, e, f, g} = 8'b1000010;
			4'b1110: {a, b, c, d, e, f, g} = 8'b0110000;
			4'b1111: {a, b, c, d, e, f, g} = 8'b0111000;
        default: {a, b, c, d, e, f, g} = 8'b0000000;
    endcase
	 
	 p = point;
    if (LE == 1) begin
        {p, a, b, c, d, e, f, g} = 8'b11111111;
    end
end

endmodule
