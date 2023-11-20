`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:41:32 11/13/2023
// Design Name:   AddSub4b
// Module Name:   C:/Users/cjlwo/Desktop/ISE/MyAdder/AddSub4b_sim.v
// Project Name:  MyAdder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AddSub4b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AddSub4b_sim;

  // Inputs
  reg Ctrl;
  reg [3:0] A;
  reg [3:0] B;

  // Outputs
  wire [3:0] S;
  wire Co;

  // Instantiate the module to be tested
  AddSub4b uut (
    .Ctrl(Ctrl),
    .A(A),
    .B(B),
    .S(S),
    .Co(Co)
  );

  // Stimulus generation
  initial begin
    // Initialize inputs
    Ctrl = 0; // Set to 0 for addition, 1 for subtraction
    A = 4'b0010; // Your input values here
    B = 4'b0001; // Your input values here
	
    // Add some delay
    #10;

    // Change inputs
    Ctrl = 1; // Set to 0 for addition, 1 for subtraction
    A = 4'b1100; // Your input values here
    B = 4'b1011; // Your input values here

    // Add some delay
    #10;

    // You can continue to provide more test cases here
  end

endmodule
