////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : sch2hdl
//  /   /         Filename : MyMC14495.vf
// /___/   /\     Timestamp : 12/19/2021 14:49:54
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: sch2hdl -intstyle ise -family kintex7 -verilog C:/Users/49530/Desktop/ISE/Lab12Trans/MyMC14495.vf -w C:/Users/49530/Desktop/ISE/Lab12Trans/MyMC14495.sch
//Design Name: MyMC14495
//Device: kintex7
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module MyMC14495(
   input [3:0] hex,
   input LE,
   input point,
   output a,
   output b,
   output c,
   output d,
   output e,
   output f,
   output g,
   output p
);
   
   wire XLXN_9;
   wire XLXN_10;
   wire XLXN_11;
   wire XLXN_12;
   wire XLXN_21;
   wire XLXN_22;
   wire XLXN_23;
   wire XLXN_24;
   wire XLXN_26;
   wire XLXN_27;
   wire XLXN_28;
   wire XLXN_29;
   wire XLXN_30;
   wire XLXN_31;
   wire XLXN_32;
   wire XLXN_33;
   wire XLXN_34;
   wire XLXN_35;
   wire XLXN_36;
   wire XLXN_37;
   wire XLXN_38;
   wire XLXN_39;
   wire XLXN_40;
   wire XLXN_41;
   wire XLXN_42;
   wire XLXN_43;
   wire XLXN_44;
   wire XLXN_45;
   wire XLXN_46;
   wire XLXN_47;
   wire XLXN_48;
   wire XLXN_49;
	wire D3, D2, D1, D0;
	
	assign {D3, D2, D1, D0} = hex;
   
   AND4  XLXI_1 (.I0(D0), 
                .I1(XLXN_11), 
                .I2(XLXN_10), 
                .I3(XLXN_9), 
                .O(XLXN_32));
   AND4  XLXI_2 (.I0(D2), 
                .I1(XLXN_12), 
                .I2(XLXN_11), 
                .I3(XLXN_9), 
                .O(XLXN_33));
   AND4  XLXI_3 (.I0(D0), 
                .I1(D2), 
                .I2(D3), 
                .I3(XLXN_11), 
                .O(XLXN_21));
   AND4  XLXI_4 (.I0(D0), 
                .I1(D1), 
                .I2(D3), 
                .I3(XLXN_10), 
                .O(XLXN_22));
   AND4  XLXI_5 (.I0(D0), 
                .I1(D2), 
                .I2(XLXN_11), 
                .I3(XLXN_9), 
                .O(XLXN_23));
   AND3  XLXI_6 (.I0(D1), 
                .I1(D2), 
                .I2(XLXN_12), 
                .O(XLXN_24));
   AND3  XLXI_7 (.I0(D2), 
                .I1(D3), 
                .I2(XLXN_12), 
                .O(XLXN_26));
   AND3  XLXI_8 (.I0(D0), 
                .I1(D1), 
                .I2(D3), 
                .O(XLXN_27));
   AND4  XLXI_9 (.I0(D1), 
                .I1(XLXN_12), 
                .I2(XLXN_10), 
                .I3(XLXN_9), 
                .O(XLXN_28));
   AND3  XLXI_10 (.I0(D1), 
                 .I1(D2), 
                 .I2(D3), 
                 .O(XLXN_29));
   AND3  XLXI_11 (.I0(D0), 
                 .I1(D1), 
                 .I2(D2), 
                 .O(XLXN_31));
   AND4  XLXI_34 (.I0(D1), 
                 .I1(D3), 
                 .I2(XLXN_12), 
                 .I3(XLXN_10), 
                 .O(XLXN_30));
   AND2  XLXI_35 (.I0(D0), 
                 .I1(XLXN_9), 
                 .O(XLXN_34));
   AND3  XLXI_36 (.I0(D2), 
                 .I1(XLXN_11), 
                 .I2(XLXN_9), 
                 .O(XLXN_35));
   AND3  XLXI_37 (.I0(D0), 
                 .I1(XLXN_11), 
                 .I2(XLXN_10), 
                 .O(XLXN_36));
   AND3  XLXI_38 (.I0(D0), 
                 .I1(XLXN_10), 
                 .I2(XLXN_9), 
                 .O(XLXN_37));
   AND3  XLXI_39 (.I0(D1), 
                 .I1(XLXN_10), 
                 .I2(XLXN_9), 
                 .O(XLXN_38));
   AND3  XLXI_40 (.I0(D0), 
                 .I1(D1), 
                 .I2(XLXN_9), 
                 .O(XLXN_39));
   AND3  XLXI_41 (.I0(XLXN_11), 
                 .I1(XLXN_10), 
                 .I2(XLXN_9), 
                 .O(XLXN_42));
   AND4  XLXI_42 (.I0(D0), 
                 .I1(D1), 
                 .I2(D2), 
                 .I3(XLXN_9), 
                 .O(XLXN_41));
   AND4  XLXI_43 (.I0(D2), 
                 .I1(D3), 
                 .I2(XLXN_12), 
                 .I3(XLXN_11), 
                 .O(XLXN_40));
   INV  XLXI_44 (.I(D3), 
                .O(XLXN_9));
   INV  XLXI_45 (.I(D2), 
                .O(XLXN_10));
   INV  XLXI_46 (.I(D1), 
                .O(XLXN_11));
   INV  XLXI_47 (.I(D0), 
                .O(XLXN_12));
   OR3  XLXI_48 (.I0(XLXN_40), 
                .I1(XLXN_41), 
                .I2(XLXN_42), 
                .O(XLXN_49));
   OR3  XLXI_50 (.I0(XLXN_36), 
                .I1(XLXN_35), 
                .I2(XLXN_34), 
                .O(XLXN_47));
   OR3  XLXI_52 (.I0(XLXN_29), 
                .I1(XLXN_28), 
                .I2(XLXN_26), 
                .O(XLXN_45));
   OR4  XLXI_53 (.I0(XLXN_39), 
                .I1(XLXN_38), 
                .I2(XLXN_37), 
                .I3(XLXN_21), 
                .O(XLXN_48));
   OR4  XLXI_54 (.I0(XLXN_27), 
                .I1(XLXN_26), 
                .I2(XLXN_24), 
                .I3(XLXN_23), 
                .O(XLXN_44));
   OR4  XLXI_55 (.I0(XLXN_22), 
                .I1(XLXN_21), 
                .I2(XLXN_33), 
                .I3(XLXN_32), 
                .O(XLXN_43));
   OR4  XLXI_56 (.I0(XLXN_30), 
                .I1(XLXN_31), 
                .I2(XLXN_33), 
                .I3(XLXN_32), 
                .O(XLXN_46));
   OR2  XLXI_57 (.I0(LE), 
                .I1(XLXN_49), 
                .O(g));
   OR2  XLXI_58 (.I0(LE), 
                .I1(XLXN_48), 
                .O(f));
   OR2  XLXI_59 (.I0(LE), 
                .I1(XLXN_47), 
                .O(e));
   OR2  XLXI_60 (.I0(LE), 
                .I1(XLXN_46), 
                .O(d));
   OR2  XLXI_61 (.I0(LE), 
                .I1(XLXN_45), 
                .O(c));
   OR2  XLXI_62 (.I0(LE), 
                .I1(XLXN_44), 
                .O(b));
   OR2  XLXI_63 (.I0(LE), 
                .I1(XLXN_43), 
                .O(a));
   INV  XLXI_65 (.I(point), 
                .O(p));
endmodule
