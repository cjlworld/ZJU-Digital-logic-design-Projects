`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:07:28 11/13/2023 
// Design Name: 
// Module Name:    myALU 
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
module myALU(
  input [3:0] A,
  input [3:0] B,
  input [1:0] S,
  output reg [3:0] C,
  output reg Co
);
	
	reg [3:0] result; // Create a wire for intermediate result
	wire [3:0] C0, C1;
	wire Co0, Co1;
  AddSub4b my_AddSub4b_1(
	 .Ctrl (1'b1),
	 .A (A),
	 .B (B),
	 .S (C1),
	 .Co (Co1)
  );
  AddSub4b my_AddSub4b_0(
	 .Ctrl (1'b0),
	 .A (A),
	 .B (B),
	 .S (C0),
	 .Co (Co0)
  );
  always @(*) begin
    case(S)
      2'b00: begin  // Addition
			result = C0;
			Co = Co0;
      end
      2'b01: begin  // Subtraction
			result = C1;
			Co = Co1;
      end
      2'b10: begin  // Bitwise AND
        result = A & B;
        Co = 1'b0;
      end
      2'b11: begin  // Bitwise OR
        result = A | B;
        Co = 1'b0;
      end
      default: begin
        // Handle any other cases, if needed
      end
    endcase
	 C = result; // Assign the result to the output
  end

endmodule

