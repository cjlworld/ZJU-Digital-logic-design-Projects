`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:20:24 12/18/2023
// Design Name:   My74LS161
// Module Name:   C:/Users/cjlwo/Desktop/ISE/My74LS161/My74LS161_sim.v
// Project Name:  My74LS161
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: My74LS161
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module My74LS161_sim;

  // Inputs
  reg CP, CR, Ld, CTT, CTP;
  reg [3:0] D;

  // Outputs
  wire [3:0] Q;
  wire CO;

  // Instantiate the module
  My74LS161 uut (
    .CP(CP),
    .CR(CR),
    .Ld(Ld),
    .CTT(CTT),
    .CTP(CTP),
    .D(D),
    .Q(Q),
    .CO(CO)
  );

  // Clock generation
  initial begin
    CP = 0;
    forever #5 CP = ~CP;
  end

  // Stimulus
  initial begin
    // Initialize inputs
    CR = 1'b0;
    Ld = 1'b0;
    CTT = 1'b0;
    CTP = 1'b0;
    D = 4'b0000;

    // Apply stimulus
    #10 Ld = 1'b1;  // Load the value
    #10 D = 4'b1101; // Set a value

    #10 Ld = 1'b0;  // Release the load

    #20 CTT = 1'b1; // Enable counting
    #20 CTP = 1'b1; // Enable counting

    #1000 $finish;  // Finish simulation after some time
  end

  // Display output
  always @(posedge CP) begin
    $display("Time=%t CP=%b CR=%b Ld=%b CTT=%b CTP=%b D=%b Q=%b CO=%b",
             $time, CP, CR, Ld, CTT, CTP, D, Q, CO);
  end

endmodule

