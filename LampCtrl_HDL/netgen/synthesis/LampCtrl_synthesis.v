////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: LampCtrl_synthesis.v
// /___/   /\     Timestamp: Fri Oct 27 16:41:40 2023
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim LampCtrl.ngc LampCtrl_synthesis.v 
// Device	: xc7k160t-1-ffg676
// Input file	: LampCtrl.ngc
// Output file	: C:\Users\cjlwo\Desktop\ISE\LampCtrl_HDL\netgen\synthesis\LampCtrl_synthesis.v
// # of Modules	: 1
// Design Name	: LampCtrl
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

module LampCtrl (
  clk, S1, S2, S3, F, LED
);
  input clk;
  input S1;
  input S2;
  input S3;
  output F;
  output [6 : 0] LED;
  wire clk_BUFGP_0;
  wire S1_IBUF_1;
  wire S2_IBUF_2;
  wire S3_IBUF_3;
  wire w;
  wire F_OBUF_33;
  wire N0;
  wire LED_0_OBUF_35;
  wire \Mcount_count_cy<1>_rt_116 ;
  wire \Mcount_count_cy<2>_rt_117 ;
  wire \Mcount_count_cy<3>_rt_118 ;
  wire \Mcount_count_cy<4>_rt_119 ;
  wire \Mcount_count_cy<5>_rt_120 ;
  wire \Mcount_count_cy<6>_rt_121 ;
  wire \Mcount_count_cy<7>_rt_122 ;
  wire \Mcount_count_cy<8>_rt_123 ;
  wire \Mcount_count_cy<9>_rt_124 ;
  wire \Mcount_count_cy<10>_rt_125 ;
  wire \Mcount_count_cy<11>_rt_126 ;
  wire \Mcount_count_cy<12>_rt_127 ;
  wire \Mcount_count_cy<13>_rt_128 ;
  wire \Mcount_count_cy<14>_rt_129 ;
  wire \Mcount_count_cy<15>_rt_130 ;
  wire \Mcount_count_cy<16>_rt_131 ;
  wire \Mcount_count_cy<17>_rt_132 ;
  wire \Mcount_count_cy<18>_rt_133 ;
  wire \Mcount_count_cy<19>_rt_134 ;
  wire \Mcount_count_cy<20>_rt_135 ;
  wire \Mcount_count_cy<21>_rt_136 ;
  wire \Mcount_count_cy<22>_rt_137 ;
  wire \Mcount_count_cy<23>_rt_138 ;
  wire \Mcount_count_cy<24>_rt_139 ;
  wire \Mcount_count_cy<25>_rt_140 ;
  wire \Mcount_count_cy<26>_rt_141 ;
  wire \Mcount_count_xor<27>_rt_142 ;
  wire count_0_rstpot_143;
  wire count_1_rstpot_144;
  wire count_2_rstpot_145;
  wire count_3_rstpot_146;
  wire count_4_rstpot_147;
  wire count_5_rstpot_148;
  wire [27 : 0] count;
  wire [27 : 0] Result;
  wire [5 : 0] Mcompar_F_lut;
  wire [5 : 0] Mcompar_F_cy;
  wire [0 : 0] Mcount_count_lut;
  wire [26 : 0] Mcount_count_cy;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(LED_0_OBUF_35)
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_6 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[6]),
    .R(w),
    .Q(count[6])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_7 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[7]),
    .R(w),
    .Q(count[7])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_8 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[8]),
    .R(w),
    .Q(count[8])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_9 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[9]),
    .R(w),
    .Q(count[9])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_10 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[10]),
    .R(w),
    .Q(count[10])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_11 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[11]),
    .R(w),
    .Q(count[11])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_12 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[12]),
    .R(w),
    .Q(count[12])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_13 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[13]),
    .R(w),
    .Q(count[13])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_14 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[14]),
    .R(w),
    .Q(count[14])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_15 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[15]),
    .R(w),
    .Q(count[15])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_16 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[16]),
    .R(w),
    .Q(count[16])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_17 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[17]),
    .R(w),
    .Q(count[17])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_18 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[18]),
    .R(w),
    .Q(count[18])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_19 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[19]),
    .R(w),
    .Q(count[19])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_20 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[20]),
    .R(w),
    .Q(count[20])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_21 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[21]),
    .R(w),
    .Q(count[21])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_22 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[22]),
    .R(w),
    .Q(count[22])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_23 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[23]),
    .R(w),
    .Q(count[23])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_24 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[24]),
    .R(w),
    .Q(count[24])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_25 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[25]),
    .R(w),
    .Q(count[25])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_26 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[26]),
    .R(w),
    .Q(count[26])
  );
  FDRE #(
    .INIT ( 1'b1 ))
  count_27 (
    .C(clk_BUFGP_0),
    .CE(F_OBUF_33),
    .D(Result[27]),
    .R(w),
    .Q(count[27])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \Mcompar_F_lut<0>  (
    .I0(count[0]),
    .I1(count[1]),
    .I2(count[2]),
    .I3(count[3]),
    .I4(count[4]),
    .O(Mcompar_F_lut[0])
  );
  MUXCY   \Mcompar_F_cy<0>  (
    .CI(LED_0_OBUF_35),
    .DI(N0),
    .S(Mcompar_F_lut[0]),
    .O(Mcompar_F_cy[0])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \Mcompar_F_lut<1>  (
    .I0(count[5]),
    .I1(count[6]),
    .I2(count[7]),
    .I3(count[8]),
    .I4(count[9]),
    .O(Mcompar_F_lut[1])
  );
  MUXCY   \Mcompar_F_cy<1>  (
    .CI(Mcompar_F_cy[0]),
    .DI(N0),
    .S(Mcompar_F_lut[1]),
    .O(Mcompar_F_cy[1])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \Mcompar_F_lut<2>  (
    .I0(count[10]),
    .I1(count[11]),
    .I2(count[12]),
    .I3(count[13]),
    .I4(count[14]),
    .O(Mcompar_F_lut[2])
  );
  MUXCY   \Mcompar_F_cy<2>  (
    .CI(Mcompar_F_cy[1]),
    .DI(N0),
    .S(Mcompar_F_lut[2]),
    .O(Mcompar_F_cy[2])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \Mcompar_F_lut<3>  (
    .I0(count[15]),
    .I1(count[16]),
    .I2(count[17]),
    .I3(count[18]),
    .I4(count[19]),
    .O(Mcompar_F_lut[3])
  );
  MUXCY   \Mcompar_F_cy<3>  (
    .CI(Mcompar_F_cy[2]),
    .DI(N0),
    .S(Mcompar_F_lut[3]),
    .O(Mcompar_F_cy[3])
  );
  LUT5 #(
    .INIT ( 32'h80000000 ))
  \Mcompar_F_lut<4>  (
    .I0(count[20]),
    .I1(count[21]),
    .I2(count[22]),
    .I3(count[23]),
    .I4(count[24]),
    .O(Mcompar_F_lut[4])
  );
  MUXCY   \Mcompar_F_cy<4>  (
    .CI(Mcompar_F_cy[3]),
    .DI(N0),
    .S(Mcompar_F_lut[4]),
    .O(Mcompar_F_cy[4])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mcompar_F_lut<5>  (
    .I0(count[25]),
    .I1(count[26]),
    .I2(count[27]),
    .O(Mcompar_F_lut[5])
  );
  MUXCY   \Mcompar_F_cy<5>  (
    .CI(Mcompar_F_cy[4]),
    .DI(N0),
    .S(Mcompar_F_lut[5]),
    .O(Mcompar_F_cy[5])
  );
  MUXCY   \Mcount_count_cy<0>  (
    .CI(LED_0_OBUF_35),
    .DI(N0),
    .S(Mcount_count_lut[0]),
    .O(Mcount_count_cy[0])
  );
  XORCY   \Mcount_count_xor<0>  (
    .CI(LED_0_OBUF_35),
    .LI(Mcount_count_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_count_cy<1>  (
    .CI(Mcount_count_cy[0]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<1>_rt_116 ),
    .O(Mcount_count_cy[1])
  );
  XORCY   \Mcount_count_xor<1>  (
    .CI(Mcount_count_cy[0]),
    .LI(\Mcount_count_cy<1>_rt_116 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_count_cy<2>  (
    .CI(Mcount_count_cy[1]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<2>_rt_117 ),
    .O(Mcount_count_cy[2])
  );
  XORCY   \Mcount_count_xor<2>  (
    .CI(Mcount_count_cy[1]),
    .LI(\Mcount_count_cy<2>_rt_117 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_count_cy<3>  (
    .CI(Mcount_count_cy[2]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<3>_rt_118 ),
    .O(Mcount_count_cy[3])
  );
  XORCY   \Mcount_count_xor<3>  (
    .CI(Mcount_count_cy[2]),
    .LI(\Mcount_count_cy<3>_rt_118 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_count_cy<4>  (
    .CI(Mcount_count_cy[3]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<4>_rt_119 ),
    .O(Mcount_count_cy[4])
  );
  XORCY   \Mcount_count_xor<4>  (
    .CI(Mcount_count_cy[3]),
    .LI(\Mcount_count_cy<4>_rt_119 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_count_cy<5>  (
    .CI(Mcount_count_cy[4]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<5>_rt_120 ),
    .O(Mcount_count_cy[5])
  );
  XORCY   \Mcount_count_xor<5>  (
    .CI(Mcount_count_cy[4]),
    .LI(\Mcount_count_cy<5>_rt_120 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_count_cy<6>  (
    .CI(Mcount_count_cy[5]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<6>_rt_121 ),
    .O(Mcount_count_cy[6])
  );
  XORCY   \Mcount_count_xor<6>  (
    .CI(Mcount_count_cy[5]),
    .LI(\Mcount_count_cy<6>_rt_121 ),
    .O(Result[6])
  );
  MUXCY   \Mcount_count_cy<7>  (
    .CI(Mcount_count_cy[6]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<7>_rt_122 ),
    .O(Mcount_count_cy[7])
  );
  XORCY   \Mcount_count_xor<7>  (
    .CI(Mcount_count_cy[6]),
    .LI(\Mcount_count_cy<7>_rt_122 ),
    .O(Result[7])
  );
  MUXCY   \Mcount_count_cy<8>  (
    .CI(Mcount_count_cy[7]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<8>_rt_123 ),
    .O(Mcount_count_cy[8])
  );
  XORCY   \Mcount_count_xor<8>  (
    .CI(Mcount_count_cy[7]),
    .LI(\Mcount_count_cy<8>_rt_123 ),
    .O(Result[8])
  );
  MUXCY   \Mcount_count_cy<9>  (
    .CI(Mcount_count_cy[8]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<9>_rt_124 ),
    .O(Mcount_count_cy[9])
  );
  XORCY   \Mcount_count_xor<9>  (
    .CI(Mcount_count_cy[8]),
    .LI(\Mcount_count_cy<9>_rt_124 ),
    .O(Result[9])
  );
  MUXCY   \Mcount_count_cy<10>  (
    .CI(Mcount_count_cy[9]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<10>_rt_125 ),
    .O(Mcount_count_cy[10])
  );
  XORCY   \Mcount_count_xor<10>  (
    .CI(Mcount_count_cy[9]),
    .LI(\Mcount_count_cy<10>_rt_125 ),
    .O(Result[10])
  );
  MUXCY   \Mcount_count_cy<11>  (
    .CI(Mcount_count_cy[10]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<11>_rt_126 ),
    .O(Mcount_count_cy[11])
  );
  XORCY   \Mcount_count_xor<11>  (
    .CI(Mcount_count_cy[10]),
    .LI(\Mcount_count_cy<11>_rt_126 ),
    .O(Result[11])
  );
  MUXCY   \Mcount_count_cy<12>  (
    .CI(Mcount_count_cy[11]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<12>_rt_127 ),
    .O(Mcount_count_cy[12])
  );
  XORCY   \Mcount_count_xor<12>  (
    .CI(Mcount_count_cy[11]),
    .LI(\Mcount_count_cy<12>_rt_127 ),
    .O(Result[12])
  );
  MUXCY   \Mcount_count_cy<13>  (
    .CI(Mcount_count_cy[12]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<13>_rt_128 ),
    .O(Mcount_count_cy[13])
  );
  XORCY   \Mcount_count_xor<13>  (
    .CI(Mcount_count_cy[12]),
    .LI(\Mcount_count_cy<13>_rt_128 ),
    .O(Result[13])
  );
  MUXCY   \Mcount_count_cy<14>  (
    .CI(Mcount_count_cy[13]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<14>_rt_129 ),
    .O(Mcount_count_cy[14])
  );
  XORCY   \Mcount_count_xor<14>  (
    .CI(Mcount_count_cy[13]),
    .LI(\Mcount_count_cy<14>_rt_129 ),
    .O(Result[14])
  );
  MUXCY   \Mcount_count_cy<15>  (
    .CI(Mcount_count_cy[14]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<15>_rt_130 ),
    .O(Mcount_count_cy[15])
  );
  XORCY   \Mcount_count_xor<15>  (
    .CI(Mcount_count_cy[14]),
    .LI(\Mcount_count_cy<15>_rt_130 ),
    .O(Result[15])
  );
  MUXCY   \Mcount_count_cy<16>  (
    .CI(Mcount_count_cy[15]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<16>_rt_131 ),
    .O(Mcount_count_cy[16])
  );
  XORCY   \Mcount_count_xor<16>  (
    .CI(Mcount_count_cy[15]),
    .LI(\Mcount_count_cy<16>_rt_131 ),
    .O(Result[16])
  );
  MUXCY   \Mcount_count_cy<17>  (
    .CI(Mcount_count_cy[16]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<17>_rt_132 ),
    .O(Mcount_count_cy[17])
  );
  XORCY   \Mcount_count_xor<17>  (
    .CI(Mcount_count_cy[16]),
    .LI(\Mcount_count_cy<17>_rt_132 ),
    .O(Result[17])
  );
  MUXCY   \Mcount_count_cy<18>  (
    .CI(Mcount_count_cy[17]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<18>_rt_133 ),
    .O(Mcount_count_cy[18])
  );
  XORCY   \Mcount_count_xor<18>  (
    .CI(Mcount_count_cy[17]),
    .LI(\Mcount_count_cy<18>_rt_133 ),
    .O(Result[18])
  );
  MUXCY   \Mcount_count_cy<19>  (
    .CI(Mcount_count_cy[18]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<19>_rt_134 ),
    .O(Mcount_count_cy[19])
  );
  XORCY   \Mcount_count_xor<19>  (
    .CI(Mcount_count_cy[18]),
    .LI(\Mcount_count_cy<19>_rt_134 ),
    .O(Result[19])
  );
  MUXCY   \Mcount_count_cy<20>  (
    .CI(Mcount_count_cy[19]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<20>_rt_135 ),
    .O(Mcount_count_cy[20])
  );
  XORCY   \Mcount_count_xor<20>  (
    .CI(Mcount_count_cy[19]),
    .LI(\Mcount_count_cy<20>_rt_135 ),
    .O(Result[20])
  );
  MUXCY   \Mcount_count_cy<21>  (
    .CI(Mcount_count_cy[20]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<21>_rt_136 ),
    .O(Mcount_count_cy[21])
  );
  XORCY   \Mcount_count_xor<21>  (
    .CI(Mcount_count_cy[20]),
    .LI(\Mcount_count_cy<21>_rt_136 ),
    .O(Result[21])
  );
  MUXCY   \Mcount_count_cy<22>  (
    .CI(Mcount_count_cy[21]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<22>_rt_137 ),
    .O(Mcount_count_cy[22])
  );
  XORCY   \Mcount_count_xor<22>  (
    .CI(Mcount_count_cy[21]),
    .LI(\Mcount_count_cy<22>_rt_137 ),
    .O(Result[22])
  );
  MUXCY   \Mcount_count_cy<23>  (
    .CI(Mcount_count_cy[22]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<23>_rt_138 ),
    .O(Mcount_count_cy[23])
  );
  XORCY   \Mcount_count_xor<23>  (
    .CI(Mcount_count_cy[22]),
    .LI(\Mcount_count_cy<23>_rt_138 ),
    .O(Result[23])
  );
  MUXCY   \Mcount_count_cy<24>  (
    .CI(Mcount_count_cy[23]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<24>_rt_139 ),
    .O(Mcount_count_cy[24])
  );
  XORCY   \Mcount_count_xor<24>  (
    .CI(Mcount_count_cy[23]),
    .LI(\Mcount_count_cy<24>_rt_139 ),
    .O(Result[24])
  );
  MUXCY   \Mcount_count_cy<25>  (
    .CI(Mcount_count_cy[24]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<25>_rt_140 ),
    .O(Mcount_count_cy[25])
  );
  XORCY   \Mcount_count_xor<25>  (
    .CI(Mcount_count_cy[24]),
    .LI(\Mcount_count_cy<25>_rt_140 ),
    .O(Result[25])
  );
  MUXCY   \Mcount_count_cy<26>  (
    .CI(Mcount_count_cy[25]),
    .DI(LED_0_OBUF_35),
    .S(\Mcount_count_cy<26>_rt_141 ),
    .O(Mcount_count_cy[26])
  );
  XORCY   \Mcount_count_xor<26>  (
    .CI(Mcount_count_cy[25]),
    .LI(\Mcount_count_cy<26>_rt_141 ),
    .O(Result[26])
  );
  XORCY   \Mcount_count_xor<27>  (
    .CI(Mcount_count_cy[26]),
    .LI(\Mcount_count_xor<27>_rt_142 ),
    .O(Result[27])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  w1 (
    .I0(S2_IBUF_2),
    .I1(S3_IBUF_3),
    .I2(S1_IBUF_1),
    .O(w)
  );
  IBUF   S1_IBUF (
    .I(S1),
    .O(S1_IBUF_1)
  );
  IBUF   S2_IBUF (
    .I(S2),
    .O(S2_IBUF_2)
  );
  IBUF   S3_IBUF (
    .I(S3),
    .O(S3_IBUF_3)
  );
  OBUF   LED_6_OBUF (
    .I(LED_0_OBUF_35),
    .O(LED[6])
  );
  OBUF   LED_5_OBUF (
    .I(LED_0_OBUF_35),
    .O(LED[5])
  );
  OBUF   LED_4_OBUF (
    .I(LED_0_OBUF_35),
    .O(LED[4])
  );
  OBUF   LED_3_OBUF (
    .I(LED_0_OBUF_35),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(LED_0_OBUF_35),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(LED_0_OBUF_35),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(LED_0_OBUF_35),
    .O(LED[0])
  );
  OBUF   F_OBUF (
    .I(F_OBUF_33),
    .O(F)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<1>_rt  (
    .I0(count[1]),
    .O(\Mcount_count_cy<1>_rt_116 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<2>_rt  (
    .I0(count[2]),
    .O(\Mcount_count_cy<2>_rt_117 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<3>_rt  (
    .I0(count[3]),
    .O(\Mcount_count_cy<3>_rt_118 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<4>_rt  (
    .I0(count[4]),
    .O(\Mcount_count_cy<4>_rt_119 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<5>_rt  (
    .I0(count[5]),
    .O(\Mcount_count_cy<5>_rt_120 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<6>_rt  (
    .I0(count[6]),
    .O(\Mcount_count_cy<6>_rt_121 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<7>_rt  (
    .I0(count[7]),
    .O(\Mcount_count_cy<7>_rt_122 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<8>_rt  (
    .I0(count[8]),
    .O(\Mcount_count_cy<8>_rt_123 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<9>_rt  (
    .I0(count[9]),
    .O(\Mcount_count_cy<9>_rt_124 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<10>_rt  (
    .I0(count[10]),
    .O(\Mcount_count_cy<10>_rt_125 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<11>_rt  (
    .I0(count[11]),
    .O(\Mcount_count_cy<11>_rt_126 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<12>_rt  (
    .I0(count[12]),
    .O(\Mcount_count_cy<12>_rt_127 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<13>_rt  (
    .I0(count[13]),
    .O(\Mcount_count_cy<13>_rt_128 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<14>_rt  (
    .I0(count[14]),
    .O(\Mcount_count_cy<14>_rt_129 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<15>_rt  (
    .I0(count[15]),
    .O(\Mcount_count_cy<15>_rt_130 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<16>_rt  (
    .I0(count[16]),
    .O(\Mcount_count_cy<16>_rt_131 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<17>_rt  (
    .I0(count[17]),
    .O(\Mcount_count_cy<17>_rt_132 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<18>_rt  (
    .I0(count[18]),
    .O(\Mcount_count_cy<18>_rt_133 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<19>_rt  (
    .I0(count[19]),
    .O(\Mcount_count_cy<19>_rt_134 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<20>_rt  (
    .I0(count[20]),
    .O(\Mcount_count_cy<20>_rt_135 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<21>_rt  (
    .I0(count[21]),
    .O(\Mcount_count_cy<21>_rt_136 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<22>_rt  (
    .I0(count[22]),
    .O(\Mcount_count_cy<22>_rt_137 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<23>_rt  (
    .I0(count[23]),
    .O(\Mcount_count_cy<23>_rt_138 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<24>_rt  (
    .I0(count[24]),
    .O(\Mcount_count_cy<24>_rt_139 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<25>_rt  (
    .I0(count[25]),
    .O(\Mcount_count_cy<25>_rt_140 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_cy<26>_rt  (
    .I0(count[26]),
    .O(\Mcount_count_cy<26>_rt_141 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_count_xor<27>_rt  (
    .I0(count[27]),
    .O(\Mcount_count_xor<27>_rt_142 )
  );
  FDR #(
    .INIT ( 1'b1 ))
  count_0 (
    .C(clk_BUFGP_0),
    .D(count_0_rstpot_143),
    .R(w),
    .Q(count[0])
  );
  FDR #(
    .INIT ( 1'b1 ))
  count_1 (
    .C(clk_BUFGP_0),
    .D(count_1_rstpot_144),
    .R(w),
    .Q(count[1])
  );
  FDR #(
    .INIT ( 1'b1 ))
  count_2 (
    .C(clk_BUFGP_0),
    .D(count_2_rstpot_145),
    .R(w),
    .Q(count[2])
  );
  FDR #(
    .INIT ( 1'b1 ))
  count_3 (
    .C(clk_BUFGP_0),
    .D(count_3_rstpot_146),
    .R(w),
    .Q(count[3])
  );
  FDR #(
    .INIT ( 1'b1 ))
  count_4 (
    .C(clk_BUFGP_0),
    .D(count_4_rstpot_147),
    .R(w),
    .Q(count[4])
  );
  FDR #(
    .INIT ( 1'b1 ))
  count_5 (
    .C(clk_BUFGP_0),
    .D(count_5_rstpot_148),
    .R(w),
    .Q(count[5])
  );
  MUXCY   \Mcompar_F_cy<5>_inv1_cy  (
    .CI(Mcompar_F_cy[5]),
    .DI(N0),
    .S(N0),
    .O(F_OBUF_33)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  count_0_rstpot (
    .I0(count[0]),
    .I1(Result[0]),
    .I2(Mcompar_F_cy[5]),
    .O(count_0_rstpot_143)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  count_1_rstpot (
    .I0(count[1]),
    .I1(Result[1]),
    .I2(Mcompar_F_cy[5]),
    .O(count_1_rstpot_144)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  count_2_rstpot (
    .I0(count[2]),
    .I1(Result[2]),
    .I2(Mcompar_F_cy[5]),
    .O(count_2_rstpot_145)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  count_3_rstpot (
    .I0(count[3]),
    .I1(Result[3]),
    .I2(Mcompar_F_cy[5]),
    .O(count_3_rstpot_146)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  count_4_rstpot (
    .I0(count[4]),
    .I1(Result[4]),
    .I2(Mcompar_F_cy[5]),
    .O(count_4_rstpot_147)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  count_5_rstpot (
    .I0(count[5]),
    .I1(Result[5]),
    .I2(Mcompar_F_cy[5]),
    .O(count_5_rstpot_148)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \Mcount_count_lut<0>_INV_0  (
    .I(count[0]),
    .O(Mcount_count_lut[0])
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

