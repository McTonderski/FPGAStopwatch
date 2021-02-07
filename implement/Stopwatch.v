// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Feb  7 22:58:36 2021
// Host        : DESKTOP-GN5VI1U running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force Stopwatch.v
// Design      : Stopwatch
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a15tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "5309ed59" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module Stopwatch
   (clk_in,
    dp,
    reset,
    start_stop,
    AN,
    DISP0);
  input clk_in;
  output dp;
  input reset;
  input start_stop;
  output [3:0]AN;
  output [6:0]DISP0;

  wire [3:0]AN;
  wire [3:0]AN_OBUF;
  wire [6:0]DISP0;
  wire [6:0]DISP0_OBUF;
  wire [1:0]SR;
  wire TEMP;
  wire TEMP2;
  wire TEMP2_i_1_n_0;
  wire TEMP2_reg_n_0;
  wire TEMP_i_1_n_0;
  wire TEMP_reg_n_0;
  wire clk_in;
  wire clk_in_IBUF;
  wire clk_in_IBUF_BUFG;
  wire [0:0]counter;
  wire [0:0]counter2;
  wire \counter2[0]_i_2_n_0 ;
  wire \counter2[0]_i_3_n_0 ;
  wire \counter2[0]_i_4_n_0 ;
  wire \counter2[0]_i_5_n_0 ;
  wire \counter2[0]_i_6_n_0 ;
  wire \counter2[0]_i_7_n_0 ;
  wire \counter2[0]_i_8_n_0 ;
  wire \counter2_reg[10]_CE_cooolgate_en_sig_5 ;
  wire \counter2_reg[12]_i_1_n_0 ;
  wire \counter2_reg[12]_i_1_n_4 ;
  wire \counter2_reg[12]_i_1_n_5 ;
  wire \counter2_reg[12]_i_1_n_6 ;
  wire \counter2_reg[12]_i_1_n_7 ;
  wire \counter2_reg[13]_CE_cooolgate_en_sig_2 ;
  wire \counter2_reg[16]_i_1_n_0 ;
  wire \counter2_reg[16]_i_1_n_4 ;
  wire \counter2_reg[16]_i_1_n_5 ;
  wire \counter2_reg[16]_i_1_n_6 ;
  wire \counter2_reg[16]_i_1_n_7 ;
  wire \counter2_reg[20]_i_1_n_0 ;
  wire \counter2_reg[20]_i_1_n_4 ;
  wire \counter2_reg[20]_i_1_n_5 ;
  wire \counter2_reg[20]_i_1_n_6 ;
  wire \counter2_reg[20]_i_1_n_7 ;
  wire \counter2_reg[23]_i_2_n_5 ;
  wire \counter2_reg[23]_i_2_n_6 ;
  wire \counter2_reg[23]_i_2_n_7 ;
  wire \counter2_reg[4]_i_1_n_0 ;
  wire \counter2_reg[4]_i_1_n_4 ;
  wire \counter2_reg[4]_i_1_n_5 ;
  wire \counter2_reg[4]_i_1_n_6 ;
  wire \counter2_reg[4]_i_1_n_7 ;
  wire \counter2_reg[5]_CE_cooolgate_en_sig_3 ;
  wire \counter2_reg[8]_i_1_n_0 ;
  wire \counter2_reg[8]_i_1_n_4 ;
  wire \counter2_reg[8]_i_1_n_5 ;
  wire \counter2_reg[8]_i_1_n_6 ;
  wire \counter2_reg[8]_i_1_n_7 ;
  wire [23:0]counter2_reg_n_0_;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[0]_i_8_n_0 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[13]_CE_cooolgate_en_sig_1 ;
  wire \counter_reg[16]_i_1_n_0 ;
  wire \counter_reg[20]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[5]_CE_cooolgate_en_sig_4 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire [23:0]counter_reg_n_0_;
  wire [23:1]data0;
  wire dp;
  wire reset;
  wire reset_IBUF;
  wire start_stop;
  wire start_stop_IBUF;
  wire [2:0]\NLW_counter2_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter2_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter2_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter2_reg[23]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter2_reg[23]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_counter2_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter2_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[23]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[23]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(AN_OBUF[2]),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(AN_OBUF[3]),
        .O(AN[3]));
  muxdivider COUNTER2BIT
       (.AN_OBUF(AN_OBUF),
        .CLK(TEMP_reg_n_0),
        .Q(SR));
  sixteen_bit_counter COUNTER4BIT0
       (.AR(reset_IBUF),
        .CLK(TEMP2_reg_n_0),
        .DISP0_OBUF(DISP0_OBUF),
        .Q(SR),
        .start_stop_IBUF(start_stop_IBUF));
  OBUF \DISP0_OBUF[0]_inst 
       (.I(DISP0_OBUF[0]),
        .O(DISP0[0]));
  OBUF \DISP0_OBUF[1]_inst 
       (.I(DISP0_OBUF[1]),
        .O(DISP0[1]));
  OBUF \DISP0_OBUF[2]_inst 
       (.I(DISP0_OBUF[2]),
        .O(DISP0[2]));
  OBUF \DISP0_OBUF[3]_inst 
       (.I(DISP0_OBUF[3]),
        .O(DISP0[3]));
  OBUF \DISP0_OBUF[4]_inst 
       (.I(DISP0_OBUF[4]),
        .O(DISP0[4]));
  OBUF \DISP0_OBUF[5]_inst 
       (.I(DISP0_OBUF[5]),
        .O(DISP0[5]));
  OBUF \DISP0_OBUF[6]_inst 
       (.I(DISP0_OBUF[6]),
        .O(DISP0[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    TEMP2_i_1
       (.I0(counter2_reg_n_0_[0]),
        .I1(\counter2[0]_i_2_n_0 ),
        .I2(TEMP2_reg_n_0),
        .O(TEMP2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TEMP2_reg
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(TEMP2_i_1_n_0),
        .Q(TEMP2_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    TEMP_i_1
       (.I0(counter_reg_n_0_[0]),
        .I1(\counter[0]_i_2_n_0 ),
        .I2(TEMP_reg_n_0),
        .O(TEMP_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TEMP_reg
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(TEMP_i_1_n_0),
        .Q(TEMP_reg_n_0),
        .R(1'b0));
  BUFG clk_in_IBUF_BUFG_inst
       (.I(clk_in_IBUF),
        .O(clk_in_IBUF_BUFG));
  IBUF clk_in_IBUF_inst
       (.I(clk_in),
        .O(clk_in_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter2[0]_i_1 
       (.I0(\counter2[0]_i_2_n_0 ),
        .I1(counter2_reg_n_0_[0]),
        .O(counter2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter2[0]_i_2 
       (.I0(\counter2[0]_i_3_n_0 ),
        .I1(\counter2[0]_i_4_n_0 ),
        .I2(\counter2[0]_i_5_n_0 ),
        .I3(\counter2[0]_i_6_n_0 ),
        .I4(\counter2[0]_i_7_n_0 ),
        .I5(\counter2[0]_i_8_n_0 ),
        .O(\counter2[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \counter2[0]_i_3 
       (.I0(counter2_reg_n_0_[19]),
        .I1(counter2_reg_n_0_[18]),
        .I2(counter2_reg_n_0_[21]),
        .I3(counter2_reg_n_0_[20]),
        .O(\counter2[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \counter2[0]_i_4 
       (.I0(counter2_reg_n_0_[22]),
        .I1(counter2_reg_n_0_[23]),
        .I2(counter2_reg_n_0_[1]),
        .O(\counter2[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter2[0]_i_5 
       (.I0(counter2_reg_n_0_[11]),
        .I1(counter2_reg_n_0_[10]),
        .I2(counter2_reg_n_0_[13]),
        .I3(counter2_reg_n_0_[12]),
        .O(\counter2[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \counter2[0]_i_6 
       (.I0(counter2_reg_n_0_[14]),
        .I1(counter2_reg_n_0_[15]),
        .I2(counter2_reg_n_0_[17]),
        .I3(counter2_reg_n_0_[16]),
        .O(\counter2[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \counter2[0]_i_7 
       (.I0(counter2_reg_n_0_[6]),
        .I1(counter2_reg_n_0_[7]),
        .I2(counter2_reg_n_0_[9]),
        .I3(counter2_reg_n_0_[8]),
        .O(\counter2[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter2[0]_i_8 
       (.I0(counter2_reg_n_0_[3]),
        .I1(counter2_reg_n_0_[2]),
        .I2(counter2_reg_n_0_[5]),
        .I3(counter2_reg_n_0_[4]),
        .O(\counter2[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter2[23]_i_1 
       (.I0(counter2_reg_n_0_[0]),
        .I1(\counter2[0]_i_2_n_0 ),
        .O(TEMP2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[0] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(counter2),
        .Q(counter2_reg_n_0_[0]),
        .R(1'b0));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[10] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter2_reg[10]_CE_cooolgate_en_sig_5 ),
        .D(\counter2_reg[12]_i_1_n_6 ),
        .Q(counter2_reg_n_0_[10]),
        .R(TEMP2));
  LUT2 #(
    .INIT(4'hd)) 
    \counter2_reg[10]_CE_cooolgate_en_gate_21 
       (.I0(\counter2[0]_i_8_n_0 ),
        .I1(\counter2_reg[4]_i_1_n_0 ),
        .O(\counter2_reg[10]_CE_cooolgate_en_sig_5 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[11] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter2_reg[10]_CE_cooolgate_en_sig_5 ),
        .D(\counter2_reg[12]_i_1_n_5 ),
        .Q(counter2_reg_n_0_[11]),
        .R(TEMP2));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[12] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter2_reg[10]_CE_cooolgate_en_sig_5 ),
        .D(\counter2_reg[12]_i_1_n_4 ),
        .Q(counter2_reg_n_0_[12]),
        .R(TEMP2));
  CARRY4 \counter2_reg[12]_i_1 
       (.CI(\counter2_reg[8]_i_1_n_0 ),
        .CO({\counter2_reg[12]_i_1_n_0 ,\NLW_counter2_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter2_reg[12]_i_1_n_4 ,\counter2_reg[12]_i_1_n_5 ,\counter2_reg[12]_i_1_n_6 ,\counter2_reg[12]_i_1_n_7 }),
        .S(counter2_reg_n_0_[12:9]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[13] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter2_reg[13]_CE_cooolgate_en_sig_2 ),
        .D(\counter2_reg[16]_i_1_n_7 ),
        .Q(counter2_reg_n_0_[13]),
        .R(TEMP2));
  LUT5 #(
    .INIT(32'h8800ff0f)) 
    \counter2_reg[13]_CE_cooolgate_en_gate_6 
       (.I0(counter2_reg_n_0_[7]),
        .I1(counter2_reg_n_0_[5]),
        .I2(\counter2[0]_i_7_n_0 ),
        .I3(\counter2_reg[4]_i_1_n_0 ),
        .I4(\counter2[0]_i_8_n_0 ),
        .O(\counter2_reg[13]_CE_cooolgate_en_sig_2 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[14] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter2_reg[13]_CE_cooolgate_en_sig_2 ),
        .D(\counter2_reg[16]_i_1_n_6 ),
        .Q(counter2_reg_n_0_[14]),
        .R(TEMP2));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[15] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter2_reg[13]_CE_cooolgate_en_sig_2 ),
        .D(\counter2_reg[16]_i_1_n_5 ),
        .Q(counter2_reg_n_0_[15]),
        .R(TEMP2));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[16] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter2_reg[13]_CE_cooolgate_en_sig_2 ),
        .D(\counter2_reg[16]_i_1_n_4 ),
        .Q(counter2_reg_n_0_[16]),
        .R(TEMP2));
  CARRY4 \counter2_reg[16]_i_1 
       (.CI(\counter2_reg[12]_i_1_n_0 ),
        .CO({\counter2_reg[16]_i_1_n_0 ,\NLW_counter2_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter2_reg[16]_i_1_n_4 ,\counter2_reg[16]_i_1_n_5 ,\counter2_reg[16]_i_1_n_6 ,\counter2_reg[16]_i_1_n_7 }),
        .S(counter2_reg_n_0_[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[17] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter2_reg[20]_i_1_n_7 ),
        .Q(counter2_reg_n_0_[17]),
        .R(TEMP2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[18] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter2_reg[20]_i_1_n_6 ),
        .Q(counter2_reg_n_0_[18]),
        .R(TEMP2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[19] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter2_reg[20]_i_1_n_5 ),
        .Q(counter2_reg_n_0_[19]),
        .R(TEMP2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[1] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter2_reg[4]_i_1_n_7 ),
        .Q(counter2_reg_n_0_[1]),
        .R(TEMP2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[20] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter2_reg[20]_i_1_n_4 ),
        .Q(counter2_reg_n_0_[20]),
        .R(TEMP2));
  CARRY4 \counter2_reg[20]_i_1 
       (.CI(\counter2_reg[16]_i_1_n_0 ),
        .CO({\counter2_reg[20]_i_1_n_0 ,\NLW_counter2_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter2_reg[20]_i_1_n_4 ,\counter2_reg[20]_i_1_n_5 ,\counter2_reg[20]_i_1_n_6 ,\counter2_reg[20]_i_1_n_7 }),
        .S(counter2_reg_n_0_[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[21] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter2_reg[23]_i_2_n_7 ),
        .Q(counter2_reg_n_0_[21]),
        .R(TEMP2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[22] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter2_reg[23]_i_2_n_6 ),
        .Q(counter2_reg_n_0_[22]),
        .R(TEMP2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[23] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter2_reg[23]_i_2_n_5 ),
        .Q(counter2_reg_n_0_[23]),
        .R(TEMP2));
  CARRY4 \counter2_reg[23]_i_2 
       (.CI(\counter2_reg[20]_i_1_n_0 ),
        .CO(\NLW_counter2_reg[23]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter2_reg[23]_i_2_O_UNCONNECTED [3],\counter2_reg[23]_i_2_n_5 ,\counter2_reg[23]_i_2_n_6 ,\counter2_reg[23]_i_2_n_7 }),
        .S({1'b0,counter2_reg_n_0_[23:21]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[2] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter2_reg[4]_i_1_n_6 ),
        .Q(counter2_reg_n_0_[2]),
        .R(TEMP2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[3] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter2_reg[4]_i_1_n_5 ),
        .Q(counter2_reg_n_0_[3]),
        .R(TEMP2));
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[4] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter2_reg[4]_i_1_n_4 ),
        .Q(counter2_reg_n_0_[4]),
        .R(TEMP2));
  CARRY4 \counter2_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\counter2_reg[4]_i_1_n_0 ,\NLW_counter2_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(counter2_reg_n_0_[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter2_reg[4]_i_1_n_4 ,\counter2_reg[4]_i_1_n_5 ,\counter2_reg[4]_i_1_n_6 ,\counter2_reg[4]_i_1_n_7 }),
        .S(counter2_reg_n_0_[4:1]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[5] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter2_reg[5]_CE_cooolgate_en_sig_3 ),
        .D(\counter2_reg[8]_i_1_n_7 ),
        .Q(counter2_reg_n_0_[5]),
        .R(TEMP2));
  LUT5 #(
    .INIT(32'hffff002f)) 
    \counter2_reg[5]_CE_cooolgate_en_gate_11 
       (.I0(counter2_reg_n_0_[6]),
        .I1(\counter2[0]_i_5_n_0 ),
        .I2(counter2_reg_n_0_[7]),
        .I3(\counter2[0]_i_8_n_0 ),
        .I4(\counter2_reg[4]_i_1_n_0 ),
        .O(\counter2_reg[5]_CE_cooolgate_en_sig_3 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[6] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter2_reg[5]_CE_cooolgate_en_sig_3 ),
        .D(\counter2_reg[8]_i_1_n_6 ),
        .Q(counter2_reg_n_0_[6]),
        .R(TEMP2));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[7] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter2_reg[5]_CE_cooolgate_en_sig_3 ),
        .D(\counter2_reg[8]_i_1_n_5 ),
        .Q(counter2_reg_n_0_[7]),
        .R(TEMP2));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[8] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter2_reg[5]_CE_cooolgate_en_sig_3 ),
        .D(\counter2_reg[8]_i_1_n_4 ),
        .Q(counter2_reg_n_0_[8]),
        .R(TEMP2));
  CARRY4 \counter2_reg[8]_i_1 
       (.CI(\counter2_reg[4]_i_1_n_0 ),
        .CO({\counter2_reg[8]_i_1_n_0 ,\NLW_counter2_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter2_reg[8]_i_1_n_4 ,\counter2_reg[8]_i_1_n_5 ,\counter2_reg[8]_i_1_n_6 ,\counter2_reg[8]_i_1_n_7 }),
        .S(counter2_reg_n_0_[8:5]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter2_reg[9] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter2_reg[10]_CE_cooolgate_en_sig_5 ),
        .D(\counter2_reg[12]_i_1_n_7 ),
        .Q(counter2_reg_n_0_[9]),
        .R(TEMP2));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \counter[0]_i_1 
       (.I0(\counter[0]_i_2_n_0 ),
        .I1(counter_reg_n_0_[0]),
        .O(counter));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[0]_i_2 
       (.I0(\counter[0]_i_3_n_0 ),
        .I1(\counter[0]_i_4_n_0 ),
        .I2(\counter[0]_i_5_n_0 ),
        .I3(\counter[0]_i_6_n_0 ),
        .I4(\counter[0]_i_7_n_0 ),
        .I5(\counter[0]_i_8_n_0 ),
        .O(\counter[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_3 
       (.I0(counter_reg_n_0_[19]),
        .I1(counter_reg_n_0_[18]),
        .I2(counter_reg_n_0_[21]),
        .I3(counter_reg_n_0_[20]),
        .O(\counter[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \counter[0]_i_4 
       (.I0(counter_reg_n_0_[23]),
        .I1(counter_reg_n_0_[22]),
        .I2(counter_reg_n_0_[1]),
        .O(\counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \counter[0]_i_5 
       (.I0(counter_reg_n_0_[11]),
        .I1(counter_reg_n_0_[10]),
        .I2(counter_reg_n_0_[13]),
        .I3(counter_reg_n_0_[12]),
        .O(\counter[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \counter[0]_i_6 
       (.I0(counter_reg_n_0_[15]),
        .I1(counter_reg_n_0_[14]),
        .I2(counter_reg_n_0_[17]),
        .I3(counter_reg_n_0_[16]),
        .O(\counter[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \counter[0]_i_7 
       (.I0(counter_reg_n_0_[6]),
        .I1(counter_reg_n_0_[7]),
        .I2(counter_reg_n_0_[8]),
        .I3(counter_reg_n_0_[9]),
        .O(\counter[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_8 
       (.I0(counter_reg_n_0_[3]),
        .I1(counter_reg_n_0_[2]),
        .I2(counter_reg_n_0_[5]),
        .I3(counter_reg_n_0_[4]),
        .O(\counter[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[23]_i_1 
       (.I0(counter_reg_n_0_[0]),
        .I1(\counter[0]_i_2_n_0 ),
        .O(TEMP));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(counter),
        .Q(counter_reg_n_0_[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[10]),
        .Q(counter_reg_n_0_[10]),
        .R(TEMP));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[11]),
        .Q(counter_reg_n_0_[11]),
        .R(TEMP));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[12]),
        .Q(counter_reg_n_0_[12]),
        .R(TEMP));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter_reg_n_0_[12:9]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter_reg[13]_CE_cooolgate_en_sig_1 ),
        .D(data0[13]),
        .Q(counter_reg_n_0_[13]),
        .R(TEMP));
  LUT6 #(
    .INIT(64'hff01010101010101)) 
    \counter_reg[13]_CE_cooolgate_en_gate_1 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(\counter[0]_i_5_n_0 ),
        .I2(\counter[0]_i_4_n_0 ),
        .I3(counter_reg_n_0_[7]),
        .I4(counter_reg_n_0_[5]),
        .I5(\counter_reg[4]_i_1_n_0 ),
        .O(\counter_reg[13]_CE_cooolgate_en_sig_1 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter_reg[13]_CE_cooolgate_en_sig_1 ),
        .D(data0[14]),
        .Q(counter_reg_n_0_[14]),
        .R(TEMP));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter_reg[13]_CE_cooolgate_en_sig_1 ),
        .D(data0[15]),
        .Q(counter_reg_n_0_[15]),
        .R(TEMP));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter_reg[13]_CE_cooolgate_en_sig_1 ),
        .D(data0[16]),
        .Q(counter_reg_n_0_[16]),
        .R(TEMP));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\counter_reg[16]_i_1_n_0 ,\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter_reg_n_0_[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[17]),
        .Q(counter_reg_n_0_[17]),
        .R(TEMP));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[18]),
        .Q(counter_reg_n_0_[18]),
        .R(TEMP));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[19]),
        .Q(counter_reg_n_0_[19]),
        .R(TEMP));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[1]),
        .Q(counter_reg_n_0_[1]),
        .R(TEMP));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[20]),
        .Q(counter_reg_n_0_[20]),
        .R(TEMP));
  CARRY4 \counter_reg[20]_i_1 
       (.CI(\counter_reg[16]_i_1_n_0 ),
        .CO({\counter_reg[20]_i_1_n_0 ,\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(counter_reg_n_0_[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[21]),
        .Q(counter_reg_n_0_[21]),
        .R(TEMP));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[22]),
        .Q(counter_reg_n_0_[22]),
        .R(TEMP));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[23]),
        .Q(counter_reg_n_0_[23]),
        .R(TEMP));
  CARRY4 \counter_reg[23]_i_2 
       (.CI(\counter_reg[20]_i_1_n_0 ),
        .CO(\NLW_counter_reg[23]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[23]_i_2_O_UNCONNECTED [3],data0[23:21]}),
        .S({1'b0,counter_reg_n_0_[23:21]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[2]),
        .Q(counter_reg_n_0_[2]),
        .R(TEMP));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[3]),
        .Q(counter_reg_n_0_[3]),
        .R(TEMP));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[4]),
        .Q(counter_reg_n_0_[4]),
        .R(TEMP));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_1_n_0 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(counter_reg_n_0_[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter_reg_n_0_[4:1]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter_reg[5]_CE_cooolgate_en_sig_4 ),
        .D(data0[5]),
        .Q(counter_reg_n_0_[5]),
        .R(TEMP));
  LUT5 #(
    .INIT(32'hffff002f)) 
    \counter_reg[5]_CE_cooolgate_en_gate_16 
       (.I0(counter_reg_n_0_[6]),
        .I1(\counter[0]_i_5_n_0 ),
        .I2(counter_reg_n_0_[7]),
        .I3(\counter[0]_i_8_n_0 ),
        .I4(\counter_reg[4]_i_1_n_0 ),
        .O(\counter_reg[5]_CE_cooolgate_en_sig_4 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter_reg[5]_CE_cooolgate_en_sig_4 ),
        .D(data0[6]),
        .Q(counter_reg_n_0_[6]),
        .R(TEMP));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter_reg[5]_CE_cooolgate_en_sig_4 ),
        .D(data0[7]),
        .Q(counter_reg_n_0_[7]),
        .R(TEMP));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_in_IBUF_BUFG),
        .CE(\counter_reg[5]_CE_cooolgate_en_sig_4 ),
        .D(data0[8]),
        .Q(counter_reg_n_0_[8]),
        .R(TEMP));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter_reg_n_0_[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_in_IBUF_BUFG),
        .CE(1'b1),
        .D(data0[9]),
        .Q(counter_reg_n_0_[9]),
        .R(TEMP));
  OBUF dp_OBUF_inst
       (.I(AN_OBUF[1]),
        .O(dp));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF start_stop_IBUF_inst
       (.I(start_stop),
        .O(start_stop_IBUF));
endmodule

module muxdivider
   (CLK,
    AN_OBUF,
    Q);
  input CLK;
  output [3:0]AN_OBUF;
  output [1:0]Q;

  wire [3:0]AN_OBUF;
  wire CLK;
  wire [1:0]Q;
  wire [1:0]p_2_out;

  LUT2 #(
    .INIT(4'hE)) 
    \AN_OBUF[0]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(AN_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[2]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(AN_OBUF[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \AN_OBUF[3]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(AN_OBUF[3]));
  LUT2 #(
    .INIT(4'hB)) 
    dp_OBUF_inst_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(AN_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \outside_couter_signal[0]_i_1 
       (.I0(Q[0]),
        .O(p_2_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \outside_couter_signal[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_2_out[1]));
  FDRE #(
    .INIT(1'b0)) 
    \outside_couter_signal_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_out[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \outside_couter_signal_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_2_out[1]),
        .Q(Q[1]),
        .R(1'b0));
endmodule

module sixteen_bit_counter
   (CLK,
    start_stop_IBUF,
    AR,
    DISP0_OBUF,
    Q);
  input CLK;
  input start_stop_IBUF;
  input [0:0]AR;
  output [6:0]DISP0_OBUF;
  input [1:0]Q;

  wire [0:0]AR;
  wire CLK;
  wire [6:0]DISP0_OBUF;
  wire \DISP0_OBUF[0]_inst_i_2_n_0 ;
  wire \DISP0_OBUF[0]_inst_i_3_n_0 ;
  wire \DISP0_OBUF[0]_inst_i_4_n_0 ;
  wire \DISP0_OBUF[0]_inst_i_5_n_0 ;
  wire \DISP0_OBUF[1]_inst_i_2_n_0 ;
  wire \DISP0_OBUF[1]_inst_i_3_n_0 ;
  wire \DISP0_OBUF[1]_inst_i_4_n_0 ;
  wire \DISP0_OBUF[1]_inst_i_5_n_0 ;
  wire \DISP0_OBUF[2]_inst_i_2_n_0 ;
  wire \DISP0_OBUF[2]_inst_i_3_n_0 ;
  wire \DISP0_OBUF[3]_inst_i_2_n_0 ;
  wire \DISP0_OBUF[3]_inst_i_3_n_0 ;
  wire \DISP0_OBUF[4]_inst_i_2_n_0 ;
  wire \DISP0_OBUF[4]_inst_i_3_n_0 ;
  wire \DISP0_OBUF[5]_inst_i_2_n_0 ;
  wire \DISP0_OBUF[5]_inst_i_3_n_0 ;
  wire \DISP0_OBUF[6]_inst_i_2_n_0 ;
  wire \DISP0_OBUF[6]_inst_i_3_n_0 ;
  wire \DISP0_OBUF[6]_inst_i_4_n_0 ;
  wire \DISP0_OBUF[6]_inst_i_5_n_0 ;
  wire [1:0]Q;
  wire \Q_INT1[0]_i_1_n_0 ;
  wire \Q_INT1[1]_i_1_n_0 ;
  wire \Q_INT1[2]_i_1_n_0 ;
  wire \Q_INT1[3]_i_1_n_0 ;
  wire [3:0]Q_INT1_reg__0;
  wire Q_INT20;
  wire \Q_INT2[0]_i_1_n_0 ;
  wire \Q_INT2[1]_i_1_n_0 ;
  wire \Q_INT2[2]_i_1_n_0 ;
  wire \Q_INT2[3]_i_2_n_0 ;
  wire \Q_INT2[3]_i_3_n_0 ;
  wire [3:0]Q_INT2_reg__0;
  wire Q_INT30;
  wire \Q_INT3[0]_i_1_n_0 ;
  wire \Q_INT3[1]_i_1_n_0 ;
  wire \Q_INT3[2]_i_1_n_0 ;
  wire \Q_INT3[3]_i_2_n_0 ;
  wire [3:0]Q_INT3_reg__0;
  wire Q_INT40;
  wire \Q_INT4[0]_i_1_n_0 ;
  wire [3:0]Q_INT4_reg__0;
  wire [5:2]cathodes;
  wire [3:1]plusOp;
  wire [5:2]s_1;
  wire start_stop_IBUF;

  MUXF7 \DISP0_OBUF[0]_inst_i_1 
       (.I0(\DISP0_OBUF[0]_inst_i_2_n_0 ),
        .I1(\DISP0_OBUF[0]_inst_i_3_n_0 ),
        .O(DISP0_OBUF[0]),
        .S(Q[0]));
  LUT6 #(
    .INIT(64'h0091FFFF00910000)) 
    \DISP0_OBUF[0]_inst_i_2 
       (.I0(Q_INT3_reg__0[1]),
        .I1(Q_INT3_reg__0[2]),
        .I2(Q_INT3_reg__0[0]),
        .I3(Q_INT3_reg__0[3]),
        .I4(Q[1]),
        .I5(\DISP0_OBUF[0]_inst_i_4_n_0 ),
        .O(\DISP0_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0091FFFF00910000)) 
    \DISP0_OBUF[0]_inst_i_3 
       (.I0(Q_INT4_reg__0[1]),
        .I1(Q_INT4_reg__0[2]),
        .I2(Q_INT4_reg__0[0]),
        .I3(Q_INT4_reg__0[3]),
        .I4(Q[1]),
        .I5(\DISP0_OBUF[0]_inst_i_5_n_0 ),
        .O(\DISP0_OBUF[0]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0091)) 
    \DISP0_OBUF[0]_inst_i_4 
       (.I0(Q_INT1_reg__0[1]),
        .I1(Q_INT1_reg__0[2]),
        .I2(Q_INT1_reg__0[0]),
        .I3(Q_INT1_reg__0[3]),
        .O(\DISP0_OBUF[0]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0091)) 
    \DISP0_OBUF[0]_inst_i_5 
       (.I0(Q_INT2_reg__0[1]),
        .I1(Q_INT2_reg__0[2]),
        .I2(Q_INT2_reg__0[0]),
        .I3(Q_INT2_reg__0[3]),
        .O(\DISP0_OBUF[0]_inst_i_5_n_0 ));
  MUXF7 \DISP0_OBUF[1]_inst_i_1 
       (.I0(\DISP0_OBUF[1]_inst_i_2_n_0 ),
        .I1(\DISP0_OBUF[1]_inst_i_3_n_0 ),
        .O(DISP0_OBUF[1]),
        .S(Q[0]));
  LUT6 #(
    .INIT(64'h008EFFFF008E0000)) 
    \DISP0_OBUF[1]_inst_i_2 
       (.I0(Q_INT3_reg__0[0]),
        .I1(Q_INT3_reg__0[1]),
        .I2(Q_INT3_reg__0[2]),
        .I3(Q_INT3_reg__0[3]),
        .I4(Q[1]),
        .I5(\DISP0_OBUF[1]_inst_i_4_n_0 ),
        .O(\DISP0_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h008EFFFF008E0000)) 
    \DISP0_OBUF[1]_inst_i_3 
       (.I0(Q_INT4_reg__0[0]),
        .I1(Q_INT4_reg__0[1]),
        .I2(Q_INT4_reg__0[2]),
        .I3(Q_INT4_reg__0[3]),
        .I4(Q[1]),
        .I5(\DISP0_OBUF[1]_inst_i_5_n_0 ),
        .O(\DISP0_OBUF[1]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h008E)) 
    \DISP0_OBUF[1]_inst_i_4 
       (.I0(Q_INT1_reg__0[0]),
        .I1(Q_INT1_reg__0[1]),
        .I2(Q_INT1_reg__0[2]),
        .I3(Q_INT1_reg__0[3]),
        .O(\DISP0_OBUF[1]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h008E)) 
    \DISP0_OBUF[1]_inst_i_5 
       (.I0(Q_INT2_reg__0[0]),
        .I1(Q_INT2_reg__0[1]),
        .I2(Q_INT2_reg__0[2]),
        .I3(Q_INT2_reg__0[3]),
        .O(\DISP0_OBUF[1]_inst_i_5_n_0 ));
  MUXF7 \DISP0_OBUF[2]_inst_i_1 
       (.I0(\DISP0_OBUF[2]_inst_i_2_n_0 ),
        .I1(\DISP0_OBUF[2]_inst_i_3_n_0 ),
        .O(DISP0_OBUF[2]),
        .S(Q[0]));
  LUT6 #(
    .INIT(64'h5710FFFF57100000)) 
    \DISP0_OBUF[2]_inst_i_2 
       (.I0(Q_INT3_reg__0[3]),
        .I1(Q_INT3_reg__0[1]),
        .I2(Q_INT3_reg__0[2]),
        .I3(Q_INT3_reg__0[0]),
        .I4(Q[1]),
        .I5(cathodes[2]),
        .O(\DISP0_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5710FFFF57100000)) 
    \DISP0_OBUF[2]_inst_i_3 
       (.I0(Q_INT4_reg__0[3]),
        .I1(Q_INT4_reg__0[1]),
        .I2(Q_INT4_reg__0[2]),
        .I3(Q_INT4_reg__0[0]),
        .I4(Q[1]),
        .I5(s_1[2]),
        .O(\DISP0_OBUF[2]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5710)) 
    \DISP0_OBUF[2]_inst_i_4 
       (.I0(Q_INT1_reg__0[3]),
        .I1(Q_INT1_reg__0[1]),
        .I2(Q_INT1_reg__0[2]),
        .I3(Q_INT1_reg__0[0]),
        .O(cathodes[2]));
  LUT4 #(
    .INIT(16'h5710)) 
    \DISP0_OBUF[2]_inst_i_5 
       (.I0(Q_INT2_reg__0[3]),
        .I1(Q_INT2_reg__0[1]),
        .I2(Q_INT2_reg__0[2]),
        .I3(Q_INT2_reg__0[0]),
        .O(s_1[2]));
  MUXF7 \DISP0_OBUF[3]_inst_i_1 
       (.I0(\DISP0_OBUF[3]_inst_i_2_n_0 ),
        .I1(\DISP0_OBUF[3]_inst_i_3_n_0 ),
        .O(DISP0_OBUF[3]),
        .S(Q[0]));
  LUT6 #(
    .INIT(64'hEABCFFFFEABC0000)) 
    \DISP0_OBUF[3]_inst_i_2 
       (.I0(Q_INT3_reg__0[3]),
        .I1(Q_INT3_reg__0[2]),
        .I2(Q_INT3_reg__0[0]),
        .I3(Q_INT3_reg__0[1]),
        .I4(Q[1]),
        .I5(cathodes[3]),
        .O(\DISP0_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEABCFFFFEABC0000)) 
    \DISP0_OBUF[3]_inst_i_3 
       (.I0(Q_INT4_reg__0[3]),
        .I1(Q_INT4_reg__0[2]),
        .I2(Q_INT4_reg__0[0]),
        .I3(Q_INT4_reg__0[1]),
        .I4(Q[1]),
        .I5(s_1[3]),
        .O(\DISP0_OBUF[3]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEABC)) 
    \DISP0_OBUF[3]_inst_i_4 
       (.I0(Q_INT1_reg__0[3]),
        .I1(Q_INT1_reg__0[2]),
        .I2(Q_INT1_reg__0[0]),
        .I3(Q_INT1_reg__0[1]),
        .O(cathodes[3]));
  LUT4 #(
    .INIT(16'hEABC)) 
    \DISP0_OBUF[3]_inst_i_5 
       (.I0(Q_INT2_reg__0[3]),
        .I1(Q_INT2_reg__0[2]),
        .I2(Q_INT2_reg__0[0]),
        .I3(Q_INT2_reg__0[1]),
        .O(s_1[3]));
  MUXF7 \DISP0_OBUF[4]_inst_i_1 
       (.I0(\DISP0_OBUF[4]_inst_i_2_n_0 ),
        .I1(\DISP0_OBUF[4]_inst_i_3_n_0 ),
        .O(DISP0_OBUF[4]),
        .S(Q[0]));
  LUT6 #(
    .INIT(64'hAAB0FFFFAAB00000)) 
    \DISP0_OBUF[4]_inst_i_2 
       (.I0(Q_INT3_reg__0[3]),
        .I1(Q_INT3_reg__0[0]),
        .I2(Q_INT3_reg__0[1]),
        .I3(Q_INT3_reg__0[2]),
        .I4(Q[1]),
        .I5(cathodes[4]),
        .O(\DISP0_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAB0FFFFAAB00000)) 
    \DISP0_OBUF[4]_inst_i_3 
       (.I0(Q_INT4_reg__0[3]),
        .I1(Q_INT4_reg__0[0]),
        .I2(Q_INT4_reg__0[1]),
        .I3(Q_INT4_reg__0[2]),
        .I4(Q[1]),
        .I5(s_1[4]),
        .O(\DISP0_OBUF[4]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAB0)) 
    \DISP0_OBUF[4]_inst_i_4 
       (.I0(Q_INT1_reg__0[3]),
        .I1(Q_INT1_reg__0[0]),
        .I2(Q_INT1_reg__0[1]),
        .I3(Q_INT1_reg__0[2]),
        .O(cathodes[4]));
  LUT4 #(
    .INIT(16'hAAB0)) 
    \DISP0_OBUF[4]_inst_i_5 
       (.I0(Q_INT2_reg__0[3]),
        .I1(Q_INT2_reg__0[0]),
        .I2(Q_INT2_reg__0[1]),
        .I3(Q_INT2_reg__0[2]),
        .O(s_1[4]));
  MUXF7 \DISP0_OBUF[5]_inst_i_1 
       (.I0(\DISP0_OBUF[5]_inst_i_2_n_0 ),
        .I1(\DISP0_OBUF[5]_inst_i_3_n_0 ),
        .O(DISP0_OBUF[5]),
        .S(Q[0]));
  LUT6 #(
    .INIT(64'hAEC8FFFFAEC80000)) 
    \DISP0_OBUF[5]_inst_i_2 
       (.I0(Q_INT3_reg__0[3]),
        .I1(Q_INT3_reg__0[2]),
        .I2(Q_INT3_reg__0[0]),
        .I3(Q_INT3_reg__0[1]),
        .I4(Q[1]),
        .I5(cathodes[5]),
        .O(\DISP0_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEC8FFFFAEC80000)) 
    \DISP0_OBUF[5]_inst_i_3 
       (.I0(Q_INT4_reg__0[3]),
        .I1(Q_INT4_reg__0[2]),
        .I2(Q_INT4_reg__0[0]),
        .I3(Q_INT4_reg__0[1]),
        .I4(Q[1]),
        .I5(s_1[5]),
        .O(\DISP0_OBUF[5]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAEC8)) 
    \DISP0_OBUF[5]_inst_i_4 
       (.I0(Q_INT1_reg__0[3]),
        .I1(Q_INT1_reg__0[2]),
        .I2(Q_INT1_reg__0[0]),
        .I3(Q_INT1_reg__0[1]),
        .O(cathodes[5]));
  LUT4 #(
    .INIT(16'hAEC8)) 
    \DISP0_OBUF[5]_inst_i_5 
       (.I0(Q_INT2_reg__0[3]),
        .I1(Q_INT2_reg__0[2]),
        .I2(Q_INT2_reg__0[0]),
        .I3(Q_INT2_reg__0[1]),
        .O(s_1[5]));
  MUXF7 \DISP0_OBUF[6]_inst_i_1 
       (.I0(\DISP0_OBUF[6]_inst_i_2_n_0 ),
        .I1(\DISP0_OBUF[6]_inst_i_3_n_0 ),
        .O(DISP0_OBUF[6]),
        .S(Q[0]));
  LUT6 #(
    .INIT(64'h0034FFFF00340000)) 
    \DISP0_OBUF[6]_inst_i_2 
       (.I0(Q_INT3_reg__0[1]),
        .I1(Q_INT3_reg__0[0]),
        .I2(Q_INT3_reg__0[2]),
        .I3(Q_INT3_reg__0[3]),
        .I4(Q[1]),
        .I5(\DISP0_OBUF[6]_inst_i_4_n_0 ),
        .O(\DISP0_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0034FFFF00340000)) 
    \DISP0_OBUF[6]_inst_i_3 
       (.I0(Q_INT4_reg__0[1]),
        .I1(Q_INT4_reg__0[0]),
        .I2(Q_INT4_reg__0[2]),
        .I3(Q_INT4_reg__0[3]),
        .I4(Q[1]),
        .I5(\DISP0_OBUF[6]_inst_i_5_n_0 ),
        .O(\DISP0_OBUF[6]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0034)) 
    \DISP0_OBUF[6]_inst_i_4 
       (.I0(Q_INT1_reg__0[1]),
        .I1(Q_INT1_reg__0[0]),
        .I2(Q_INT1_reg__0[2]),
        .I3(Q_INT1_reg__0[3]),
        .O(\DISP0_OBUF[6]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0034)) 
    \DISP0_OBUF[6]_inst_i_5 
       (.I0(Q_INT2_reg__0[1]),
        .I1(Q_INT2_reg__0[0]),
        .I2(Q_INT2_reg__0[2]),
        .I3(Q_INT2_reg__0[3]),
        .O(\DISP0_OBUF[6]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0F07)) 
    \Q_INT1[0]_i_1 
       (.I0(Q_INT1_reg__0[1]),
        .I1(Q_INT1_reg__0[3]),
        .I2(Q_INT1_reg__0[0]),
        .I3(Q_INT1_reg__0[2]),
        .O(\Q_INT1[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5A52)) 
    \Q_INT1[1]_i_1 
       (.I0(Q_INT1_reg__0[1]),
        .I1(Q_INT1_reg__0[3]),
        .I2(Q_INT1_reg__0[0]),
        .I3(Q_INT1_reg__0[2]),
        .O(\Q_INT1[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \Q_INT1[2]_i_1 
       (.I0(Q_INT1_reg__0[1]),
        .I1(Q_INT1_reg__0[0]),
        .I2(Q_INT1_reg__0[2]),
        .O(\Q_INT1[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6CC4)) 
    \Q_INT1[3]_i_1 
       (.I0(Q_INT1_reg__0[1]),
        .I1(Q_INT1_reg__0[3]),
        .I2(Q_INT1_reg__0[0]),
        .I3(Q_INT1_reg__0[2]),
        .O(\Q_INT1[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT1_reg[0] 
       (.C(CLK),
        .CE(start_stop_IBUF),
        .CLR(AR),
        .D(\Q_INT1[0]_i_1_n_0 ),
        .Q(Q_INT1_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT1_reg[1] 
       (.C(CLK),
        .CE(start_stop_IBUF),
        .CLR(AR),
        .D(\Q_INT1[1]_i_1_n_0 ),
        .Q(Q_INT1_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT1_reg[2] 
       (.C(CLK),
        .CE(start_stop_IBUF),
        .CLR(AR),
        .D(\Q_INT1[2]_i_1_n_0 ),
        .Q(Q_INT1_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT1_reg[3] 
       (.C(CLK),
        .CE(start_stop_IBUF),
        .CLR(AR),
        .D(\Q_INT1[3]_i_1_n_0 ),
        .Q(Q_INT1_reg__0[3]));
  LUT4 #(
    .INIT(16'h0F07)) 
    \Q_INT2[0]_i_1 
       (.I0(Q_INT2_reg__0[1]),
        .I1(Q_INT2_reg__0[3]),
        .I2(Q_INT2_reg__0[0]),
        .I3(Q_INT2_reg__0[2]),
        .O(\Q_INT2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5A52)) 
    \Q_INT2[1]_i_1 
       (.I0(Q_INT2_reg__0[1]),
        .I1(Q_INT2_reg__0[3]),
        .I2(Q_INT2_reg__0[0]),
        .I3(Q_INT2_reg__0[2]),
        .O(\Q_INT2[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \Q_INT2[2]_i_1 
       (.I0(Q_INT2_reg__0[1]),
        .I1(Q_INT2_reg__0[0]),
        .I2(Q_INT2_reg__0[2]),
        .O(\Q_INT2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA02000000)) 
    \Q_INT2[3]_i_1 
       (.I0(start_stop_IBUF),
        .I1(Q_INT1_reg__0[2]),
        .I2(Q_INT1_reg__0[0]),
        .I3(Q_INT1_reg__0[3]),
        .I4(Q_INT1_reg__0[1]),
        .I5(\Q_INT2[3]_i_3_n_0 ),
        .O(Q_INT20));
  LUT4 #(
    .INIT(16'h6CC4)) 
    \Q_INT2[3]_i_2 
       (.I0(Q_INT2_reg__0[1]),
        .I1(Q_INT2_reg__0[3]),
        .I2(Q_INT2_reg__0[0]),
        .I3(Q_INT2_reg__0[2]),
        .O(\Q_INT2[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \Q_INT2[3]_i_3 
       (.I0(Q_INT2_reg__0[2]),
        .I1(Q_INT2_reg__0[0]),
        .I2(Q_INT2_reg__0[3]),
        .I3(Q_INT2_reg__0[1]),
        .O(\Q_INT2[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT2_reg[0] 
       (.C(CLK),
        .CE(Q_INT20),
        .CLR(AR),
        .D(\Q_INT2[0]_i_1_n_0 ),
        .Q(Q_INT2_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT2_reg[1] 
       (.C(CLK),
        .CE(Q_INT20),
        .CLR(AR),
        .D(\Q_INT2[1]_i_1_n_0 ),
        .Q(Q_INT2_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT2_reg[2] 
       (.C(CLK),
        .CE(Q_INT20),
        .CLR(AR),
        .D(\Q_INT2[2]_i_1_n_0 ),
        .Q(Q_INT2_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT2_reg[3] 
       (.C(CLK),
        .CE(Q_INT20),
        .CLR(AR),
        .D(\Q_INT2[3]_i_2_n_0 ),
        .Q(Q_INT2_reg__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0F07)) 
    \Q_INT3[0]_i_1 
       (.I0(Q_INT3_reg__0[1]),
        .I1(Q_INT3_reg__0[3]),
        .I2(Q_INT3_reg__0[0]),
        .I3(Q_INT3_reg__0[2]),
        .O(\Q_INT3[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5A52)) 
    \Q_INT3[1]_i_1 
       (.I0(Q_INT3_reg__0[1]),
        .I1(Q_INT3_reg__0[3]),
        .I2(Q_INT3_reg__0[0]),
        .I3(Q_INT3_reg__0[2]),
        .O(\Q_INT3[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Q_INT3[2]_i_1 
       (.I0(Q_INT3_reg__0[1]),
        .I1(Q_INT3_reg__0[0]),
        .I2(Q_INT3_reg__0[2]),
        .O(\Q_INT3[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888A888888888888)) 
    \Q_INT3[3]_i_1 
       (.I0(start_stop_IBUF),
        .I1(\Q_INT2[3]_i_3_n_0 ),
        .I2(Q_INT3_reg__0[2]),
        .I3(Q_INT3_reg__0[0]),
        .I4(Q_INT3_reg__0[3]),
        .I5(Q_INT3_reg__0[1]),
        .O(Q_INT30));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6CC4)) 
    \Q_INT3[3]_i_2 
       (.I0(Q_INT3_reg__0[1]),
        .I1(Q_INT3_reg__0[3]),
        .I2(Q_INT3_reg__0[0]),
        .I3(Q_INT3_reg__0[2]),
        .O(\Q_INT3[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT3_reg[0] 
       (.C(CLK),
        .CE(Q_INT30),
        .CLR(AR),
        .D(\Q_INT3[0]_i_1_n_0 ),
        .Q(Q_INT3_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT3_reg[1] 
       (.C(CLK),
        .CE(Q_INT30),
        .CLR(AR),
        .D(\Q_INT3[1]_i_1_n_0 ),
        .Q(Q_INT3_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT3_reg[2] 
       (.C(CLK),
        .CE(Q_INT30),
        .CLR(AR),
        .D(\Q_INT3[2]_i_1_n_0 ),
        .Q(Q_INT3_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT3_reg[3] 
       (.C(CLK),
        .CE(Q_INT30),
        .CLR(AR),
        .D(\Q_INT3[3]_i_2_n_0 ),
        .Q(Q_INT3_reg__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Q_INT4[0]_i_1 
       (.I0(Q_INT4_reg__0[0]),
        .O(\Q_INT4[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Q_INT4[1]_i_1 
       (.I0(Q_INT4_reg__0[0]),
        .I1(Q_INT4_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Q_INT4[2]_i_1 
       (.I0(Q_INT4_reg__0[0]),
        .I1(Q_INT4_reg__0[1]),
        .I2(Q_INT4_reg__0[2]),
        .O(plusOp[2]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \Q_INT4[3]_i_1 
       (.I0(start_stop_IBUF),
        .I1(Q_INT3_reg__0[1]),
        .I2(Q_INT3_reg__0[3]),
        .I3(Q_INT3_reg__0[0]),
        .I4(Q_INT3_reg__0[2]),
        .O(Q_INT40));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Q_INT4[3]_i_2 
       (.I0(Q_INT4_reg__0[1]),
        .I1(Q_INT4_reg__0[0]),
        .I2(Q_INT4_reg__0[2]),
        .I3(Q_INT4_reg__0[3]),
        .O(plusOp[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT4_reg[0] 
       (.C(CLK),
        .CE(Q_INT40),
        .CLR(AR),
        .D(\Q_INT4[0]_i_1_n_0 ),
        .Q(Q_INT4_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT4_reg[1] 
       (.C(CLK),
        .CE(Q_INT40),
        .CLR(AR),
        .D(plusOp[1]),
        .Q(Q_INT4_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT4_reg[2] 
       (.C(CLK),
        .CE(Q_INT40),
        .CLR(AR),
        .D(plusOp[2]),
        .Q(Q_INT4_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Q_INT4_reg[3] 
       (.C(CLK),
        .CE(Q_INT40),
        .CLR(AR),
        .D(plusOp[3]),
        .Q(Q_INT4_reg__0[3]));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
