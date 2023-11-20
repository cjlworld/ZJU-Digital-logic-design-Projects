////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Mux4to1b4_synthesis.v
// /___/   /\     Timestamp: Mon Nov 06 16:33:17 2023
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Mux4to1b4.ngc Mux4to1b4_synthesis.v 
// Device	: xc7k160t-1-ffg676
// Input file	: Mux4to1b4.ngc
// Output file	: C:\Users\cjlwo\Desktop\ISE\Mux4to1b4_HDL\netgen\synthesis\Mux4to1b4_synthesis.v
// # of Modules	: 1
// Design Name	: Mux4to1b4
// Xilinx        : D:\Programs\XilinX\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Mux4to1b4 (
I0, I1, I2, I3, s, o
);
  input [3 : 0] I0;
  input [3 : 0] I1;
  input [3 : 0] I2;
  input [3 : 0] I3;
  input [1 : 0] s;
  output [3 : 0] o;
  wire I0_0_IBUF_0;
  wire I0_1_IBUF_1;
  wire I0_2_IBUF_2;
  wire I0_3_IBUF_3;
  wire I1_0_IBUF_4;
  wire I1_1_IBUF_5;
  wire I1_2_IBUF_6;
  wire I1_3_IBUF_7;
  wire I2_0_IBUF_8;
  wire I2_1_IBUF_9;
  wire I2_2_IBUF_10;
  wire I2_3_IBUF_11;
  wire I3_0_IBUF_12;
  wire I3_1_IBUF_13;
  wire I3_2_IBUF_14;
  wire I3_3_IBUF_15;
  wire s_1_IBUF_16;
  wire s_0_IBUF_17;
  wire o_0_OBUF_18;
  wire o_1_OBUF_19;
  wire o_2_OBUF_20;
  wire o_3_OBUF_21;
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \o<0>1  (
    .I0(s_0_IBUF_17),
    .I1(I3_0_IBUF_12),
    .I2(s_1_IBUF_16),
    .I3(I1_0_IBUF_4),
    .I4(I0_0_IBUF_0),
    .I5(I2_0_IBUF_8),
    .O(o_0_OBUF_18)
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \o<1>1  (
    .I0(s_0_IBUF_17),
    .I1(I3_1_IBUF_13),
    .I2(s_1_IBUF_16),
    .I3(I1_1_IBUF_5),
    .I4(I0_1_IBUF_1),
    .I5(I2_1_IBUF_9),
    .O(o_1_OBUF_19)
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \o<2>1  (
    .I0(s_0_IBUF_17),
    .I1(I3_2_IBUF_14),
    .I2(s_1_IBUF_16),
    .I3(I1_2_IBUF_6),
    .I4(I0_2_IBUF_2),
    .I5(I2_2_IBUF_10),
    .O(o_2_OBUF_20)
  );
  LUT6 #(
    .INIT ( 64'hDFD5DAD08F858A80 ))
  \o<3>1  (
    .I0(s_0_IBUF_17),
    .I1(I3_3_IBUF_15),
    .I2(s_1_IBUF_16),
    .I3(I1_3_IBUF_7),
    .I4(I0_3_IBUF_3),
    .I5(I2_3_IBUF_11),
    .O(o_3_OBUF_21)
  );
  IBUF   I0_3_IBUF (
    .I(I0[3]),
    .O(I0_3_IBUF_3)
  );
  IBUF   I0_2_IBUF (
    .I(I0[2]),
    .O(I0_2_IBUF_2)
  );
  IBUF   I0_1_IBUF (
    .I(I0[1]),
    .O(I0_1_IBUF_1)
  );
  IBUF   I0_0_IBUF (
    .I(I0[0]),
    .O(I0_0_IBUF_0)
  );
  IBUF   I1_3_IBUF (
    .I(I1[3]),
    .O(I1_3_IBUF_7)
  );
  IBUF   I1_2_IBUF (
    .I(I1[2]),
    .O(I1_2_IBUF_6)
  );
  IBUF   I1_1_IBUF (
    .I(I1[1]),
    .O(I1_1_IBUF_5)
  );
  IBUF   I1_0_IBUF (
    .I(I1[0]),
    .O(I1_0_IBUF_4)
  );
  IBUF   I2_3_IBUF (
    .I(I2[3]),
    .O(I2_3_IBUF_11)
  );
  IBUF   I2_2_IBUF (
    .I(I2[2]),
    .O(I2_2_IBUF_10)
  );
  IBUF   I2_1_IBUF (
    .I(I2[1]),
    .O(I2_1_IBUF_9)
  );
  IBUF   I2_0_IBUF (
    .I(I2[0]),
    .O(I2_0_IBUF_8)
  );
  IBUF   I3_3_IBUF (
    .I(I3[3]),
    .O(I3_3_IBUF_15)
  );
  IBUF   I3_2_IBUF (
    .I(I3[2]),
    .O(I3_2_IBUF_14)
  );
  IBUF   I3_1_IBUF (
    .I(I3[1]),
    .O(I3_1_IBUF_13)
  );
  IBUF   I3_0_IBUF (
    .I(I3[0]),
    .O(I3_0_IBUF_12)
  );
  IBUF   s_1_IBUF (
    .I(s[1]),
    .O(s_1_IBUF_16)
  );
  IBUF   s_0_IBUF (
    .I(s[0]),
    .O(s_0_IBUF_17)
  );
  OBUF   o_3_OBUF (
    .I(o_3_OBUF_21),
    .O(o[3])
  );
  OBUF   o_2_OBUF (
    .I(o_2_OBUF_20),
    .O(o[2])
  );
  OBUF   o_1_OBUF (
    .I(o_1_OBUF_19),
    .O(o[1])
  );
  OBUF   o_0_OBUF (
    .I(o_0_OBUF_18),
    .O(o[0])
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

