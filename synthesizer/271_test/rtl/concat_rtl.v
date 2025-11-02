
//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/ccs_in_wait_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_wait_v1 (idat, rdy, ivld, dat, irdy, vld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  output             rdy;
  output             ivld;
  input  [width-1:0] dat;
  input              irdy;
  input              vld;

  wire   [width-1:0] idat;
  wire               rdy;
  wire               ivld;

  assign idat = dat;
  assign rdy = irdy;
  assign ivld = vld;

endmodule


//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/ccs_out_wait_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_out_wait_v1 (dat, irdy, vld, idat, rdy, ivld);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] dat;
  output             irdy;
  output             vld;
  input  [width-1:0] idat;
  input              rdy;
  input              ivld;

  wire   [width-1:0] dat;
  wire               irdy;
  wire               vld;

  assign dat = idat;
  assign irdy = rdy;
  assign vld = ivld;

endmodule



//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/ccs_in_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module ccs_in_v1 (idat, dat);

  parameter integer rscid = 1;
  parameter integer width = 8;

  output [width-1:0] idat;
  input  [width-1:0] dat;

  wire   [width-1:0] idat;

  assign idat = dat;

endmodule


//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/mgc_out_dreg_v2.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------


module mgc_out_dreg_v2 (d, z);

  parameter integer rscid = 1;
  parameter integer width = 8;

  input    [width-1:0] d;
  output   [width-1:0] z;

  wire     [width-1:0] z;

  assign z = d;

endmodule

//------> ../td_ccore_solutions/SampleTest_8a6ef224def9c726bd5e1b8bfc77a492b5ca_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   hsiangc@caddy10.stanford.edu
//  Generated date: Thu Nov 21 19:08:56 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    SampleTest_run
// ------------------------------------------------------------------


module SampleTest_run (
  triangle_v_x_rsc_dat, triangle_v_y_rsc_dat, sample_x_rsc_dat, sample_y_rsc_dat,
      return_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_srst, ccs_ccore_en
);
  input [71:0] triangle_v_x_rsc_dat;
  input [71:0] triangle_v_y_rsc_dat;
  input [23:0] sample_x_rsc_dat;
  input [23:0] sample_y_rsc_dat;
  output return_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [71:0] triangle_v_x_rsci_idat;
  wire [71:0] triangle_v_y_rsci_idat;
  wire [23:0] sample_x_rsci_idat;
  wire [23:0] sample_y_rsci_idat;
  reg return_rsci_d;
  wire ccs_ccore_start_rsci_idat;
  wire and_dcpl;
  wire and_dcpl_2;
  wire and_dcpl_3;
  reg b0_dist0_conv_2f_slc_32_svs_st_1;
  reg main_stage_0_2;
  reg main_stage_0_3;
  reg main_stage_0_4;
  reg [24:0] v0_x_acc_psp_sva_1;
  reg [24:0] v0_x_acc_psp_sva_2;
  reg [24:0] v0_x_acc_psp_sva_3;
  reg [24:0] v0_y_acc_psp_sva_1;
  reg [24:0] v0_y_acc_psp_sva_2;
  reg [24:0] v0_y_acc_psp_sva_3;
  reg [24:0] v1_x_acc_psp_sva_1;
  reg [24:0] v1_x_acc_psp_sva_2;
  reg [24:0] v1_y_acc_psp_sva_1;
  reg [24:0] v1_y_acc_psp_sva_2;
  reg [24:0] v2_x_acc_psp_sva_1;
  wire [25:0] nl_v2_x_acc_psp_sva_1;
  reg [24:0] v2_x_acc_psp_sva_2;
  reg [24:0] v2_x_acc_psp_sva_3;
  reg [24:0] v2_y_acc_psp_sva_1;
  wire [25:0] nl_v2_y_acc_psp_sva_1;
  reg [24:0] v2_y_acc_psp_sva_2;
  reg [24:0] v2_y_acc_psp_sva_3;
  reg land_lpi_1_dfm_2;
  reg [31:0] dist0_mul_itm_1;
  wire signed [49:0] nl_dist0_mul_itm_1;
  reg [31:0] dist0_mul_1_itm_1;
  wire signed [49:0] nl_dist0_mul_1_itm_1;
  reg [31:0] dist2_mul_itm_1;
  wire signed [49:0] nl_dist2_mul_itm_1;
  reg [31:0] dist2_mul_1_itm_1;
  wire signed [49:0] nl_dist2_mul_1_itm_1;
  reg asn_itm_1;
  reg asn_itm_2;
  reg asn_itm_3;
  reg land_lpi_1_dfm_st_1;
  wire [24:0] v1_y_acc_psp_sva_1_1;
  wire [25:0] nl_v1_y_acc_psp_sva_1_1;
  wire [24:0] v1_x_acc_psp_sva_1_1;
  wire [25:0] nl_v1_x_acc_psp_sva_1_1;
  wire [24:0] v0_y_acc_psp_sva_1_1;
  wire [25:0] nl_v0_y_acc_psp_sva_1_1;
  wire [24:0] v0_x_acc_psp_sva_1_1;
  wire [25:0] nl_v0_x_acc_psp_sva_1_1;
  wire dist2_and_cse;
  wire v0_x_and_cse;
  wire v1_x_and_cse;
  wire dist0_and_cse;
  wire b0_dist0_conv_2f_acc_itm_32_1;
  wire dist1_acc_itm_31_1;

  wire[32:0] b2_dist2_conv_2f_acc_nl;
  wire[33:0] nl_b2_dist2_conv_2f_acc_nl;
  wire[31:0] dist2_acc_nl;
  wire[32:0] nl_dist2_acc_nl;
  wire[32:0] b0_dist0_conv_2f_acc_nl;
  wire[33:0] nl_b0_dist0_conv_2f_acc_nl;
  wire[31:0] dist0_acc_nl;
  wire[32:0] nl_dist0_acc_nl;
  wire[31:0] dist1_acc_nl;
  wire[32:0] nl_dist1_acc_nl;
  wire[31:0] dist1_mul_nl;
  wire signed [49:0] nl_dist1_mul_nl;
  wire[31:0] dist1_mul_1_nl;
  wire signed [49:0] nl_dist1_mul_1_nl;

  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd7),
  .width(32'sd72)) triangle_v_x_rsci (
      .dat(triangle_v_x_rsc_dat),
      .idat(triangle_v_x_rsci_idat)
    );
  ccs_in_v1 #(.rscid(32'sd8),
  .width(32'sd72)) triangle_v_y_rsci (
      .dat(triangle_v_y_rsc_dat),
      .idat(triangle_v_y_rsci_idat)
    );
  ccs_in_v1 #(.rscid(32'sd13),
  .width(32'sd24)) sample_x_rsci (
      .dat(sample_x_rsc_dat),
      .idat(sample_x_rsci_idat)
    );
  ccs_in_v1 #(.rscid(32'sd14),
  .width(32'sd24)) sample_y_rsci (
      .dat(sample_y_rsc_dat),
      .idat(sample_y_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd18),
  .width(32'sd1)) return_rsci (
      .d(return_rsci_d),
      .z(return_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd49),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  assign dist2_and_cse = ccs_ccore_en & and_dcpl & land_lpi_1_dfm_st_1;
  assign v0_x_and_cse = ccs_ccore_en & and_dcpl_2 & dist1_acc_itm_31_1 & (~ b0_dist0_conv_2f_slc_32_svs_st_1);
  assign v1_x_and_cse = ccs_ccore_en & and_dcpl_3 & (~ b0_dist0_conv_2f_acc_itm_32_1);
  assign dist0_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  assign nl_dist0_acc_nl = dist0_mul_itm_1 - dist0_mul_1_itm_1;
  assign dist0_acc_nl = nl_dist0_acc_nl[31:0];
  assign nl_b0_dist0_conv_2f_acc_nl =  -conv_s2s_32_33(dist0_acc_nl);
  assign b0_dist0_conv_2f_acc_nl = nl_b0_dist0_conv_2f_acc_nl[32:0];
  assign b0_dist0_conv_2f_acc_itm_32_1 = readslicef_33_1_32((b0_dist0_conv_2f_acc_nl));
  assign nl_dist1_mul_nl = $signed(v1_x_acc_psp_sva_2) * $signed(v2_y_acc_psp_sva_2);
  assign dist1_mul_nl = nl_dist1_mul_nl[31:0];
  assign nl_dist1_mul_1_nl = $signed(v2_x_acc_psp_sva_2) * $signed(v1_y_acc_psp_sva_2);
  assign dist1_mul_1_nl = nl_dist1_mul_1_nl[31:0];
  assign nl_dist1_acc_nl = (dist1_mul_nl) - (dist1_mul_1_nl);
  assign dist1_acc_nl = nl_dist1_acc_nl[31:0];
  assign dist1_acc_itm_31_1 = readslicef_32_1_31((dist1_acc_nl));
  assign nl_v1_y_acc_psp_sva_1_1 = conv_s2s_24_25(triangle_v_y_rsci_idat[47:24])
      - conv_s2s_24_25(sample_y_rsci_idat);
  assign v1_y_acc_psp_sva_1_1 = nl_v1_y_acc_psp_sva_1_1[24:0];
  assign nl_v1_x_acc_psp_sva_1_1 = conv_s2s_24_25(triangle_v_x_rsci_idat[47:24])
      - conv_s2s_24_25(sample_x_rsci_idat);
  assign v1_x_acc_psp_sva_1_1 = nl_v1_x_acc_psp_sva_1_1[24:0];
  assign nl_v0_y_acc_psp_sva_1_1 = conv_s2s_24_25(triangle_v_y_rsci_idat[23:0]) -
      conv_s2s_24_25(sample_y_rsci_idat);
  assign v0_y_acc_psp_sva_1_1 = nl_v0_y_acc_psp_sva_1_1[24:0];
  assign nl_v0_x_acc_psp_sva_1_1 = conv_s2s_24_25(triangle_v_x_rsci_idat[23:0]) -
      conv_s2s_24_25(sample_x_rsci_idat);
  assign v0_x_acc_psp_sva_1_1 = nl_v0_x_acc_psp_sva_1_1[24:0];
  assign and_dcpl = main_stage_0_4 & asn_itm_3;
  assign and_dcpl_2 = main_stage_0_3 & asn_itm_2;
  assign and_dcpl_3 = main_stage_0_2 & asn_itm_1;
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      return_rsci_d <= 1'b0;
      asn_itm_3 <= 1'b0;
      asn_itm_2 <= 1'b0;
      asn_itm_1 <= 1'b0;
      main_stage_0_2 <= 1'b0;
      main_stage_0_3 <= 1'b0;
      main_stage_0_4 <= 1'b0;
    end
    else if ( ccs_ccore_en ) begin
      return_rsci_d <= (~ (readslicef_33_1_32((b2_dist2_conv_2f_acc_nl)))) & land_lpi_1_dfm_2;
      asn_itm_3 <= asn_itm_2;
      asn_itm_2 <= asn_itm_1;
      asn_itm_1 <= ccs_ccore_start_rsci_idat;
      main_stage_0_2 <= 1'b1;
      main_stage_0_3 <= main_stage_0_2;
      main_stage_0_4 <= main_stage_0_3;
    end
  end
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      dist2_mul_itm_1 <= 32'b00000000000000000000000000000000;
      dist2_mul_1_itm_1 <= 32'b00000000000000000000000000000000;
    end
    else if ( dist2_and_cse ) begin
      dist2_mul_itm_1 <= nl_dist2_mul_itm_1[31:0];
      dist2_mul_1_itm_1 <= nl_dist2_mul_1_itm_1[31:0];
    end
  end
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      land_lpi_1_dfm_2 <= 1'b0;
    end
    else if ( ccs_ccore_en & and_dcpl ) begin
      land_lpi_1_dfm_2 <= land_lpi_1_dfm_st_1;
    end
  end
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      land_lpi_1_dfm_st_1 <= 1'b0;
    end
    else if ( ccs_ccore_en & and_dcpl_2 ) begin
      land_lpi_1_dfm_st_1 <= dist1_acc_itm_31_1 & (~ b0_dist0_conv_2f_slc_32_svs_st_1);
    end
  end
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      b0_dist0_conv_2f_slc_32_svs_st_1 <= 1'b0;
    end
    else if ( ccs_ccore_en & and_dcpl_3 ) begin
      b0_dist0_conv_2f_slc_32_svs_st_1 <= b0_dist0_conv_2f_acc_itm_32_1;
    end
  end
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      v0_x_acc_psp_sva_3 <= 25'b0000000000000000000000000;
      v2_y_acc_psp_sva_3 <= 25'b0000000000000000000000000;
      v2_x_acc_psp_sva_3 <= 25'b0000000000000000000000000;
      v0_y_acc_psp_sva_3 <= 25'b0000000000000000000000000;
    end
    else if ( v0_x_and_cse ) begin
      v0_x_acc_psp_sva_3 <= v0_x_acc_psp_sva_2;
      v2_y_acc_psp_sva_3 <= v2_y_acc_psp_sva_2;
      v2_x_acc_psp_sva_3 <= v2_x_acc_psp_sva_2;
      v0_y_acc_psp_sva_3 <= v0_y_acc_psp_sva_2;
    end
  end
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      v1_x_acc_psp_sva_2 <= 25'b0000000000000000000000000;
      v2_y_acc_psp_sva_2 <= 25'b0000000000000000000000000;
      v2_x_acc_psp_sva_2 <= 25'b0000000000000000000000000;
      v1_y_acc_psp_sva_2 <= 25'b0000000000000000000000000;
      v0_y_acc_psp_sva_2 <= 25'b0000000000000000000000000;
      v0_x_acc_psp_sva_2 <= 25'b0000000000000000000000000;
    end
    else if ( v1_x_and_cse ) begin
      v1_x_acc_psp_sva_2 <= v1_x_acc_psp_sva_1;
      v2_y_acc_psp_sva_2 <= v2_y_acc_psp_sva_1;
      v2_x_acc_psp_sva_2 <= v2_x_acc_psp_sva_1;
      v1_y_acc_psp_sva_2 <= v1_y_acc_psp_sva_1;
      v0_y_acc_psp_sva_2 <= v0_y_acc_psp_sva_1;
      v0_x_acc_psp_sva_2 <= v0_x_acc_psp_sva_1;
    end
  end
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      dist0_mul_itm_1 <= 32'b00000000000000000000000000000000;
      dist0_mul_1_itm_1 <= 32'b00000000000000000000000000000000;
      v2_y_acc_psp_sva_1 <= 25'b0000000000000000000000000;
      v2_x_acc_psp_sva_1 <= 25'b0000000000000000000000000;
      v1_y_acc_psp_sva_1 <= 25'b0000000000000000000000000;
      v1_x_acc_psp_sva_1 <= 25'b0000000000000000000000000;
      v0_y_acc_psp_sva_1 <= 25'b0000000000000000000000000;
      v0_x_acc_psp_sva_1 <= 25'b0000000000000000000000000;
    end
    else if ( dist0_and_cse ) begin
      dist0_mul_itm_1 <= nl_dist0_mul_itm_1[31:0];
      dist0_mul_1_itm_1 <= nl_dist0_mul_1_itm_1[31:0];
      v2_y_acc_psp_sva_1 <= nl_v2_y_acc_psp_sva_1[24:0];
      v2_x_acc_psp_sva_1 <= nl_v2_x_acc_psp_sva_1[24:0];
      v1_y_acc_psp_sva_1 <= v1_y_acc_psp_sva_1_1;
      v1_x_acc_psp_sva_1 <= v1_x_acc_psp_sva_1_1;
      v0_y_acc_psp_sva_1 <= v0_y_acc_psp_sva_1_1;
      v0_x_acc_psp_sva_1 <= v0_x_acc_psp_sva_1_1;
    end
  end
  assign nl_dist2_acc_nl = dist2_mul_itm_1 - dist2_mul_1_itm_1;
  assign dist2_acc_nl = nl_dist2_acc_nl[31:0];
  assign nl_b2_dist2_conv_2f_acc_nl =  -conv_s2s_32_33(dist2_acc_nl);
  assign b2_dist2_conv_2f_acc_nl = nl_b2_dist2_conv_2f_acc_nl[32:0];
  assign nl_dist2_mul_itm_1  = $signed(v2_x_acc_psp_sva_3) * $signed(v0_y_acc_psp_sva_3);
  assign nl_dist2_mul_1_itm_1  = $signed(v0_x_acc_psp_sva_3) * $signed(v2_y_acc_psp_sva_3);
  assign nl_dist0_mul_itm_1  = $signed(v0_x_acc_psp_sva_1_1) * $signed(v1_y_acc_psp_sva_1_1);
  assign nl_dist0_mul_1_itm_1  = $signed(v1_x_acc_psp_sva_1_1) * $signed(v0_y_acc_psp_sva_1_1);
  assign nl_v2_y_acc_psp_sva_1  = conv_s2s_24_25(triangle_v_y_rsci_idat[71:48]) -
      conv_s2s_24_25(sample_y_rsci_idat);
  assign nl_v2_x_acc_psp_sva_1  = conv_s2s_24_25(triangle_v_x_rsci_idat[71:48]) -
      conv_s2s_24_25(sample_x_rsci_idat);

  function automatic [0:0] readslicef_32_1_31;
    input [31:0] vector;
    reg [31:0] tmp;
  begin
    tmp = vector >> 31;
    readslicef_32_1_31 = tmp[0:0];
  end
  endfunction


  function automatic [0:0] readslicef_33_1_32;
    input [32:0] vector;
    reg [32:0] tmp;
  begin
    tmp = vector >> 32;
    readslicef_33_1_32 = tmp[0:0];
  end
  endfunction


  function automatic [24:0] conv_s2s_24_25 ;
    input [23:0]  vector ;
  begin
    conv_s2s_24_25 = {vector[23], vector};
  end
  endfunction


  function automatic [32:0] conv_s2s_32_33 ;
    input [31:0]  vector ;
  begin
    conv_s2s_32_33 = {vector[31], vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    SampleTest
// ------------------------------------------------------------------


module SampleTest (
  triangle_v_x_rsc_dat, triangle_v_y_rsc_dat, triangle_v_z_rsc_dat, triangle_R_rsc_dat,
      triangle_G_rsc_dat, triangle_B_rsc_dat, sample_x_rsc_dat, sample_y_rsc_dat,
      sample_R_rsc_dat, sample_G_rsc_dat, sample_B_rsc_dat, return_rsc_z, ccs_ccore_start_rsc_dat,
      ccs_ccore_clk, ccs_ccore_srst, ccs_ccore_en
);
  input [71:0] triangle_v_x_rsc_dat;
  input [71:0] triangle_v_y_rsc_dat;
  input [71:0] triangle_v_z_rsc_dat;
  input [23:0] triangle_R_rsc_dat;
  input [23:0] triangle_G_rsc_dat;
  input [23:0] triangle_B_rsc_dat;
  input [23:0] sample_x_rsc_dat;
  input [23:0] sample_y_rsc_dat;
  input [23:0] sample_R_rsc_dat;
  input [23:0] sample_G_rsc_dat;
  input [23:0] sample_B_rsc_dat;
  output return_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  SampleTest_run SampleTest_run_inst (
      .triangle_v_x_rsc_dat(triangle_v_x_rsc_dat),
      .triangle_v_y_rsc_dat(triangle_v_y_rsc_dat),
      .sample_x_rsc_dat(sample_x_rsc_dat),
      .sample_y_rsc_dat(sample_y_rsc_dat),
      .return_rsc_z(return_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_srst(ccs_ccore_srst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/Hash40to8_f681a366444cadb65f69de7d7f9582005b88_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   hsiangc@caddy10.stanford.edu
//  Generated date: Thu Nov 21 19:09:01 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    Hash40to8_run
// ------------------------------------------------------------------


module Hash40to8_run (
  input_rsc_dat, mask_rsc_dat, return_rsc_z, ccs_ccore_clk, ccs_ccore_srst, ccs_ccore_en
);
  input [39:0] input_rsc_dat;
  input [7:0] mask_rsc_dat;
  output [7:0] return_rsc_z;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [39:0] input_rsci_idat;
  wire [7:0] mask_rsci_idat;
  reg [7:0] return_rsci_d;

  wire[7:0] output_xor_nl;

  // Interconnect Declarations for Component Instantiations 
  ccs_in_v1 #(.rscid(32'sd22),
  .width(32'sd40)) input_rsci (
      .dat(input_rsc_dat),
      .idat(input_rsci_idat)
    );
  ccs_in_v1 #(.rscid(32'sd23),
  .width(32'sd8)) mask_rsci (
      .dat(mask_rsc_dat),
      .idat(mask_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd24),
  .width(32'sd8)) return_rsci (
      .d(return_rsci_d),
      .z(return_rsc_z)
    );
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      return_rsci_d <= 8'b00000000;
    end
    else if ( ccs_ccore_en ) begin
      return_rsci_d <= (output_xor_nl) & mask_rsci_idat;
    end
  end
  assign output_xor_nl = (input_rsci_idat[7:0]) ^ (input_rsci_idat[39:32]);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Hash40to8
// ------------------------------------------------------------------


module Hash40to8 (
  input_rsc_dat, mask_rsc_dat, return_rsc_z, ccs_ccore_start_rsc_dat, ccs_ccore_clk,
      ccs_ccore_srst, ccs_ccore_en
);
  input [39:0] input_rsc_dat;
  input [7:0] mask_rsc_dat;
  output [7:0] return_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  Hash40to8_run Hash40to8_run_inst (
      .input_rsc_dat(input_rsc_dat),
      .mask_rsc_dat(mask_rsc_dat),
      .return_rsc_z(return_rsc_z),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_srst(ccs_ccore_srst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> ../td_ccore_solutions/JitterSample_9f29a41aedde3d5448c1cd80aecb97caa616_0/rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   hsiangc@caddy10.stanford.edu
//  Generated date: Thu Nov 21 19:09:07 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    JitterSample_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module JitterSample_run_run_fsm (
  ccs_ccore_clk, ccs_ccore_srst, ccs_ccore_en, fsm_output
);
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;
  output [1:0] fsm_output;
  reg [1:0] fsm_output;


  // FSM State Type Declaration for JitterSample_run_run_fsm_1
  parameter
    run_rlp_C_0 = 1'd0,
    main_C_0 = 1'd1;

  reg [0:0] state_var;
  reg [0:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : JitterSample_run_run_fsm_1
    case (state_var)
      main_C_0 : begin
        fsm_output = 2'b10;
        state_var_NS = main_C_0;
      end
      // run_rlp_C_0
      default : begin
        fsm_output = 2'b01;
        state_var_NS = main_C_0;
      end
    endcase
  end

  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      state_var <= run_rlp_C_0;
    end
    else if ( ccs_ccore_en ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    JitterSample_run_wait_dp
// ------------------------------------------------------------------


module JitterSample_run_wait_dp (
  ccs_ccore_en, ensig_cgo_iro, ensig_cgo, x_hash_run_cmp_ccs_ccore_en
);
  input ccs_ccore_en;
  input ensig_cgo_iro;
  input ensig_cgo;
  output x_hash_run_cmp_ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  assign x_hash_run_cmp_ccs_ccore_en = ccs_ccore_en & (ensig_cgo | ensig_cgo_iro);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    CGHpart
// ------------------------------------------------------------------


module CGHpart (
  CGHpart_isig
);
  input CGHpart_isig;



  // Interconnect Declarations for Component Instantiations 
endmodule

// ------------------------------------------------------------------
//  Design Unit:    JitterSample_run
// ------------------------------------------------------------------


module JitterSample_run (
  sample_x_rsc_dat, sample_y_rsc_dat, config_subsample_rsc_dat, return_x_rsc_z, return_y_rsc_z,
      ccs_ccore_start_rsc_dat, ccs_ccore_clk, ccs_ccore_srst, ccs_ccore_en
);
  input [23:0] sample_x_rsc_dat;
  input [23:0] sample_y_rsc_dat;
  input [3:0] config_subsample_rsc_dat;
  output [23:0] return_x_rsc_z;
  output [23:0] return_y_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;


  // Interconnect Declarations
  wire [23:0] sample_x_rsci_idat;
  wire [23:0] sample_y_rsci_idat;
  wire [3:0] config_subsample_rsci_idat;
  wire ccs_ccore_start_rsci_idat;
  wire [7:0] x_hash_run_cmp_return_rsc_z;
  wire x_hash_run_cmp_ccs_ccore_en;
  wire [7:0] x_hash_run_cmp_1_return_rsc_z;
  reg [13:0] return_x_rsci_d_23_10;
  reg [7:0] return_x_rsci_d_9_2;
  reg [1:0] return_x_rsci_d_1_0;
  reg [13:0] return_y_rsci_d_23_10;
  reg [7:0] return_y_rsci_d_9_2;
  reg [1:0] return_y_rsci_d_1_0;
  wire [1:0] fsm_output;
  reg asn_itm_1;
  reg main_stage_0_2;
  reg reg_ensig_cgo_1_cse;
  wire and_3_rmff;
  wire and_1_rmff;
  wire switch_lp_nor_11_seb_1;
  wire [4:0] switch_lp_switch_lp_switch_lp_nand_itm;
  wire switch_lp_or_itm;
  reg [23:0] sample_y_buf_sva_1;
  reg [23:0] sample_x_buf_sva_1;
  wire switch_lp_equal_tmp_4;
  wire switch_lp_equal_tmp_5;
  wire switch_lp_equal_tmp_6;
  wire sample_y_and_cse;

  wire[0:0] switch_lp_nor_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [23:0] nl_return_x_rsci_d;
  assign nl_return_x_rsci_d = {return_x_rsci_d_23_10 , return_x_rsci_d_9_2 , return_x_rsci_d_1_0};
  wire [23:0] nl_return_y_rsci_d;
  assign nl_return_y_rsci_d = {return_y_rsci_d_23_10 , return_y_rsci_d_9_2 , return_y_rsci_d_1_0};
  wire [39:0] nl_x_hash_run_cmp_input_rsc_dat;
  assign nl_x_hash_run_cmp_input_rsc_dat = {(sample_y_rsci_idat[23:4]) , (sample_x_rsci_idat[23:4])};
  wire [7:0] nl_x_hash_run_cmp_mask_rsc_dat;
  assign nl_x_hash_run_cmp_mask_rsc_dat = {switch_lp_equal_tmp_4 , switch_lp_or_itm
      , (~ switch_lp_nor_11_seb_1) , switch_lp_switch_lp_switch_lp_nand_itm};
  wire [39:0] nl_x_hash_run_cmp_1_input_rsc_dat;
  assign nl_x_hash_run_cmp_1_input_rsc_dat = {(sample_x_rsci_idat[23:4]) , (sample_y_rsci_idat[23:4])};
  wire [7:0] nl_x_hash_run_cmp_1_mask_rsc_dat;
  assign nl_x_hash_run_cmp_1_mask_rsc_dat = {switch_lp_equal_tmp_4 , switch_lp_or_itm
      , (~ switch_lp_nor_11_seb_1) , switch_lp_switch_lp_switch_lp_nand_itm};
  ccs_in_v1 #(.rscid(32'sd25),
  .width(32'sd24)) sample_x_rsci (
      .dat(sample_x_rsc_dat),
      .idat(sample_x_rsci_idat)
    );
  ccs_in_v1 #(.rscid(32'sd26),
  .width(32'sd24)) sample_y_rsci (
      .dat(sample_y_rsc_dat),
      .idat(sample_y_rsci_idat)
    );
  ccs_in_v1 #(.rscid(32'sd30),
  .width(32'sd4)) config_subsample_rsci (
      .dat(config_subsample_rsc_dat),
      .idat(config_subsample_rsci_idat)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd31),
  .width(32'sd24)) return_x_rsci (
      .d(nl_return_x_rsci_d[23:0]),
      .z(return_x_rsc_z)
    );
  mgc_out_dreg_v2 #(.rscid(32'sd32),
  .width(32'sd24)) return_y_rsci (
      .d(nl_return_y_rsci_d[23:0]),
      .z(return_y_rsc_z)
    );
  ccs_in_v1 #(.rscid(32'sd48),
  .width(32'sd1)) ccs_ccore_start_rsci (
      .dat(ccs_ccore_start_rsc_dat),
      .idat(ccs_ccore_start_rsci_idat)
    );
  Hash40to8  x_hash_run_cmp (
      .input_rsc_dat(nl_x_hash_run_cmp_input_rsc_dat[39:0]),
      .mask_rsc_dat(nl_x_hash_run_cmp_mask_rsc_dat[7:0]),
      .return_rsc_z(x_hash_run_cmp_return_rsc_z),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_en(x_hash_run_cmp_ccs_ccore_en),
      .ccs_ccore_srst(ccs_ccore_srst),
      .ccs_ccore_start_rsc_dat(and_1_rmff)
    );
  Hash40to8  x_hash_run_cmp_1 (
      .input_rsc_dat(nl_x_hash_run_cmp_1_input_rsc_dat[39:0]),
      .mask_rsc_dat(nl_x_hash_run_cmp_1_mask_rsc_dat[7:0]),
      .return_rsc_z(x_hash_run_cmp_1_return_rsc_z),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_en(x_hash_run_cmp_ccs_ccore_en),
      .ccs_ccore_srst(ccs_ccore_srst),
      .ccs_ccore_start_rsc_dat(and_1_rmff)
    );
  JitterSample_run_wait_dp JitterSample_run_wait_dp_inst (
      .ccs_ccore_en(ccs_ccore_en),
      .ensig_cgo_iro(and_3_rmff),
      .ensig_cgo(reg_ensig_cgo_1_cse),
      .x_hash_run_cmp_ccs_ccore_en(x_hash_run_cmp_ccs_ccore_en)
    );
  JitterSample_run_run_fsm JitterSample_run_run_fsm_inst (
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_srst(ccs_ccore_srst),
      .ccs_ccore_en(ccs_ccore_en),
      .fsm_output(fsm_output)
    );
  assign switch_lp_nor_nl = ~(((config_subsample_rsci_idat==4'b0001)) | switch_lp_equal_tmp_5
      | switch_lp_equal_tmp_6 | switch_lp_equal_tmp_4);
  assign switch_lp_switch_lp_switch_lp_nand_itm = ~(MUX_v_5_2_2(5'b00000, ({{4{switch_lp_nor_11_seb_1}},
      switch_lp_nor_11_seb_1}), (switch_lp_nor_nl)));
  assign switch_lp_or_itm = switch_lp_equal_tmp_6 | switch_lp_equal_tmp_4;
  assign and_1_rmff = ccs_ccore_start_rsci_idat & (fsm_output[1]);
  assign and_3_rmff = ((asn_itm_1 & main_stage_0_2) | ccs_ccore_start_rsci_idat)
      & (fsm_output[1]);
  assign sample_y_and_cse = ccs_ccore_en & ccs_ccore_start_rsci_idat;
  assign switch_lp_equal_tmp_4 = (config_subsample_rsci_idat==4'b1000);
  assign switch_lp_nor_11_seb_1 = ~(switch_lp_equal_tmp_5 | switch_lp_equal_tmp_6
      | switch_lp_equal_tmp_4);
  assign switch_lp_equal_tmp_5 = (config_subsample_rsci_idat==4'b0010);
  assign switch_lp_equal_tmp_6 = (config_subsample_rsci_idat==4'b0100);
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      return_y_rsci_d_1_0 <= 2'b00;
      return_y_rsci_d_9_2 <= 8'b00000000;
      return_y_rsci_d_23_10 <= 14'b00000000000000;
      return_x_rsci_d_1_0 <= 2'b00;
      return_x_rsci_d_9_2 <= 8'b00000000;
      return_x_rsci_d_23_10 <= 14'b00000000000000;
      reg_ensig_cgo_1_cse <= 1'b0;
      asn_itm_1 <= 1'b0;
      main_stage_0_2 <= 1'b0;
    end
    else if ( ccs_ccore_en ) begin
      return_y_rsci_d_1_0 <= sample_y_buf_sva_1[1:0];
      return_y_rsci_d_9_2 <= (sample_y_buf_sva_1[9:2]) | x_hash_run_cmp_1_return_rsc_z;
      return_y_rsci_d_23_10 <= sample_y_buf_sva_1[23:10];
      return_x_rsci_d_1_0 <= sample_x_buf_sva_1[1:0];
      return_x_rsci_d_9_2 <= (sample_x_buf_sva_1[9:2]) | x_hash_run_cmp_return_rsc_z;
      return_x_rsci_d_23_10 <= sample_x_buf_sva_1[23:10];
      reg_ensig_cgo_1_cse <= and_3_rmff;
      asn_itm_1 <= ccs_ccore_start_rsci_idat;
      main_stage_0_2 <= fsm_output[1];
    end
  end
  always @(posedge ccs_ccore_clk) begin
    if ( ccs_ccore_srst ) begin
      sample_y_buf_sva_1 <= 24'b000000000000000000000000;
      sample_x_buf_sva_1 <= 24'b000000000000000000000000;
    end
    else if ( sample_y_and_cse ) begin
      sample_y_buf_sva_1 <= sample_y_rsci_idat;
      sample_x_buf_sva_1 <= sample_x_rsci_idat;
    end
  end

  function automatic [4:0] MUX_v_5_2_2;
    input [4:0] input_0;
    input [4:0] input_1;
    input [0:0] sel;
    reg [4:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_5_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    JitterSample
// ------------------------------------------------------------------


module JitterSample (
  sample_x_rsc_dat, sample_y_rsc_dat, sample_R_rsc_dat, sample_G_rsc_dat, sample_B_rsc_dat,
      config_subsample_rsc_dat, return_x_rsc_z, return_y_rsc_z, ccs_ccore_start_rsc_dat,
      ccs_ccore_clk, ccs_ccore_srst, ccs_ccore_en
);
  input [23:0] sample_x_rsc_dat;
  input [23:0] sample_y_rsc_dat;
  input [23:0] sample_R_rsc_dat;
  input [23:0] sample_G_rsc_dat;
  input [23:0] sample_B_rsc_dat;
  input [3:0] config_subsample_rsc_dat;
  output [23:0] return_x_rsc_z;
  output [23:0] return_y_rsc_z;
  input ccs_ccore_start_rsc_dat;
  input ccs_ccore_clk;
  input ccs_ccore_srst;
  input ccs_ccore_en;



  // Interconnect Declarations for Component Instantiations 
  JitterSample_run JitterSample_run_inst (
      .sample_x_rsc_dat(sample_x_rsc_dat),
      .sample_y_rsc_dat(sample_y_rsc_dat),
      .config_subsample_rsc_dat(config_subsample_rsc_dat),
      .return_x_rsc_z(return_x_rsc_z),
      .return_y_rsc_z(return_y_rsc_z),
      .ccs_ccore_start_rsc_dat(ccs_ccore_start_rsc_dat),
      .ccs_ccore_clk(ccs_ccore_clk),
      .ccs_ccore_srst(ccs_ccore_srst),
      .ccs_ccore_en(ccs_ccore_en)
    );
endmodule




//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/ccs_genreg_v1.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------

module ccs_genreg_v1 (clk, en, arst, srst, d, z);
    parameter integer width   = 1;
    parameter integer ph_clk  = 1;
    parameter integer ph_en   = 1;
    parameter integer ph_arst = 0;
    parameter integer ph_srst = 1;
    parameter         has_en  = 1'b1;

    input clk;
    input en;
    input arst;
    input srst;
    input      [width-1:0] d;
    output reg [width-1:0] z;

    //  Generate parameters
    //  ph_clk | ph_arst | has_en     Label:
    //    1        1          1       GEN_CLK1_ARST1_EN1
    //    1        1          0       GEN_CLK1_ARST1_EN0
    //    1        0          1       GEN_CLK1_ARST0_EN1
    //    1        0          0       GEN_CLK1_ARST0_EN0
    //    0        1          1       GEN_CLK0_ARST1_EN1
    //    0        1          0       GEN_CLK0_ARST1_EN0
    //    0        0          1       GEN_CLK0_ARST0_EN1
    //    0        0          0       GEN_CLK0_ARST0_EN0
    
    generate 
      // Pos edge clock, pos edge async reset, has enable
      if (ph_clk == 1 & ph_arst == 1 & has_en == 1)
      begin: GEN_CLK1_ARST1_EN1
        always @(posedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK1_ARST1_EN1

      // Pos edge clock, pos edge async reset, no enable
      else if (ph_clk == 1 & ph_arst == 1 & has_en == 0)
      begin: GEN_CLK1_ARST1_EN0
        always @(posedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK1_ARST1_EN0

      // Pos edge clock, neg edge async reset, has enable
      else if (ph_clk == 1 & ph_arst == 0 & has_en == 1)
      begin: GEN_CLK1_ARST0_EN1
        always @(posedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK1_ARST0_EN1

      // Pos edge clock, neg edge async reset, no enable
      else if (ph_clk == 1 & ph_arst == 0 & has_en == 0)
      begin: GEN_CLK1_ARST0_EN0
        always @(posedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK1_ARST0_EN0


      // Neg edge clock, pos edge async reset, has enable
      if (ph_clk == 0 & ph_arst == 1 & has_en == 1)
      begin: GEN_CLK0_ARST1_EN1
        always @(negedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK0_ARST1_EN1

      // Neg edge clock, pos edge async reset, no enable
      else if (ph_clk == 0 & ph_arst == 1 & has_en == 0)
      begin: GEN_CLK0_ARST1_EN0
        always @(negedge clk or posedge arst)
          if (arst == 1'b1)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK0_ARST1_EN0

      // Neg edge clock, neg edge async reset, has enable
      else if (ph_clk == 0 & ph_arst == 0 & has_en == 1)
      begin: GEN_CLK0_ARST0_EN1
        always @(negedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else if (en == $unsigned(ph_en))
            z <= d;
      end  //GEN_CLK0_ARST0_EN1

      // Neg edge clock, neg edge async reset, no enable
      else if (ph_clk == 0 & ph_arst == 0 & has_en == 0)
      begin: GEN_CLK0_ARST0_EN0
        always @(negedge clk or negedge arst)
          if (arst == 1'b0)
            z <= {width{1'b0}};
          else if (srst == $unsigned(ph_srst))
            z <= {width{1'b0}};
          else
            z <= d;
      end  //GEN_CLK0_ARST0_EN0
    endgenerate
endmodule


//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/ccs_fifo_wait_core_v5.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------

/*
 *            _________________________________________________
 * WRITER    |                                                 |   READER
 *           |               ccs_fifo_wait_core                |
 *           |             _____________________               |
 *        --<|  din_rdy --<|  ---------------- <|--- dout_rdy <|---
 *           |             |       FIFO         |              |
 *        ---|> din_vld ---|> ----------------  |>-- dout_vld  |>--
 *        ---|>     din ---|> ----------------  |>-- dout      |>--
 *           |             |____________________|              |
 *           |_________________________________________________|
 *
 *    rdy    - can be considered as a notFULL signal
 *    vld    - can be considered as a notEMPTY signal
 *    is_idle - clk can be safely gated
 *
 * Change History:
 *    2019-01-24 - Add assertion to verify rdy signal behavior under reset.
 *                 Fix bug in that behavior.
 */

module ccs_fifo_wait_core_v5 (clk, en, arst, srst, din_vld, din_rdy, din, dout_vld, dout_rdy, dout, sd, is_idle);

    parameter integer rscid    = 0;     // resource ID
    parameter integer width    = 8;     // fifo width
    parameter integer sz_width = 8;     // size of port for elements in fifo
    parameter integer fifo_sz  = 8;     // fifo depth
    parameter integer ph_clk   = 1;  // clock polarity 1=rising edge, 0=falling edge
    parameter integer ph_en    = 1;  // clock enable polarity
    parameter integer ph_arst  = 1;  // async reset polarity
    parameter integer ph_srst  = 1;  // sync reset polarity
    parameter integer ph_log2  = 3;     // log2(fifo_sz)

    input                 clk;
    input                 en;
    input                 arst;
    input                 srst;
    input                 din_vld;    // writer has valid data 
    output                din_rdy;    // fifo ready for data (not full)
    input  [width-1:0]    din;
    output                dout_vld;   // fifo has valid data (not empty)
    input                 dout_rdy;   // reader ready for data
    output [width-1:0]    dout;
    output [sz_width-1:0] sd; 
    output                is_idle;

    localparam integer fifo_b  = width * fifo_sz;
    localparam integer fifo_mx = (fifo_sz > 0) ? (fifo_sz-1) : 0 ;
    localparam integer fifo_mx_over_8 = fifo_mx / 8 ;

    reg      [fifo_mx:0] stat_pre;
    wire     [fifo_mx:0] stat;
    reg      [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff_pre;
    wire     [( (fifo_b > 0) ? fifo_b : 1)-1:0] buff;
    reg      [fifo_mx:0] en_l;
    reg      [fifo_mx_over_8:0] en_l_s;

    reg      [width-1:0] buff_nxt;

    reg                  stat_nxt;
    reg                  stat_behind;
    reg                  stat_ahead;
    reg                  en_l_var;

    integer              i;
    genvar               eni;

    wire [32:0]          size_t;
    reg  [31:0]          count;
    reg  [31:0]          count_t;
    reg  [32:0]          n_elem;
    // synopsys translate_off
    reg  [31:0]          peak;
    initial
    begin
      count = 32'b0;
      peak  = 32'b0;
    end
    // synopsys translate_on
  wire din_rdy_drv  ;
  wire dout_vld_drv ;
    wire                 active;
    wire                 din_vld_int;
    wire                 hs_init;

    //assign din_rdy  = din_rdy_drv;    // dout_rdy | (~stat[0] & hs_init);   // original
    assign din_rdy = (fifo_sz > 0) ? (~stat[0] | dout_rdy) && hs_init : dout_rdy ;       // experiment
 
    assign dout_vld = dout_vld_drv;
    assign is_idle = (~((din_vld && din_rdy) || (dout_vld && dout_rdy))) && hs_init;

    generate
    if ( fifo_sz > 0 )
    begin: FIFO_REG
    assign din_vld_int = din_vld & hs_init;
    // KH assign active = din_vld_int | dout_rdy; // (din_vld & ~din_rdy) | (dout_rdy & ~dout_vld);
    assign active =   (din_vld_int & din_rdy_drv) | (dout_rdy & dout_vld_drv);

      assign din_rdy_drv = dout_rdy | (~stat[0] & hs_init);
      assign dout_vld_drv = din_vld_int | stat[fifo_sz-1];

      assign size_t = (count - {31'b0 , (dout_rdy & stat[fifo_sz-1])}) + { 31'b0, din_vld_int};
      assign sd = size_t[sz_width-1:0];

      assign dout = (stat[fifo_sz-1]) ? buff[fifo_b-1:width*(fifo_sz-1)] : din;

      always @(*)
      begin: FIFOPROC
        n_elem = 33'b0;
        for (i = fifo_sz-1; i >= 0; i = i - 1)
        begin
          stat_behind = (i != 0) ? stat[i-1] : 1'b0;
          stat_ahead  = (i != (fifo_sz-1)) ? stat[i+1] : 1'b1;

          // Determine if this buffer element will have data
          stat_nxt = stat_ahead &                       // valid element ahead of this one (or head)
                       (stat_behind                     // valid element behind this one
                         | (stat[i] & (~dout_rdy))      // valid element and output not ready (in use, no tx)
                         | (stat[i] & din_vld_int)      // valid element and input has data
                         | (din_vld_int  & (~dout_rdy)) // input has data and output not ready
                       );
          stat_pre[i] = stat_nxt;

          if (dout_rdy & stat_behind )
          begin
            // pop n shift
            buff_nxt[0+:width] = buff[width*(i-1)+:width];
            en_l_var = 1'b1;
          end
          else if (din_vld_int & stat_nxt & ~((~dout_rdy) & stat[i]))
          begin
            // update tail with input data
            buff_nxt = din;
            en_l_var = 1'b1;
          end
          else
          begin
            // no-op, disable register
            buff_nxt = din; // Don't care input to disabled flop
            en_l_var = 1'b0;
          end
          buff_pre[width*i+:width] = buff_nxt[0+:width];
             
          if (ph_en != 0)
            en_l[i] = en & en_l_var;
          else
            en_l[i] = en | ~en_l_var;

          if ((stat_ahead == 1'b1) & (stat[i] == 1'b0)) 
            //found tail, update the number of elements for count
            n_elem = ($unsigned(fifo_sz) - 1) - $unsigned(i);
        end //for loop

        // Enable for stat registers (partitioned into banks of eight)
        // Take care of the head first
        if (ph_en != 0)
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = en & active;
        else
          en_l_s[(((fifo_sz > 0) ? fifo_sz : 1)-1)/8] = en | ~active;

        // Now every eight
        for (i = fifo_sz-1; i >= 7; i = i - 1)
        begin
          if (($unsigned(i)%8) == 0)
          begin
            if (ph_en != 0)
              en_l_s[(i/8)-1] = en & (stat[i]) & (active);
            else
              en_l_s[(i/8)-1] = en | ~(stat[i]) | ~(active);
          end
        end
        
        // Update count and peak
        if ( stat[fifo_sz-1] == 1'b0 )
          count_t = 32'b0;
        else if ( stat[0] == 1'b1 )
          count_t = fifo_sz;
        else 
          count_t = n_elem[31:0];
        count = count_t;
        // synopsys translate_off
        if ( peak < count )
          peak = count;
        // synopsys translate_on
      end //FIFOPROC

      // Handshake valid after reset
      ccs_genreg_v1
      #(
        .width   (1),
        .ph_clk  (ph_clk),
        .ph_en   (1),
        .ph_arst (ph_arst),
        .ph_srst (ph_srst),
        .has_en  (1'b0)
      )
      HS_INIT_REG
      (
        .clk     (clk),
        .en      (1'b1),
        .arst    (arst),
        .srst    (srst),
        .d       (1'b1),
        .z       (hs_init)
      );

      // Buffer and status registers
      for (eni = fifo_sz-1; eni >= 0; eni = eni - 1)
      begin: GEN_REGS
        ccs_genreg_v1
        #(
          .width   (1),
          .ph_clk  (ph_clk),
          .ph_en   (ph_en),
          .ph_arst (ph_arst),
          .ph_srst (ph_srst),
          .has_en  (1'b1)
        )
        STATREG
        (
          .clk     (clk),
          .en      (en_l_s[eni/8]),
          .arst    (arst),
          .srst    (srst),
          .d       (stat_pre[eni]),
          .z       (stat[eni])
        );

        ccs_genreg_v1
        #(
          .width   (width),
          .ph_clk  (ph_clk),
          .ph_en   (ph_en),
          .ph_arst (ph_arst),
          .ph_srst (ph_srst),
          .has_en  (1'b1)
        )
        BUFREG
        (
          .clk     (clk),
          .en      (en_l[eni]),
          .arst    (arst),
          .srst    (srst),
          .d       (buff_pre[width*eni+:width]),
          .z       (buff[width*eni+:width])
        );
      end

    end
    else
    begin: FEED_THRU
      assign din_rdy_drv  = dout_rdy;
      assign dout_vld_drv = din_vld;
      assign dout     = din;
      // non-blocking is not II=1 when fifo_sz=0
      assign sd = {{(sz_width-1){1'b0}}, (din_vld & ~dout_rdy)};
    end
    endgenerate

`ifdef RDY_ASRT 
    generate
    if (ph_clk==1) 
    begin: POS_CLK_ASSERT

       property rdyAsrt ;
         @(posedge clk) ((srst==ph_srst) || (arst==ph_arst)) |=> (din_rdy==0);
       endproperty
       a1Pos: assert property(rdyAsrt);

    end else if (ph_clk==0) 
    begin: NEG_CLK_ASSERT

       property rdyAsrt ;
         @(negedge clk) ((srst==ph_srst) || (arst==ph_arst)) |=> (din_rdy==0);
       endproperty
       a1Neg: assert property(rdyAsrt);

    end
    endgenerate

`endif
   
endmodule



//------> /cad/mentor/2019.11/Catapult_Synthesis_10.4b-841621/Mgc_home/pkgs/siflibs/ccs_pipe_v5.v 
//------------------------------------------------------------------------------
// Catapult Synthesis - Sample I/O Port Library
//
// Copyright (c) 2003-2017 Mentor Graphics Corp.
//       All Rights Reserved
//
// This document may be used and distributed without restriction provided that
// this copyright statement is not removed from the file and that any derivative
// work contains this copyright notice.
//
// The design information contained in this file is intended to be an example
// of the functionality which the end user may study in preparation for creating
// their own custom interfaces. This design does not necessarily present a 
// complete implementation of the named protocol or standard.
//
//------------------------------------------------------------------------------
/*
 *
 *            _______________________________________________
 * WRITER    |                                              |          READER
 *           |                 ccs_pipe                     |
 *           |            ______________________            |
 *        --<| din_rdy --<|  ---------------- <|---dout_rdy<|---
 *           |            |       FIFO         |            |
 *        ---|>din_vld ---|> ----------------  |>--dout_vld |>--
 *        ---|>din -------|> ----------------  |> -----dout |>--
 *           |            |____________________|            |
 *           |______________________________________________|
 *
 *    din_rdy     - can be considered as a notFULL signal
 *    dout_vld    - can be considered as a notEMPTY signal
 *    write_stall - an internal debug signal formed from din_vld & !din_rdy
 *    read_stall  - an internal debug signal formed from dout_rdy & !dout_vld
 *    is_idle     - indicates the clock can be safely gated
 */

module ccs_pipe_v5 (clk, en, arst, srst, din_rdy, din_vld, din, dout_rdy, dout_vld, dout, sz, sz_req, is_idle);

    parameter integer rscid    = 0; // resource ID
    parameter integer width    = 8; // fifo width
    parameter integer sz_width = 8; // width of size of elements in fifo
    parameter integer fifo_sz  = 8; // fifo depth
    parameter integer log2_sz  = 3; // log2(fifo_sz)
    parameter integer ph_clk   = 1; // clock polarity 1=rising edge, 0=falling edge
    parameter integer ph_en    = 1; // clock enable polarity
    parameter integer ph_arst  = 1; // async reset polarity
    parameter integer ph_srst  = 1; // sync reset polarity

    // clock 
    input              clk;
    input              en;
    input              arst;
    input              srst;

    // writer
    output             din_rdy;
    input              din_vld;
    input  [width-1:0] din;

    // reader
    input              dout_rdy;
    output             dout_vld;
    output [width-1:0] dout;

    // size
    output [sz_width-1:0] sz;
    input                 sz_req;
    output                is_idle;
   
    // synopsys translate_off
    wire   write_stall;
    wire   read_stall;
    assign write_stall = din_vld & !din_rdy;
    assign read_stall  = dout_rdy & !dout_vld;
    // synopsys translate_on

    ccs_fifo_wait_core_v5
    #(
        .rscid    (rscid),
        .width    (width),
        .sz_width (sz_width),
        .fifo_sz  (fifo_sz),
        .ph_clk   (ph_clk),
        .ph_en    (ph_en),
        .ph_arst  (ph_arst),
        .ph_srst  (ph_srst),
        .ph_log2  (log2_sz)
    )
    FIFO
    (
        .clk      (clk),
        .en       (en),
        .arst     (arst),
        .srst     (srst),
        .din_vld  (din_vld),
        .din_rdy  (din_rdy),
        .din      (din),
        .dout_vld (dout_vld),
        .dout_rdy (dout_rdy),
        .dout     (dout),
        .sd       (sz),
        .is_idle  (is_idle)
    );

endmodule


//------> ./rtl.v 
// ----------------------------------------------------------------------
//  HLS HDL:        Verilog Netlister
//  HLS Version:    10.4b/841621 Production Release
//  HLS Date:       Thu Oct 24 17:20:07 PDT 2019
// 
//  Generated by:   hsiangc@caddy10.stanford.edu
//  Generated date: Thu Nov 21 20:27:26 2024
// ----------------------------------------------------------------------

// 
// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_run_fsm (
  clk, rst, run_wen, fsm_output, for_C_0_tr0
);
  input clk;
  input rst;
  input run_wen;
  output [4:0] fsm_output;
  reg [4:0] fsm_output;
  input for_C_0_tr0;


  // FSM State Type Declaration for BoundingBoxGenerator_run_run_fsm_1
  parameter
    run_rlp_C_0 = 3'd0,
    main_C_0 = 3'd1,
    for_C_0 = 3'd2,
    main_C_1 = 3'd3,
    main_C_2 = 3'd4;

  reg [2:0] state_var;
  reg [2:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : BoundingBoxGenerator_run_run_fsm_1
    case (state_var)
      main_C_0 : begin
        fsm_output = 5'b00010;
        state_var_NS = for_C_0;
      end
      for_C_0 : begin
        fsm_output = 5'b00100;
        if ( for_C_0_tr0 ) begin
          state_var_NS = main_C_1;
        end
        else begin
          state_var_NS = for_C_0;
        end
      end
      main_C_1 : begin
        fsm_output = 5'b01000;
        state_var_NS = main_C_2;
      end
      main_C_2 : begin
        fsm_output = 5'b10000;
        state_var_NS = main_C_0;
      end
      // run_rlp_C_0
      default : begin
        fsm_output = 5'b00001;
        state_var_NS = main_C_0;
      end
    endcase
  end

  always @(posedge clk) begin
    if ( rst ) begin
      state_var <= run_rlp_C_0;
    end
    else if ( run_wen ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_staller
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_staller (
  run_wen, triangle_in_rsci_wen_comp, screen_in_rsci_wen_comp, config_in_rsci_wen_comp,
      bbox_out_rsci_wen_comp, triangle_out_rsci_wen_comp, config_out_rsci_wen_comp
);
  output run_wen;
  input triangle_in_rsci_wen_comp;
  input screen_in_rsci_wen_comp;
  input config_in_rsci_wen_comp;
  input bbox_out_rsci_wen_comp;
  input triangle_out_rsci_wen_comp;
  input config_out_rsci_wen_comp;



  // Interconnect Declarations for Component Instantiations 
  assign run_wen = triangle_in_rsci_wen_comp & screen_in_rsci_wen_comp & config_in_rsci_wen_comp
      & bbox_out_rsci_wen_comp & triangle_out_rsci_wen_comp & config_out_rsci_wen_comp;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_config_out_rsci_config_out_wait_dp
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_config_out_rsci_config_out_wait_dp (
  clk, rst, config_out_rsci_oswt, config_out_rsci_wen_comp, config_out_rsci_biwt,
      config_out_rsci_bdwt, config_out_rsci_bcwt
);
  input clk;
  input rst;
  input config_out_rsci_oswt;
  output config_out_rsci_wen_comp;
  input config_out_rsci_biwt;
  input config_out_rsci_bdwt;
  output config_out_rsci_bcwt;
  reg config_out_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign config_out_rsci_wen_comp = (~ config_out_rsci_oswt) | config_out_rsci_biwt
      | config_out_rsci_bcwt;
  always @(posedge clk) begin
    if ( rst ) begin
      config_out_rsci_bcwt <= 1'b0;
    end
    else begin
      config_out_rsci_bcwt <= ~((~(config_out_rsci_bcwt | config_out_rsci_biwt))
          | config_out_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_config_out_rsci_config_out_wait_ctrl
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_config_out_rsci_config_out_wait_ctrl (
  run_wen, config_out_rsci_oswt, config_out_rsci_irdy, config_out_rsci_biwt, config_out_rsci_bdwt,
      config_out_rsci_bcwt, config_out_rsci_ivld_run_sct
);
  input run_wen;
  input config_out_rsci_oswt;
  input config_out_rsci_irdy;
  output config_out_rsci_biwt;
  output config_out_rsci_bdwt;
  input config_out_rsci_bcwt;
  output config_out_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire config_out_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign config_out_rsci_bdwt = config_out_rsci_oswt & run_wen;
  assign config_out_rsci_biwt = config_out_rsci_ogwt & config_out_rsci_irdy;
  assign config_out_rsci_ogwt = config_out_rsci_oswt & (~ config_out_rsci_bcwt);
  assign config_out_rsci_ivld_run_sct = config_out_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_triangle_out_rsci_triangle_out_wait_dp
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_triangle_out_rsci_triangle_out_wait_dp (
  clk, rst, triangle_out_rsci_oswt, triangle_out_rsci_wen_comp, triangle_out_rsci_biwt,
      triangle_out_rsci_bdwt, triangle_out_rsci_bcwt
);
  input clk;
  input rst;
  input triangle_out_rsci_oswt;
  output triangle_out_rsci_wen_comp;
  input triangle_out_rsci_biwt;
  input triangle_out_rsci_bdwt;
  output triangle_out_rsci_bcwt;
  reg triangle_out_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign triangle_out_rsci_wen_comp = (~ triangle_out_rsci_oswt) | triangle_out_rsci_biwt
      | triangle_out_rsci_bcwt;
  always @(posedge clk) begin
    if ( rst ) begin
      triangle_out_rsci_bcwt <= 1'b0;
    end
    else begin
      triangle_out_rsci_bcwt <= ~((~(triangle_out_rsci_bcwt | triangle_out_rsci_biwt))
          | triangle_out_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_triangle_out_rsci_triangle_out_wait_ctrl
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_triangle_out_rsci_triangle_out_wait_ctrl (
  run_wen, triangle_out_rsci_oswt, triangle_out_rsci_irdy, triangle_out_rsci_biwt,
      triangle_out_rsci_bdwt, triangle_out_rsci_bcwt, triangle_out_rsci_ivld_run_sct
);
  input run_wen;
  input triangle_out_rsci_oswt;
  input triangle_out_rsci_irdy;
  output triangle_out_rsci_biwt;
  output triangle_out_rsci_bdwt;
  input triangle_out_rsci_bcwt;
  output triangle_out_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire triangle_out_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign triangle_out_rsci_bdwt = triangle_out_rsci_oswt & run_wen;
  assign triangle_out_rsci_biwt = triangle_out_rsci_ogwt & triangle_out_rsci_irdy;
  assign triangle_out_rsci_ogwt = triangle_out_rsci_oswt & (~ triangle_out_rsci_bcwt);
  assign triangle_out_rsci_ivld_run_sct = triangle_out_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_bbox_out_rsci_bbox_out_wait_dp
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_bbox_out_rsci_bbox_out_wait_dp (
  clk, rst, bbox_out_rsci_oswt, bbox_out_rsci_wen_comp, bbox_out_rsci_biwt, bbox_out_rsci_bdwt,
      bbox_out_rsci_bcwt
);
  input clk;
  input rst;
  input bbox_out_rsci_oswt;
  output bbox_out_rsci_wen_comp;
  input bbox_out_rsci_biwt;
  input bbox_out_rsci_bdwt;
  output bbox_out_rsci_bcwt;
  reg bbox_out_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign bbox_out_rsci_wen_comp = (~ bbox_out_rsci_oswt) | bbox_out_rsci_biwt | bbox_out_rsci_bcwt;
  always @(posedge clk) begin
    if ( rst ) begin
      bbox_out_rsci_bcwt <= 1'b0;
    end
    else begin
      bbox_out_rsci_bcwt <= ~((~(bbox_out_rsci_bcwt | bbox_out_rsci_biwt)) | bbox_out_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_bbox_out_rsci_bbox_out_wait_ctrl
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_bbox_out_rsci_bbox_out_wait_ctrl (
  run_wen, bbox_out_rsci_oswt, bbox_out_rsci_irdy, bbox_out_rsci_biwt, bbox_out_rsci_bdwt,
      bbox_out_rsci_bcwt, bbox_out_rsci_ivld_run_sct
);
  input run_wen;
  input bbox_out_rsci_oswt;
  input bbox_out_rsci_irdy;
  output bbox_out_rsci_biwt;
  output bbox_out_rsci_bdwt;
  input bbox_out_rsci_bcwt;
  output bbox_out_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire bbox_out_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign bbox_out_rsci_bdwt = bbox_out_rsci_oswt & run_wen;
  assign bbox_out_rsci_biwt = bbox_out_rsci_ogwt & bbox_out_rsci_irdy;
  assign bbox_out_rsci_ogwt = bbox_out_rsci_oswt & (~ bbox_out_rsci_bcwt);
  assign bbox_out_rsci_ivld_run_sct = bbox_out_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_config_in_rsci_config_in_wait_dp
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_config_in_rsci_config_in_wait_dp (
  clk, rst, config_in_rsci_oswt, config_in_rsci_wen_comp, config_in_rsci_idat_mxwt,
      config_in_rsci_biwt, config_in_rsci_bdwt, config_in_rsci_bcwt, config_in_rsci_idat
);
  input clk;
  input rst;
  input config_in_rsci_oswt;
  output config_in_rsci_wen_comp;
  output [3:0] config_in_rsci_idat_mxwt;
  input config_in_rsci_biwt;
  input config_in_rsci_bdwt;
  output config_in_rsci_bcwt;
  reg config_in_rsci_bcwt;
  input [3:0] config_in_rsci_idat;


  // Interconnect Declarations
  reg [3:0] config_in_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign config_in_rsci_wen_comp = (~ config_in_rsci_oswt) | config_in_rsci_biwt
      | config_in_rsci_bcwt;
  assign config_in_rsci_idat_mxwt = MUX_v_4_2_2(config_in_rsci_idat, config_in_rsci_idat_bfwt,
      config_in_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      config_in_rsci_bcwt <= 1'b0;
    end
    else begin
      config_in_rsci_bcwt <= ~((~(config_in_rsci_bcwt | config_in_rsci_biwt)) | config_in_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      config_in_rsci_idat_bfwt <= 4'b0000;
    end
    else if ( ~ config_in_rsci_bcwt ) begin
      config_in_rsci_idat_bfwt <= config_in_rsci_idat_mxwt;
    end
  end

  function automatic [3:0] MUX_v_4_2_2;
    input [3:0] input_0;
    input [3:0] input_1;
    input [0:0] sel;
    reg [3:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_4_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_config_in_rsci_config_in_wait_ctrl
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_config_in_rsci_config_in_wait_ctrl (
  run_wen, config_in_rsci_oswt, config_in_rsci_biwt, config_in_rsci_bdwt, config_in_rsci_bcwt,
      config_in_rsci_irdy_run_sct, config_in_rsci_ivld
);
  input run_wen;
  input config_in_rsci_oswt;
  output config_in_rsci_biwt;
  output config_in_rsci_bdwt;
  input config_in_rsci_bcwt;
  output config_in_rsci_irdy_run_sct;
  input config_in_rsci_ivld;


  // Interconnect Declarations
  wire config_in_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign config_in_rsci_bdwt = config_in_rsci_oswt & run_wen;
  assign config_in_rsci_biwt = config_in_rsci_ogwt & config_in_rsci_ivld;
  assign config_in_rsci_ogwt = config_in_rsci_oswt & (~ config_in_rsci_bcwt);
  assign config_in_rsci_irdy_run_sct = config_in_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_screen_in_rsci_screen_in_wait_dp
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_screen_in_rsci_screen_in_wait_dp (
  clk, rst, screen_in_rsci_oswt, screen_in_rsci_wen_comp, screen_in_rsci_idat_mxwt,
      screen_in_rsci_biwt, screen_in_rsci_bdwt, screen_in_rsci_bcwt, screen_in_rsci_idat
);
  input clk;
  input rst;
  input screen_in_rsci_oswt;
  output screen_in_rsci_wen_comp;
  output [47:0] screen_in_rsci_idat_mxwt;
  input screen_in_rsci_biwt;
  input screen_in_rsci_bdwt;
  output screen_in_rsci_bcwt;
  reg screen_in_rsci_bcwt;
  input [47:0] screen_in_rsci_idat;


  // Interconnect Declarations
  reg [47:0] screen_in_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign screen_in_rsci_wen_comp = (~ screen_in_rsci_oswt) | screen_in_rsci_biwt
      | screen_in_rsci_bcwt;
  assign screen_in_rsci_idat_mxwt = MUX_v_48_2_2(screen_in_rsci_idat, screen_in_rsci_idat_bfwt,
      screen_in_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      screen_in_rsci_bcwt <= 1'b0;
    end
    else begin
      screen_in_rsci_bcwt <= ~((~(screen_in_rsci_bcwt | screen_in_rsci_biwt)) | screen_in_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      screen_in_rsci_idat_bfwt <= 48'b000000000000000000000000000000000000000000000000;
    end
    else if ( ~ screen_in_rsci_bcwt ) begin
      screen_in_rsci_idat_bfwt <= screen_in_rsci_idat_mxwt;
    end
  end

  function automatic [47:0] MUX_v_48_2_2;
    input [47:0] input_0;
    input [47:0] input_1;
    input [0:0] sel;
    reg [47:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_48_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_screen_in_rsci_screen_in_wait_ctrl
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_screen_in_rsci_screen_in_wait_ctrl (
  run_wen, screen_in_rsci_oswt, screen_in_rsci_biwt, screen_in_rsci_bdwt, screen_in_rsci_bcwt,
      screen_in_rsci_irdy_run_sct, screen_in_rsci_ivld
);
  input run_wen;
  input screen_in_rsci_oswt;
  output screen_in_rsci_biwt;
  output screen_in_rsci_bdwt;
  input screen_in_rsci_bcwt;
  output screen_in_rsci_irdy_run_sct;
  input screen_in_rsci_ivld;


  // Interconnect Declarations
  wire screen_in_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign screen_in_rsci_bdwt = screen_in_rsci_oswt & run_wen;
  assign screen_in_rsci_biwt = screen_in_rsci_ogwt & screen_in_rsci_ivld;
  assign screen_in_rsci_ogwt = screen_in_rsci_oswt & (~ screen_in_rsci_bcwt);
  assign screen_in_rsci_irdy_run_sct = screen_in_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_triangle_in_rsci_triangle_in_wait_dp
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_triangle_in_rsci_triangle_in_wait_dp (
  clk, rst, triangle_in_rsci_oswt, triangle_in_rsci_wen_comp, triangle_in_rsci_idat_mxwt,
      triangle_in_rsci_biwt, triangle_in_rsci_bdwt, triangle_in_rsci_bcwt, triangle_in_rsci_idat
);
  input clk;
  input rst;
  input triangle_in_rsci_oswt;
  output triangle_in_rsci_wen_comp;
  output [287:0] triangle_in_rsci_idat_mxwt;
  input triangle_in_rsci_biwt;
  input triangle_in_rsci_bdwt;
  output triangle_in_rsci_bcwt;
  reg triangle_in_rsci_bcwt;
  input [287:0] triangle_in_rsci_idat;


  // Interconnect Declarations
  reg [287:0] triangle_in_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign triangle_in_rsci_wen_comp = (~ triangle_in_rsci_oswt) | triangle_in_rsci_biwt
      | triangle_in_rsci_bcwt;
  assign triangle_in_rsci_idat_mxwt = MUX_v_288_2_2(triangle_in_rsci_idat, triangle_in_rsci_idat_bfwt,
      triangle_in_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      triangle_in_rsci_bcwt <= 1'b0;
    end
    else begin
      triangle_in_rsci_bcwt <= ~((~(triangle_in_rsci_bcwt | triangle_in_rsci_biwt))
          | triangle_in_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      triangle_in_rsci_idat_bfwt <= 288'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( ~ triangle_in_rsci_bcwt ) begin
      triangle_in_rsci_idat_bfwt <= triangle_in_rsci_idat_mxwt;
    end
  end

  function automatic [287:0] MUX_v_288_2_2;
    input [287:0] input_0;
    input [287:0] input_1;
    input [0:0] sel;
    reg [287:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_288_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_triangle_in_rsci_triangle_in_wait_ctrl
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_triangle_in_rsci_triangle_in_wait_ctrl (
  run_wen, triangle_in_rsci_oswt, triangle_in_rsci_biwt, triangle_in_rsci_bdwt, triangle_in_rsci_bcwt,
      triangle_in_rsci_irdy_run_sct, triangle_in_rsci_ivld
);
  input run_wen;
  input triangle_in_rsci_oswt;
  output triangle_in_rsci_biwt;
  output triangle_in_rsci_bdwt;
  input triangle_in_rsci_bcwt;
  output triangle_in_rsci_irdy_run_sct;
  input triangle_in_rsci_ivld;


  // Interconnect Declarations
  wire triangle_in_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign triangle_in_rsci_bdwt = triangle_in_rsci_oswt & run_wen;
  assign triangle_in_rsci_biwt = triangle_in_rsci_ogwt & triangle_in_rsci_ivld;
  assign triangle_in_rsci_ogwt = triangle_in_rsci_oswt & (~ triangle_in_rsci_bcwt);
  assign triangle_in_rsci_irdy_run_sct = triangle_in_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_run_fsm
//  FSM Module
// ------------------------------------------------------------------


module TestIterator_run_run_fsm (
  clk, rst, run_wen, fsm_output, main_C_1_tr0, for_C_0_tr0, for_for_C_9_tr0, for_C_1_tr0
);
  input clk;
  input rst;
  input run_wen;
  output [14:0] fsm_output;
  reg [14:0] fsm_output;
  input main_C_1_tr0;
  input for_C_0_tr0;
  input for_for_C_9_tr0;
  input for_C_1_tr0;


  // FSM State Type Declaration for TestIterator_run_run_fsm_1
  parameter
    run_rlp_C_0 = 4'd0,
    main_C_0 = 4'd1,
    main_C_1 = 4'd2,
    for_C_0 = 4'd3,
    for_for_C_0 = 4'd4,
    for_for_C_1 = 4'd5,
    for_for_C_2 = 4'd6,
    for_for_C_3 = 4'd7,
    for_for_C_4 = 4'd8,
    for_for_C_5 = 4'd9,
    for_for_C_6 = 4'd10,
    for_for_C_7 = 4'd11,
    for_for_C_8 = 4'd12,
    for_for_C_9 = 4'd13,
    for_C_1 = 4'd14;

  reg [3:0] state_var;
  reg [3:0] state_var_NS;


  // Interconnect Declarations for Component Instantiations 
  always @(*)
  begin : TestIterator_run_run_fsm_1
    case (state_var)
      main_C_0 : begin
        fsm_output = 15'b000000000000010;
        state_var_NS = main_C_1;
      end
      main_C_1 : begin
        fsm_output = 15'b000000000000100;
        if ( main_C_1_tr0 ) begin
          state_var_NS = main_C_0;
        end
        else begin
          state_var_NS = for_C_0;
        end
      end
      for_C_0 : begin
        fsm_output = 15'b000000000001000;
        if ( for_C_0_tr0 ) begin
          state_var_NS = for_C_1;
        end
        else begin
          state_var_NS = for_for_C_0;
        end
      end
      for_for_C_0 : begin
        fsm_output = 15'b000000000010000;
        state_var_NS = for_for_C_1;
      end
      for_for_C_1 : begin
        fsm_output = 15'b000000000100000;
        state_var_NS = for_for_C_2;
      end
      for_for_C_2 : begin
        fsm_output = 15'b000000001000000;
        state_var_NS = for_for_C_3;
      end
      for_for_C_3 : begin
        fsm_output = 15'b000000010000000;
        state_var_NS = for_for_C_4;
      end
      for_for_C_4 : begin
        fsm_output = 15'b000000100000000;
        state_var_NS = for_for_C_5;
      end
      for_for_C_5 : begin
        fsm_output = 15'b000001000000000;
        state_var_NS = for_for_C_6;
      end
      for_for_C_6 : begin
        fsm_output = 15'b000010000000000;
        state_var_NS = for_for_C_7;
      end
      for_for_C_7 : begin
        fsm_output = 15'b000100000000000;
        state_var_NS = for_for_C_8;
      end
      for_for_C_8 : begin
        fsm_output = 15'b001000000000000;
        state_var_NS = for_for_C_9;
      end
      for_for_C_9 : begin
        fsm_output = 15'b010000000000000;
        if ( for_for_C_9_tr0 ) begin
          state_var_NS = for_C_1;
        end
        else begin
          state_var_NS = for_for_C_0;
        end
      end
      for_C_1 : begin
        fsm_output = 15'b100000000000000;
        if ( for_C_1_tr0 ) begin
          state_var_NS = main_C_0;
        end
        else begin
          state_var_NS = for_C_0;
        end
      end
      // run_rlp_C_0
      default : begin
        fsm_output = 15'b000000000000001;
        state_var_NS = main_C_0;
      end
    endcase
  end

  always @(posedge clk) begin
    if ( rst ) begin
      state_var <= run_rlp_C_0;
    end
    else if ( run_wen ) begin
      state_var <= state_var_NS;
    end
  end

endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_staller
// ------------------------------------------------------------------


module TestIterator_run_staller (
  run_wen, bbox_in_rsci_wen_comp, triangle_in_rsci_wen_comp, config_in_rsci_wen_comp,
      sample_out_rsci_wen_comp
);
  output run_wen;
  input bbox_in_rsci_wen_comp;
  input triangle_in_rsci_wen_comp;
  input config_in_rsci_wen_comp;
  input sample_out_rsci_wen_comp;



  // Interconnect Declarations for Component Instantiations 
  assign run_wen = bbox_in_rsci_wen_comp & triangle_in_rsci_wen_comp & config_in_rsci_wen_comp
      & sample_out_rsci_wen_comp;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_wait_dp
// ------------------------------------------------------------------


module TestIterator_run_wait_dp (
  ensig_cgo_iro, sampleTest_run_cmp_ccs_ccore_en, run_wen, ensig_cgo
);
  input ensig_cgo_iro;
  output sampleTest_run_cmp_ccs_ccore_en;
  input run_wen;
  input ensig_cgo;



  // Interconnect Declarations for Component Instantiations 
  assign sampleTest_run_cmp_ccs_ccore_en = run_wen & (ensig_cgo | ensig_cgo_iro);
endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_sample_out_rsci_sample_out_wait_dp
// ------------------------------------------------------------------


module TestIterator_run_sample_out_rsci_sample_out_wait_dp (
  clk, rst, sample_out_rsci_oswt, sample_out_rsci_wen_comp, sample_out_rsci_biwt,
      sample_out_rsci_bdwt, sample_out_rsci_bcwt
);
  input clk;
  input rst;
  input sample_out_rsci_oswt;
  output sample_out_rsci_wen_comp;
  input sample_out_rsci_biwt;
  input sample_out_rsci_bdwt;
  output sample_out_rsci_bcwt;
  reg sample_out_rsci_bcwt;



  // Interconnect Declarations for Component Instantiations 
  assign sample_out_rsci_wen_comp = (~ sample_out_rsci_oswt) | sample_out_rsci_biwt
      | sample_out_rsci_bcwt;
  always @(posedge clk) begin
    if ( rst ) begin
      sample_out_rsci_bcwt <= 1'b0;
    end
    else begin
      sample_out_rsci_bcwt <= ~((~(sample_out_rsci_bcwt | sample_out_rsci_biwt))
          | sample_out_rsci_bdwt);
    end
  end
endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_sample_out_rsci_sample_out_wait_ctrl
// ------------------------------------------------------------------


module TestIterator_run_sample_out_rsci_sample_out_wait_ctrl (
  run_wen, sample_out_rsci_oswt, sample_out_rsci_irdy, sample_out_rsci_biwt, sample_out_rsci_bdwt,
      sample_out_rsci_bcwt, sample_out_rsci_ivld_run_sct
);
  input run_wen;
  input sample_out_rsci_oswt;
  input sample_out_rsci_irdy;
  output sample_out_rsci_biwt;
  output sample_out_rsci_bdwt;
  input sample_out_rsci_bcwt;
  output sample_out_rsci_ivld_run_sct;


  // Interconnect Declarations
  wire sample_out_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign sample_out_rsci_bdwt = sample_out_rsci_oswt & run_wen;
  assign sample_out_rsci_biwt = sample_out_rsci_ogwt & sample_out_rsci_irdy;
  assign sample_out_rsci_ogwt = sample_out_rsci_oswt & (~ sample_out_rsci_bcwt);
  assign sample_out_rsci_ivld_run_sct = sample_out_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_config_in_rsci_config_in_wait_dp
// ------------------------------------------------------------------


module TestIterator_run_config_in_rsci_config_in_wait_dp (
  clk, rst, config_in_rsci_oswt, config_in_rsci_wen_comp, config_in_rsci_idat_mxwt,
      config_in_rsci_biwt, config_in_rsci_bdwt, config_in_rsci_bcwt, config_in_rsci_idat
);
  input clk;
  input rst;
  input config_in_rsci_oswt;
  output config_in_rsci_wen_comp;
  output [3:0] config_in_rsci_idat_mxwt;
  input config_in_rsci_biwt;
  input config_in_rsci_bdwt;
  output config_in_rsci_bcwt;
  reg config_in_rsci_bcwt;
  input [3:0] config_in_rsci_idat;


  // Interconnect Declarations
  reg [3:0] config_in_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign config_in_rsci_wen_comp = (~ config_in_rsci_oswt) | config_in_rsci_biwt
      | config_in_rsci_bcwt;
  assign config_in_rsci_idat_mxwt = MUX_v_4_2_2(config_in_rsci_idat, config_in_rsci_idat_bfwt,
      config_in_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      config_in_rsci_bcwt <= 1'b0;
    end
    else begin
      config_in_rsci_bcwt <= ~((~(config_in_rsci_bcwt | config_in_rsci_biwt)) | config_in_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      config_in_rsci_idat_bfwt <= 4'b0000;
    end
    else if ( ~ config_in_rsci_bcwt ) begin
      config_in_rsci_idat_bfwt <= config_in_rsci_idat_mxwt;
    end
  end

  function automatic [3:0] MUX_v_4_2_2;
    input [3:0] input_0;
    input [3:0] input_1;
    input [0:0] sel;
    reg [3:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_4_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_config_in_rsci_config_in_wait_ctrl
// ------------------------------------------------------------------


module TestIterator_run_config_in_rsci_config_in_wait_ctrl (
  run_wen, config_in_rsci_oswt, config_in_rsci_biwt, config_in_rsci_bdwt, config_in_rsci_bcwt,
      config_in_rsci_irdy_run_sct, config_in_rsci_ivld
);
  input run_wen;
  input config_in_rsci_oswt;
  output config_in_rsci_biwt;
  output config_in_rsci_bdwt;
  input config_in_rsci_bcwt;
  output config_in_rsci_irdy_run_sct;
  input config_in_rsci_ivld;


  // Interconnect Declarations
  wire config_in_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign config_in_rsci_bdwt = config_in_rsci_oswt & run_wen;
  assign config_in_rsci_biwt = config_in_rsci_ogwt & config_in_rsci_ivld;
  assign config_in_rsci_ogwt = config_in_rsci_oswt & (~ config_in_rsci_bcwt);
  assign config_in_rsci_irdy_run_sct = config_in_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_triangle_in_rsci_triangle_in_wait_dp
// ------------------------------------------------------------------


module TestIterator_run_triangle_in_rsci_triangle_in_wait_dp (
  clk, rst, triangle_in_rsci_oswt, triangle_in_rsci_wen_comp, triangle_in_rsci_idat_mxwt,
      triangle_in_rsci_biwt, triangle_in_rsci_bdwt, triangle_in_rsci_bcwt, triangle_in_rsci_idat
);
  input clk;
  input rst;
  input triangle_in_rsci_oswt;
  output triangle_in_rsci_wen_comp;
  output [287:0] triangle_in_rsci_idat_mxwt;
  input triangle_in_rsci_biwt;
  input triangle_in_rsci_bdwt;
  output triangle_in_rsci_bcwt;
  reg triangle_in_rsci_bcwt;
  input [287:0] triangle_in_rsci_idat;


  // Interconnect Declarations
  reg [287:0] triangle_in_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign triangle_in_rsci_wen_comp = (~ triangle_in_rsci_oswt) | triangle_in_rsci_biwt
      | triangle_in_rsci_bcwt;
  assign triangle_in_rsci_idat_mxwt = MUX_v_288_2_2(triangle_in_rsci_idat, triangle_in_rsci_idat_bfwt,
      triangle_in_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      triangle_in_rsci_bcwt <= 1'b0;
    end
    else begin
      triangle_in_rsci_bcwt <= ~((~(triangle_in_rsci_bcwt | triangle_in_rsci_biwt))
          | triangle_in_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      triangle_in_rsci_idat_bfwt <= 288'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( ~ triangle_in_rsci_bcwt ) begin
      triangle_in_rsci_idat_bfwt <= triangle_in_rsci_idat_mxwt;
    end
  end

  function automatic [287:0] MUX_v_288_2_2;
    input [287:0] input_0;
    input [287:0] input_1;
    input [0:0] sel;
    reg [287:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_288_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_triangle_in_rsci_triangle_in_wait_ctrl
// ------------------------------------------------------------------


module TestIterator_run_triangle_in_rsci_triangle_in_wait_ctrl (
  run_wen, triangle_in_rsci_oswt, triangle_in_rsci_biwt, triangle_in_rsci_bdwt, triangle_in_rsci_bcwt,
      triangle_in_rsci_irdy_run_sct, triangle_in_rsci_ivld
);
  input run_wen;
  input triangle_in_rsci_oswt;
  output triangle_in_rsci_biwt;
  output triangle_in_rsci_bdwt;
  input triangle_in_rsci_bcwt;
  output triangle_in_rsci_irdy_run_sct;
  input triangle_in_rsci_ivld;


  // Interconnect Declarations
  wire triangle_in_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign triangle_in_rsci_bdwt = triangle_in_rsci_oswt & run_wen;
  assign triangle_in_rsci_biwt = triangle_in_rsci_ogwt & triangle_in_rsci_ivld;
  assign triangle_in_rsci_ogwt = triangle_in_rsci_oswt & (~ triangle_in_rsci_bcwt);
  assign triangle_in_rsci_irdy_run_sct = triangle_in_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_bbox_in_rsci_bbox_in_wait_dp
// ------------------------------------------------------------------


module TestIterator_run_bbox_in_rsci_bbox_in_wait_dp (
  clk, rst, bbox_in_rsci_oswt, bbox_in_rsci_wen_comp, bbox_in_rsci_idat_mxwt, bbox_in_rsci_biwt,
      bbox_in_rsci_bdwt, bbox_in_rsci_bcwt, bbox_in_rsci_idat
);
  input clk;
  input rst;
  input bbox_in_rsci_oswt;
  output bbox_in_rsci_wen_comp;
  output [95:0] bbox_in_rsci_idat_mxwt;
  input bbox_in_rsci_biwt;
  input bbox_in_rsci_bdwt;
  output bbox_in_rsci_bcwt;
  reg bbox_in_rsci_bcwt;
  input [95:0] bbox_in_rsci_idat;


  // Interconnect Declarations
  reg [95:0] bbox_in_rsci_idat_bfwt;


  // Interconnect Declarations for Component Instantiations 
  assign bbox_in_rsci_wen_comp = (~ bbox_in_rsci_oswt) | bbox_in_rsci_biwt | bbox_in_rsci_bcwt;
  assign bbox_in_rsci_idat_mxwt = MUX_v_96_2_2(bbox_in_rsci_idat, bbox_in_rsci_idat_bfwt,
      bbox_in_rsci_bcwt);
  always @(posedge clk) begin
    if ( rst ) begin
      bbox_in_rsci_bcwt <= 1'b0;
    end
    else begin
      bbox_in_rsci_bcwt <= ~((~(bbox_in_rsci_bcwt | bbox_in_rsci_biwt)) | bbox_in_rsci_bdwt);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      bbox_in_rsci_idat_bfwt <= 96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( ~ bbox_in_rsci_bcwt ) begin
      bbox_in_rsci_idat_bfwt <= bbox_in_rsci_idat_mxwt;
    end
  end

  function automatic [95:0] MUX_v_96_2_2;
    input [95:0] input_0;
    input [95:0] input_1;
    input [0:0] sel;
    reg [95:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_96_2_2 = result;
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_bbox_in_rsci_bbox_in_wait_ctrl
// ------------------------------------------------------------------


module TestIterator_run_bbox_in_rsci_bbox_in_wait_ctrl (
  run_wen, bbox_in_rsci_oswt, bbox_in_rsci_biwt, bbox_in_rsci_bdwt, bbox_in_rsci_bcwt,
      bbox_in_rsci_irdy_run_sct, bbox_in_rsci_ivld
);
  input run_wen;
  input bbox_in_rsci_oswt;
  output bbox_in_rsci_biwt;
  output bbox_in_rsci_bdwt;
  input bbox_in_rsci_bcwt;
  output bbox_in_rsci_irdy_run_sct;
  input bbox_in_rsci_ivld;


  // Interconnect Declarations
  wire bbox_in_rsci_ogwt;


  // Interconnect Declarations for Component Instantiations 
  assign bbox_in_rsci_bdwt = bbox_in_rsci_oswt & run_wen;
  assign bbox_in_rsci_biwt = bbox_in_rsci_ogwt & bbox_in_rsci_ivld;
  assign bbox_in_rsci_ogwt = bbox_in_rsci_oswt & (~ bbox_in_rsci_bcwt);
  assign bbox_in_rsci_irdy_run_sct = bbox_in_rsci_ogwt;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_config_out_rsci
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_config_out_rsci (
  clk, rst, config_out_rsc_dat, config_out_rsc_vld, config_out_rsc_rdy, run_wen,
      config_out_rsci_oswt, config_out_rsci_wen_comp, config_out_rsci_idat
);
  input clk;
  input rst;
  output [3:0] config_out_rsc_dat;
  output config_out_rsc_vld;
  input config_out_rsc_rdy;
  input run_wen;
  input config_out_rsci_oswt;
  output config_out_rsci_wen_comp;
  input [3:0] config_out_rsci_idat;


  // Interconnect Declarations
  wire config_out_rsci_irdy;
  wire config_out_rsci_biwt;
  wire config_out_rsci_bdwt;
  wire config_out_rsci_bcwt;
  wire config_out_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd6),
  .width(32'sd4)) config_out_rsci (
      .irdy(config_out_rsci_irdy),
      .ivld(config_out_rsci_ivld_run_sct),
      .idat(config_out_rsci_idat),
      .rdy(config_out_rsc_rdy),
      .vld(config_out_rsc_vld),
      .dat(config_out_rsc_dat)
    );
  BoundingBoxGenerator_run_config_out_rsci_config_out_wait_ctrl BoundingBoxGenerator_run_config_out_rsci_config_out_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .config_out_rsci_oswt(config_out_rsci_oswt),
      .config_out_rsci_irdy(config_out_rsci_irdy),
      .config_out_rsci_biwt(config_out_rsci_biwt),
      .config_out_rsci_bdwt(config_out_rsci_bdwt),
      .config_out_rsci_bcwt(config_out_rsci_bcwt),
      .config_out_rsci_ivld_run_sct(config_out_rsci_ivld_run_sct)
    );
  BoundingBoxGenerator_run_config_out_rsci_config_out_wait_dp BoundingBoxGenerator_run_config_out_rsci_config_out_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .config_out_rsci_oswt(config_out_rsci_oswt),
      .config_out_rsci_wen_comp(config_out_rsci_wen_comp),
      .config_out_rsci_biwt(config_out_rsci_biwt),
      .config_out_rsci_bdwt(config_out_rsci_bdwt),
      .config_out_rsci_bcwt(config_out_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_triangle_out_rsci
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_triangle_out_rsci (
  clk, rst, triangle_out_rsc_dat, triangle_out_rsc_vld, triangle_out_rsc_rdy, run_wen,
      triangle_out_rsci_oswt, triangle_out_rsci_wen_comp, triangle_out_rsci_idat
);
  input clk;
  input rst;
  output [287:0] triangle_out_rsc_dat;
  output triangle_out_rsc_vld;
  input triangle_out_rsc_rdy;
  input run_wen;
  input triangle_out_rsci_oswt;
  output triangle_out_rsci_wen_comp;
  input [287:0] triangle_out_rsci_idat;


  // Interconnect Declarations
  wire triangle_out_rsci_irdy;
  wire triangle_out_rsci_biwt;
  wire triangle_out_rsci_bdwt;
  wire triangle_out_rsci_bcwt;
  wire triangle_out_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd5),
  .width(32'sd288)) triangle_out_rsci (
      .irdy(triangle_out_rsci_irdy),
      .ivld(triangle_out_rsci_ivld_run_sct),
      .idat(triangle_out_rsci_idat),
      .rdy(triangle_out_rsc_rdy),
      .vld(triangle_out_rsc_vld),
      .dat(triangle_out_rsc_dat)
    );
  BoundingBoxGenerator_run_triangle_out_rsci_triangle_out_wait_ctrl BoundingBoxGenerator_run_triangle_out_rsci_triangle_out_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .triangle_out_rsci_oswt(triangle_out_rsci_oswt),
      .triangle_out_rsci_irdy(triangle_out_rsci_irdy),
      .triangle_out_rsci_biwt(triangle_out_rsci_biwt),
      .triangle_out_rsci_bdwt(triangle_out_rsci_bdwt),
      .triangle_out_rsci_bcwt(triangle_out_rsci_bcwt),
      .triangle_out_rsci_ivld_run_sct(triangle_out_rsci_ivld_run_sct)
    );
  BoundingBoxGenerator_run_triangle_out_rsci_triangle_out_wait_dp BoundingBoxGenerator_run_triangle_out_rsci_triangle_out_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .triangle_out_rsci_oswt(triangle_out_rsci_oswt),
      .triangle_out_rsci_wen_comp(triangle_out_rsci_wen_comp),
      .triangle_out_rsci_biwt(triangle_out_rsci_biwt),
      .triangle_out_rsci_bdwt(triangle_out_rsci_bdwt),
      .triangle_out_rsci_bcwt(triangle_out_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_bbox_out_rsci
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_bbox_out_rsci (
  clk, rst, bbox_out_rsc_dat, bbox_out_rsc_vld, bbox_out_rsc_rdy, run_wen, bbox_out_rsci_oswt,
      bbox_out_rsci_wen_comp, bbox_out_rsci_idat
);
  input clk;
  input rst;
  output [95:0] bbox_out_rsc_dat;
  output bbox_out_rsc_vld;
  input bbox_out_rsc_rdy;
  input run_wen;
  input bbox_out_rsci_oswt;
  output bbox_out_rsci_wen_comp;
  input [95:0] bbox_out_rsci_idat;


  // Interconnect Declarations
  wire bbox_out_rsci_irdy;
  wire bbox_out_rsci_biwt;
  wire bbox_out_rsci_bdwt;
  wire bbox_out_rsci_bcwt;
  wire bbox_out_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  wire [95:0] nl_bbox_out_rsci_idat;
  assign nl_bbox_out_rsci_idat = {(bbox_out_rsci_idat[95:48]) , 1'b0 , (bbox_out_rsci_idat[46:24])
      , 1'b0 , (bbox_out_rsci_idat[22:0])};
  ccs_out_wait_v1 #(.rscid(32'sd4),
  .width(32'sd96)) bbox_out_rsci (
      .irdy(bbox_out_rsci_irdy),
      .ivld(bbox_out_rsci_ivld_run_sct),
      .idat(nl_bbox_out_rsci_idat[95:0]),
      .rdy(bbox_out_rsc_rdy),
      .vld(bbox_out_rsc_vld),
      .dat(bbox_out_rsc_dat)
    );
  BoundingBoxGenerator_run_bbox_out_rsci_bbox_out_wait_ctrl BoundingBoxGenerator_run_bbox_out_rsci_bbox_out_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .bbox_out_rsci_oswt(bbox_out_rsci_oswt),
      .bbox_out_rsci_irdy(bbox_out_rsci_irdy),
      .bbox_out_rsci_biwt(bbox_out_rsci_biwt),
      .bbox_out_rsci_bdwt(bbox_out_rsci_bdwt),
      .bbox_out_rsci_bcwt(bbox_out_rsci_bcwt),
      .bbox_out_rsci_ivld_run_sct(bbox_out_rsci_ivld_run_sct)
    );
  BoundingBoxGenerator_run_bbox_out_rsci_bbox_out_wait_dp BoundingBoxGenerator_run_bbox_out_rsci_bbox_out_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .bbox_out_rsci_oswt(bbox_out_rsci_oswt),
      .bbox_out_rsci_wen_comp(bbox_out_rsci_wen_comp),
      .bbox_out_rsci_biwt(bbox_out_rsci_biwt),
      .bbox_out_rsci_bdwt(bbox_out_rsci_bdwt),
      .bbox_out_rsci_bcwt(bbox_out_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_config_in_rsci
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_config_in_rsci (
  clk, rst, config_in_rsc_dat, config_in_rsc_vld, config_in_rsc_rdy, run_wen, config_in_rsci_oswt,
      config_in_rsci_wen_comp, config_in_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [3:0] config_in_rsc_dat;
  input config_in_rsc_vld;
  output config_in_rsc_rdy;
  input run_wen;
  input config_in_rsci_oswt;
  output config_in_rsci_wen_comp;
  output [3:0] config_in_rsci_idat_mxwt;


  // Interconnect Declarations
  wire config_in_rsci_biwt;
  wire config_in_rsci_bdwt;
  wire config_in_rsci_bcwt;
  wire config_in_rsci_irdy_run_sct;
  wire config_in_rsci_ivld;
  wire [3:0] config_in_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd3),
  .width(32'sd4)) config_in_rsci (
      .rdy(config_in_rsc_rdy),
      .vld(config_in_rsc_vld),
      .dat(config_in_rsc_dat),
      .irdy(config_in_rsci_irdy_run_sct),
      .ivld(config_in_rsci_ivld),
      .idat(config_in_rsci_idat)
    );
  BoundingBoxGenerator_run_config_in_rsci_config_in_wait_ctrl BoundingBoxGenerator_run_config_in_rsci_config_in_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .config_in_rsci_oswt(config_in_rsci_oswt),
      .config_in_rsci_biwt(config_in_rsci_biwt),
      .config_in_rsci_bdwt(config_in_rsci_bdwt),
      .config_in_rsci_bcwt(config_in_rsci_bcwt),
      .config_in_rsci_irdy_run_sct(config_in_rsci_irdy_run_sct),
      .config_in_rsci_ivld(config_in_rsci_ivld)
    );
  BoundingBoxGenerator_run_config_in_rsci_config_in_wait_dp BoundingBoxGenerator_run_config_in_rsci_config_in_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .config_in_rsci_oswt(config_in_rsci_oswt),
      .config_in_rsci_wen_comp(config_in_rsci_wen_comp),
      .config_in_rsci_idat_mxwt(config_in_rsci_idat_mxwt),
      .config_in_rsci_biwt(config_in_rsci_biwt),
      .config_in_rsci_bdwt(config_in_rsci_bdwt),
      .config_in_rsci_bcwt(config_in_rsci_bcwt),
      .config_in_rsci_idat(config_in_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_screen_in_rsci
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_screen_in_rsci (
  clk, rst, screen_in_rsc_dat, screen_in_rsc_vld, screen_in_rsc_rdy, run_wen, screen_in_rsci_oswt,
      screen_in_rsci_wen_comp, screen_in_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [47:0] screen_in_rsc_dat;
  input screen_in_rsc_vld;
  output screen_in_rsc_rdy;
  input run_wen;
  input screen_in_rsci_oswt;
  output screen_in_rsci_wen_comp;
  output [47:0] screen_in_rsci_idat_mxwt;


  // Interconnect Declarations
  wire screen_in_rsci_biwt;
  wire screen_in_rsci_bdwt;
  wire screen_in_rsci_bcwt;
  wire screen_in_rsci_irdy_run_sct;
  wire screen_in_rsci_ivld;
  wire [47:0] screen_in_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd2),
  .width(32'sd48)) screen_in_rsci (
      .rdy(screen_in_rsc_rdy),
      .vld(screen_in_rsc_vld),
      .dat(screen_in_rsc_dat),
      .irdy(screen_in_rsci_irdy_run_sct),
      .ivld(screen_in_rsci_ivld),
      .idat(screen_in_rsci_idat)
    );
  BoundingBoxGenerator_run_screen_in_rsci_screen_in_wait_ctrl BoundingBoxGenerator_run_screen_in_rsci_screen_in_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .screen_in_rsci_oswt(screen_in_rsci_oswt),
      .screen_in_rsci_biwt(screen_in_rsci_biwt),
      .screen_in_rsci_bdwt(screen_in_rsci_bdwt),
      .screen_in_rsci_bcwt(screen_in_rsci_bcwt),
      .screen_in_rsci_irdy_run_sct(screen_in_rsci_irdy_run_sct),
      .screen_in_rsci_ivld(screen_in_rsci_ivld)
    );
  BoundingBoxGenerator_run_screen_in_rsci_screen_in_wait_dp BoundingBoxGenerator_run_screen_in_rsci_screen_in_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .screen_in_rsci_oswt(screen_in_rsci_oswt),
      .screen_in_rsci_wen_comp(screen_in_rsci_wen_comp),
      .screen_in_rsci_idat_mxwt(screen_in_rsci_idat_mxwt),
      .screen_in_rsci_biwt(screen_in_rsci_biwt),
      .screen_in_rsci_bdwt(screen_in_rsci_bdwt),
      .screen_in_rsci_bcwt(screen_in_rsci_bcwt),
      .screen_in_rsci_idat(screen_in_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run_triangle_in_rsci
// ------------------------------------------------------------------


module BoundingBoxGenerator_run_triangle_in_rsci (
  clk, rst, triangle_in_rsc_dat, triangle_in_rsc_vld, triangle_in_rsc_rdy, run_wen,
      triangle_in_rsci_oswt, triangle_in_rsci_wen_comp, triangle_in_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [287:0] triangle_in_rsc_dat;
  input triangle_in_rsc_vld;
  output triangle_in_rsc_rdy;
  input run_wen;
  input triangle_in_rsci_oswt;
  output triangle_in_rsci_wen_comp;
  output [287:0] triangle_in_rsci_idat_mxwt;


  // Interconnect Declarations
  wire triangle_in_rsci_biwt;
  wire triangle_in_rsci_bdwt;
  wire triangle_in_rsci_bcwt;
  wire triangle_in_rsci_irdy_run_sct;
  wire triangle_in_rsci_ivld;
  wire [287:0] triangle_in_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd1),
  .width(32'sd288)) triangle_in_rsci (
      .rdy(triangle_in_rsc_rdy),
      .vld(triangle_in_rsc_vld),
      .dat(triangle_in_rsc_dat),
      .irdy(triangle_in_rsci_irdy_run_sct),
      .ivld(triangle_in_rsci_ivld),
      .idat(triangle_in_rsci_idat)
    );
  BoundingBoxGenerator_run_triangle_in_rsci_triangle_in_wait_ctrl BoundingBoxGenerator_run_triangle_in_rsci_triangle_in_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .triangle_in_rsci_oswt(triangle_in_rsci_oswt),
      .triangle_in_rsci_biwt(triangle_in_rsci_biwt),
      .triangle_in_rsci_bdwt(triangle_in_rsci_bdwt),
      .triangle_in_rsci_bcwt(triangle_in_rsci_bcwt),
      .triangle_in_rsci_irdy_run_sct(triangle_in_rsci_irdy_run_sct),
      .triangle_in_rsci_ivld(triangle_in_rsci_ivld)
    );
  BoundingBoxGenerator_run_triangle_in_rsci_triangle_in_wait_dp BoundingBoxGenerator_run_triangle_in_rsci_triangle_in_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .triangle_in_rsci_oswt(triangle_in_rsci_oswt),
      .triangle_in_rsci_wen_comp(triangle_in_rsci_wen_comp),
      .triangle_in_rsci_idat_mxwt(triangle_in_rsci_idat_mxwt),
      .triangle_in_rsci_biwt(triangle_in_rsci_biwt),
      .triangle_in_rsci_bdwt(triangle_in_rsci_bdwt),
      .triangle_in_rsci_bcwt(triangle_in_rsci_bcwt),
      .triangle_in_rsci_idat(triangle_in_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_sample_out_rsci
// ------------------------------------------------------------------


module TestIterator_run_sample_out_rsci (
  clk, rst, sample_out_rsc_dat, sample_out_rsc_vld, sample_out_rsc_rdy, run_wen,
      sample_out_rsci_oswt, sample_out_rsci_wen_comp, sample_out_rsci_idat
);
  input clk;
  input rst;
  output [119:0] sample_out_rsc_dat;
  output sample_out_rsc_vld;
  input sample_out_rsc_rdy;
  input run_wen;
  input sample_out_rsci_oswt;
  output sample_out_rsci_wen_comp;
  input [119:0] sample_out_rsci_idat;


  // Interconnect Declarations
  wire sample_out_rsci_irdy;
  wire sample_out_rsci_biwt;
  wire sample_out_rsci_bdwt;
  wire sample_out_rsci_bcwt;
  wire sample_out_rsci_ivld_run_sct;


  // Interconnect Declarations for Component Instantiations 
  ccs_out_wait_v1 #(.rscid(32'sd39),
  .width(32'sd120)) sample_out_rsci (
      .irdy(sample_out_rsci_irdy),
      .ivld(sample_out_rsci_ivld_run_sct),
      .idat(sample_out_rsci_idat),
      .rdy(sample_out_rsc_rdy),
      .vld(sample_out_rsc_vld),
      .dat(sample_out_rsc_dat)
    );
  TestIterator_run_sample_out_rsci_sample_out_wait_ctrl TestIterator_run_sample_out_rsci_sample_out_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .sample_out_rsci_oswt(sample_out_rsci_oswt),
      .sample_out_rsci_irdy(sample_out_rsci_irdy),
      .sample_out_rsci_biwt(sample_out_rsci_biwt),
      .sample_out_rsci_bdwt(sample_out_rsci_bdwt),
      .sample_out_rsci_bcwt(sample_out_rsci_bcwt),
      .sample_out_rsci_ivld_run_sct(sample_out_rsci_ivld_run_sct)
    );
  TestIterator_run_sample_out_rsci_sample_out_wait_dp TestIterator_run_sample_out_rsci_sample_out_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .sample_out_rsci_oswt(sample_out_rsci_oswt),
      .sample_out_rsci_wen_comp(sample_out_rsci_wen_comp),
      .sample_out_rsci_biwt(sample_out_rsci_biwt),
      .sample_out_rsci_bdwt(sample_out_rsci_bdwt),
      .sample_out_rsci_bcwt(sample_out_rsci_bcwt)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_config_in_rsci
// ------------------------------------------------------------------


module TestIterator_run_config_in_rsci (
  clk, rst, config_in_rsc_dat, config_in_rsc_vld, config_in_rsc_rdy, run_wen, config_in_rsci_oswt,
      config_in_rsci_wen_comp, config_in_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [3:0] config_in_rsc_dat;
  input config_in_rsc_vld;
  output config_in_rsc_rdy;
  input run_wen;
  input config_in_rsci_oswt;
  output config_in_rsci_wen_comp;
  output [3:0] config_in_rsci_idat_mxwt;


  // Interconnect Declarations
  wire config_in_rsci_biwt;
  wire config_in_rsci_bdwt;
  wire config_in_rsci_bcwt;
  wire config_in_rsci_irdy_run_sct;
  wire config_in_rsci_ivld;
  wire [3:0] config_in_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd38),
  .width(32'sd4)) config_in_rsci (
      .rdy(config_in_rsc_rdy),
      .vld(config_in_rsc_vld),
      .dat(config_in_rsc_dat),
      .irdy(config_in_rsci_irdy_run_sct),
      .ivld(config_in_rsci_ivld),
      .idat(config_in_rsci_idat)
    );
  TestIterator_run_config_in_rsci_config_in_wait_ctrl TestIterator_run_config_in_rsci_config_in_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .config_in_rsci_oswt(config_in_rsci_oswt),
      .config_in_rsci_biwt(config_in_rsci_biwt),
      .config_in_rsci_bdwt(config_in_rsci_bdwt),
      .config_in_rsci_bcwt(config_in_rsci_bcwt),
      .config_in_rsci_irdy_run_sct(config_in_rsci_irdy_run_sct),
      .config_in_rsci_ivld(config_in_rsci_ivld)
    );
  TestIterator_run_config_in_rsci_config_in_wait_dp TestIterator_run_config_in_rsci_config_in_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .config_in_rsci_oswt(config_in_rsci_oswt),
      .config_in_rsci_wen_comp(config_in_rsci_wen_comp),
      .config_in_rsci_idat_mxwt(config_in_rsci_idat_mxwt),
      .config_in_rsci_biwt(config_in_rsci_biwt),
      .config_in_rsci_bdwt(config_in_rsci_bdwt),
      .config_in_rsci_bcwt(config_in_rsci_bcwt),
      .config_in_rsci_idat(config_in_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_triangle_in_rsci
// ------------------------------------------------------------------


module TestIterator_run_triangle_in_rsci (
  clk, rst, triangle_in_rsc_dat, triangle_in_rsc_vld, triangle_in_rsc_rdy, run_wen,
      triangle_in_rsci_oswt, triangle_in_rsci_wen_comp, triangle_in_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [287:0] triangle_in_rsc_dat;
  input triangle_in_rsc_vld;
  output triangle_in_rsc_rdy;
  input run_wen;
  input triangle_in_rsci_oswt;
  output triangle_in_rsci_wen_comp;
  output [287:0] triangle_in_rsci_idat_mxwt;


  // Interconnect Declarations
  wire triangle_in_rsci_biwt;
  wire triangle_in_rsci_bdwt;
  wire triangle_in_rsci_bcwt;
  wire triangle_in_rsci_irdy_run_sct;
  wire triangle_in_rsci_ivld;
  wire [287:0] triangle_in_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd37),
  .width(32'sd288)) triangle_in_rsci (
      .rdy(triangle_in_rsc_rdy),
      .vld(triangle_in_rsc_vld),
      .dat(triangle_in_rsc_dat),
      .irdy(triangle_in_rsci_irdy_run_sct),
      .ivld(triangle_in_rsci_ivld),
      .idat(triangle_in_rsci_idat)
    );
  TestIterator_run_triangle_in_rsci_triangle_in_wait_ctrl TestIterator_run_triangle_in_rsci_triangle_in_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .triangle_in_rsci_oswt(triangle_in_rsci_oswt),
      .triangle_in_rsci_biwt(triangle_in_rsci_biwt),
      .triangle_in_rsci_bdwt(triangle_in_rsci_bdwt),
      .triangle_in_rsci_bcwt(triangle_in_rsci_bcwt),
      .triangle_in_rsci_irdy_run_sct(triangle_in_rsci_irdy_run_sct),
      .triangle_in_rsci_ivld(triangle_in_rsci_ivld)
    );
  TestIterator_run_triangle_in_rsci_triangle_in_wait_dp TestIterator_run_triangle_in_rsci_triangle_in_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .triangle_in_rsci_oswt(triangle_in_rsci_oswt),
      .triangle_in_rsci_wen_comp(triangle_in_rsci_wen_comp),
      .triangle_in_rsci_idat_mxwt(triangle_in_rsci_idat_mxwt),
      .triangle_in_rsci_biwt(triangle_in_rsci_biwt),
      .triangle_in_rsci_bdwt(triangle_in_rsci_bdwt),
      .triangle_in_rsci_bcwt(triangle_in_rsci_bcwt),
      .triangle_in_rsci_idat(triangle_in_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run_bbox_in_rsci
// ------------------------------------------------------------------


module TestIterator_run_bbox_in_rsci (
  clk, rst, bbox_in_rsc_dat, bbox_in_rsc_vld, bbox_in_rsc_rdy, run_wen, bbox_in_rsci_oswt,
      bbox_in_rsci_wen_comp, bbox_in_rsci_idat_mxwt
);
  input clk;
  input rst;
  input [95:0] bbox_in_rsc_dat;
  input bbox_in_rsc_vld;
  output bbox_in_rsc_rdy;
  input run_wen;
  input bbox_in_rsci_oswt;
  output bbox_in_rsci_wen_comp;
  output [95:0] bbox_in_rsci_idat_mxwt;


  // Interconnect Declarations
  wire bbox_in_rsci_biwt;
  wire bbox_in_rsci_bdwt;
  wire bbox_in_rsci_bcwt;
  wire bbox_in_rsci_irdy_run_sct;
  wire bbox_in_rsci_ivld;
  wire [95:0] bbox_in_rsci_idat;


  // Interconnect Declarations for Component Instantiations 
  ccs_in_wait_v1 #(.rscid(32'sd36),
  .width(32'sd96)) bbox_in_rsci (
      .rdy(bbox_in_rsc_rdy),
      .vld(bbox_in_rsc_vld),
      .dat(bbox_in_rsc_dat),
      .irdy(bbox_in_rsci_irdy_run_sct),
      .ivld(bbox_in_rsci_ivld),
      .idat(bbox_in_rsci_idat)
    );
  TestIterator_run_bbox_in_rsci_bbox_in_wait_ctrl TestIterator_run_bbox_in_rsci_bbox_in_wait_ctrl_inst
      (
      .run_wen(run_wen),
      .bbox_in_rsci_oswt(bbox_in_rsci_oswt),
      .bbox_in_rsci_biwt(bbox_in_rsci_biwt),
      .bbox_in_rsci_bdwt(bbox_in_rsci_bdwt),
      .bbox_in_rsci_bcwt(bbox_in_rsci_bcwt),
      .bbox_in_rsci_irdy_run_sct(bbox_in_rsci_irdy_run_sct),
      .bbox_in_rsci_ivld(bbox_in_rsci_ivld)
    );
  TestIterator_run_bbox_in_rsci_bbox_in_wait_dp TestIterator_run_bbox_in_rsci_bbox_in_wait_dp_inst
      (
      .clk(clk),
      .rst(rst),
      .bbox_in_rsci_oswt(bbox_in_rsci_oswt),
      .bbox_in_rsci_wen_comp(bbox_in_rsci_wen_comp),
      .bbox_in_rsci_idat_mxwt(bbox_in_rsci_idat_mxwt),
      .bbox_in_rsci_biwt(bbox_in_rsci_biwt),
      .bbox_in_rsci_bdwt(bbox_in_rsci_bdwt),
      .bbox_in_rsci_bcwt(bbox_in_rsci_bcwt),
      .bbox_in_rsci_idat(bbox_in_rsci_idat)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator_run
// ------------------------------------------------------------------


module BoundingBoxGenerator_run (
  clk, rst, triangle_in_rsc_dat, triangle_in_rsc_vld, triangle_in_rsc_rdy, screen_in_rsc_dat,
      screen_in_rsc_vld, screen_in_rsc_rdy, config_in_rsc_dat, config_in_rsc_vld,
      config_in_rsc_rdy, bbox_out_rsc_dat, bbox_out_rsc_vld, bbox_out_rsc_rdy, triangle_out_rsc_dat,
      triangle_out_rsc_vld, triangle_out_rsc_rdy, config_out_rsc_dat, config_out_rsc_vld,
      config_out_rsc_rdy
);
  input clk;
  input rst;
  input [287:0] triangle_in_rsc_dat;
  input triangle_in_rsc_vld;
  output triangle_in_rsc_rdy;
  input [47:0] screen_in_rsc_dat;
  input screen_in_rsc_vld;
  output screen_in_rsc_rdy;
  input [3:0] config_in_rsc_dat;
  input config_in_rsc_vld;
  output config_in_rsc_rdy;
  output [95:0] bbox_out_rsc_dat;
  output bbox_out_rsc_vld;
  input bbox_out_rsc_rdy;
  output [287:0] triangle_out_rsc_dat;
  output triangle_out_rsc_vld;
  input triangle_out_rsc_rdy;
  output [3:0] config_out_rsc_dat;
  output config_out_rsc_vld;
  input config_out_rsc_rdy;


  // Interconnect Declarations
  wire run_wen;
  wire triangle_in_rsci_wen_comp;
  wire [287:0] triangle_in_rsci_idat_mxwt;
  wire screen_in_rsci_wen_comp;
  wire [47:0] screen_in_rsci_idat_mxwt;
  wire config_in_rsci_wen_comp;
  wire [3:0] config_in_rsci_idat_mxwt;
  wire bbox_out_rsci_wen_comp;
  wire triangle_out_rsci_wen_comp;
  reg [287:0] triangle_out_rsci_idat;
  wire config_out_rsci_wen_comp;
  reg [3:0] config_out_rsci_idat;
  reg [13:0] bbox_out_rsci_idat_95_82;
  reg bbox_out_rsci_idat_81;
  reg bbox_out_rsci_idat_80;
  reg [7:0] bbox_out_rsci_idat_79_72;
  reg [13:0] bbox_out_rsci_idat_71_58;
  reg bbox_out_rsci_idat_57;
  reg bbox_out_rsci_idat_56;
  reg [7:0] bbox_out_rsci_idat_55_48;
  reg [12:0] bbox_out_rsci_idat_46_34;
  reg bbox_out_rsci_idat_33;
  reg bbox_out_rsci_idat_32;
  reg [7:0] bbox_out_rsci_idat_31_24;
  reg [12:0] bbox_out_rsci_idat_22_10;
  reg bbox_out_rsci_idat_9;
  reg bbox_out_rsci_idat_8;
  reg [7:0] bbox_out_rsci_idat_7_0;
  wire [4:0] fsm_output;
  wire and_dcpl_1;
  wire or_tmp_9;
  wire or_tmp_21;
  reg BoundingBoxGenerator_floor_ss_nor_2_itm;
  reg for_i_0_sva;
  reg [3:0] config_subsample_sva;
  wire bbox_out_and_cse;
  wire bbox_out_and_8_cse;
  wire bbox_out_and_12_cse;
  reg reg_config_out_rsci_ivld_run_psct_cse;
  reg reg_config_in_rsci_irdy_run_psct_cse;
  wire config_subsample_and_cse;
  reg [47:0] screen_in_crt_sva;
  reg [23:0] BoundingBoxGenerator_max_qr_lpi_2_dfm;
  reg [23:0] BoundingBoxGenerator_max_1_qr_lpi_2_dfm;
  wire [23:0] BoundingBoxGenerator_max_b_1_sva_mx0;
  reg [23:0] BoundingBoxGenerator_min_1_qr_lpi_2_dfm;
  wire [23:0] BoundingBoxGenerator_max_b_sva_mx0;
  reg [23:0] BoundingBoxGenerator_min_qr_lpi_2_dfm;
  reg [287:0] triangle_in_crt_sva;
  reg operator_4_false_2_nor_itm;
  reg BoundingBoxGenerator_floor_ss_BoundingBoxGenerator_floor_ss_and_2_itm;
  wire BoundingBoxGenerator_max_1_qr_lpi_2_dfm_mx0c1;
  wire BoundingBoxGenerator_max_qr_lpi_2_dfm_mx0c1;
  wire BoundingBoxGenerator_min_1_qr_lpi_2_dfm_mx0c1;
  wire BoundingBoxGenerator_min_qr_lpi_2_dfm_mx0c1;
  wire BoundingBoxGenerator_floor_ss_else_else_asn_mdf_sva_1;
  wire [7:0] BoundingBoxGenerator_floor_ss_mask_num_7_0_lpi_1_dfm_2;
  wire BoundingBoxGenerator_floor_ss_mask_num_8_lpi_1_dfm_1;
  wire [7:0] BoundingBoxGenerator_floor_ss_return_3_7_0_sva_1;
  wire BoundingBoxGenerator_floor_ss_return_3_8_sva_1;
  wire [7:0] BoundingBoxGenerator_floor_ss_return_2_7_0_sva_1;
  wire BoundingBoxGenerator_floor_ss_return_2_8_sva_1;
  wire BoundingBoxGenerator_floor_ss_equal_tmp_2;
  wire BoundingBoxGenerator_floor_ss_and_3_cse;
  wire z_out_24;
  wire z_out_1_24;
  wire z_out_2_24;
  wire z_out_3_24;

  wire[0:0] BoundingBoxGenerator_max_2_not_4_nl;
  wire[0:0] BoundingBoxGenerator_max_3_not_4_nl;
  wire[7:0] BoundingBoxGenerator_floor_ss_mux_nl;
  wire[0:0] BoundingBoxGenerator_floor_ss_nor_nl;
  wire[25:0] acc_nl;
  wire[26:0] nl_acc_nl;
  wire[23:0] valid_bbox_aelse_2_mux_2_nl;
  wire[13:0] screen_in_height_mux_4_nl;
  wire[0:0] screen_in_height_mux_5_nl;
  wire[0:0] screen_in_height_mux_6_nl;
  wire[7:0] screen_in_height_mux_7_nl;
  wire[23:0] valid_bbox_aelse_2_mux_3_nl;
  wire[25:0] acc_1_nl;
  wire[26:0] nl_acc_1_nl;
  wire[23:0] valid_bbox_aelse_1_mux_2_nl;
  wire[13:0] screen_in_width_mux_4_nl;
  wire[0:0] screen_in_width_mux_5_nl;
  wire[0:0] screen_in_width_mux_6_nl;
  wire[7:0] screen_in_width_mux_7_nl;
  wire[23:0] valid_bbox_aelse_1_mux_3_nl;
  wire[25:0] acc_2_nl;
  wire[26:0] nl_acc_2_nl;
  wire[23:0] BoundingBoxGenerator_min_3_mux_2_nl;
  wire[23:0] BoundingBoxGenerator_min_3_mux_3_nl;
  wire[25:0] acc_3_nl;
  wire[26:0] nl_acc_3_nl;
  wire[23:0] BoundingBoxGenerator_min_2_mux_2_nl;
  wire[23:0] BoundingBoxGenerator_min_2_mux_3_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [95:0] nl_BoundingBoxGenerator_run_bbox_out_rsci_inst_bbox_out_rsci_idat;
  assign nl_BoundingBoxGenerator_run_bbox_out_rsci_inst_bbox_out_rsci_idat = {bbox_out_rsci_idat_95_82
      , bbox_out_rsci_idat_81 , bbox_out_rsci_idat_80 , bbox_out_rsci_idat_79_72
      , bbox_out_rsci_idat_71_58 , bbox_out_rsci_idat_57 , bbox_out_rsci_idat_56
      , bbox_out_rsci_idat_55_48 , 1'b0 , bbox_out_rsci_idat_46_34 , bbox_out_rsci_idat_33
      , bbox_out_rsci_idat_32 , bbox_out_rsci_idat_31_24 , 1'b0 , bbox_out_rsci_idat_22_10
      , bbox_out_rsci_idat_9 , bbox_out_rsci_idat_8 , bbox_out_rsci_idat_7_0};
  wire [0:0] nl_BoundingBoxGenerator_run_run_fsm_inst_for_C_0_tr0;
  assign nl_BoundingBoxGenerator_run_run_fsm_inst_for_C_0_tr0 = ~ for_i_0_sva;
  BoundingBoxGenerator_run_triangle_in_rsci BoundingBoxGenerator_run_triangle_in_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .triangle_in_rsc_dat(triangle_in_rsc_dat),
      .triangle_in_rsc_vld(triangle_in_rsc_vld),
      .triangle_in_rsc_rdy(triangle_in_rsc_rdy),
      .run_wen(run_wen),
      .triangle_in_rsci_oswt(reg_config_in_rsci_irdy_run_psct_cse),
      .triangle_in_rsci_wen_comp(triangle_in_rsci_wen_comp),
      .triangle_in_rsci_idat_mxwt(triangle_in_rsci_idat_mxwt)
    );
  BoundingBoxGenerator_run_screen_in_rsci BoundingBoxGenerator_run_screen_in_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .screen_in_rsc_dat(screen_in_rsc_dat),
      .screen_in_rsc_vld(screen_in_rsc_vld),
      .screen_in_rsc_rdy(screen_in_rsc_rdy),
      .run_wen(run_wen),
      .screen_in_rsci_oswt(reg_config_in_rsci_irdy_run_psct_cse),
      .screen_in_rsci_wen_comp(screen_in_rsci_wen_comp),
      .screen_in_rsci_idat_mxwt(screen_in_rsci_idat_mxwt)
    );
  BoundingBoxGenerator_run_config_in_rsci BoundingBoxGenerator_run_config_in_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .config_in_rsc_dat(config_in_rsc_dat),
      .config_in_rsc_vld(config_in_rsc_vld),
      .config_in_rsc_rdy(config_in_rsc_rdy),
      .run_wen(run_wen),
      .config_in_rsci_oswt(reg_config_in_rsci_irdy_run_psct_cse),
      .config_in_rsci_wen_comp(config_in_rsci_wen_comp),
      .config_in_rsci_idat_mxwt(config_in_rsci_idat_mxwt)
    );
  BoundingBoxGenerator_run_bbox_out_rsci BoundingBoxGenerator_run_bbox_out_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .bbox_out_rsc_dat(bbox_out_rsc_dat),
      .bbox_out_rsc_vld(bbox_out_rsc_vld),
      .bbox_out_rsc_rdy(bbox_out_rsc_rdy),
      .run_wen(run_wen),
      .bbox_out_rsci_oswt(reg_config_out_rsci_ivld_run_psct_cse),
      .bbox_out_rsci_wen_comp(bbox_out_rsci_wen_comp),
      .bbox_out_rsci_idat(nl_BoundingBoxGenerator_run_bbox_out_rsci_inst_bbox_out_rsci_idat[95:0])
    );
  BoundingBoxGenerator_run_triangle_out_rsci BoundingBoxGenerator_run_triangle_out_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .triangle_out_rsc_dat(triangle_out_rsc_dat),
      .triangle_out_rsc_vld(triangle_out_rsc_vld),
      .triangle_out_rsc_rdy(triangle_out_rsc_rdy),
      .run_wen(run_wen),
      .triangle_out_rsci_oswt(reg_config_out_rsci_ivld_run_psct_cse),
      .triangle_out_rsci_wen_comp(triangle_out_rsci_wen_comp),
      .triangle_out_rsci_idat(triangle_out_rsci_idat)
    );
  BoundingBoxGenerator_run_config_out_rsci BoundingBoxGenerator_run_config_out_rsci_inst
      (
      .clk(clk),
      .rst(rst),
      .config_out_rsc_dat(config_out_rsc_dat),
      .config_out_rsc_vld(config_out_rsc_vld),
      .config_out_rsc_rdy(config_out_rsc_rdy),
      .run_wen(run_wen),
      .config_out_rsci_oswt(reg_config_out_rsci_ivld_run_psct_cse),
      .config_out_rsci_wen_comp(config_out_rsci_wen_comp),
      .config_out_rsci_idat(config_out_rsci_idat)
    );
  BoundingBoxGenerator_run_staller BoundingBoxGenerator_run_staller_inst (
      .run_wen(run_wen),
      .triangle_in_rsci_wen_comp(triangle_in_rsci_wen_comp),
      .screen_in_rsci_wen_comp(screen_in_rsci_wen_comp),
      .config_in_rsci_wen_comp(config_in_rsci_wen_comp),
      .bbox_out_rsci_wen_comp(bbox_out_rsci_wen_comp),
      .triangle_out_rsci_wen_comp(triangle_out_rsci_wen_comp),
      .config_out_rsci_wen_comp(config_out_rsci_wen_comp)
    );
  BoundingBoxGenerator_run_run_fsm BoundingBoxGenerator_run_run_fsm_inst (
      .clk(clk),
      .rst(rst),
      .run_wen(run_wen),
      .fsm_output(fsm_output),
      .for_C_0_tr0(nl_BoundingBoxGenerator_run_run_fsm_inst_for_C_0_tr0[0:0])
    );
  assign bbox_out_and_cse = run_wen & z_out_1_24 & z_out_24 & (fsm_output[3]);
  assign bbox_out_and_8_cse = run_wen & ((and_dcpl_1 & z_out_3_24 & (fsm_output[3]))
      | or_tmp_9);
  assign bbox_out_and_12_cse = run_wen & ((and_dcpl_1 & z_out_2_24 & (fsm_output[3]))
      | or_tmp_21);
  assign config_subsample_and_cse = run_wen & (fsm_output[1]);
  assign BoundingBoxGenerator_floor_ss_and_3_cse = run_wen & (~ for_i_0_sva);
  assign BoundingBoxGenerator_max_b_1_sva_mx0 = MUX_v_24_2_2((triangle_in_crt_sva[143:120]),
      (triangle_in_crt_sva[119:96]), for_i_0_sva);
  assign BoundingBoxGenerator_max_b_sva_mx0 = MUX_v_24_2_2((triangle_in_crt_sva[71:48]),
      (triangle_in_crt_sva[47:24]), for_i_0_sva);
  assign BoundingBoxGenerator_floor_ss_else_else_asn_mdf_sva_1 = (config_subsample_sva[2])
      & operator_4_false_2_nor_itm;
  assign BoundingBoxGenerator_floor_ss_nor_nl = ~(BoundingBoxGenerator_floor_ss_BoundingBoxGenerator_floor_ss_and_2_itm
      | BoundingBoxGenerator_floor_ss_equal_tmp_2);
  assign BoundingBoxGenerator_floor_ss_mux_nl = MUX_v_8_2_2(8'b01111111, ({{7{BoundingBoxGenerator_floor_ss_else_else_asn_mdf_sva_1}},
      BoundingBoxGenerator_floor_ss_else_else_asn_mdf_sva_1}), BoundingBoxGenerator_floor_ss_nor_nl);
  assign BoundingBoxGenerator_floor_ss_mask_num_7_0_lpi_1_dfm_2 = ~(MUX_v_8_2_2((BoundingBoxGenerator_floor_ss_mux_nl),
      8'b11111111, BoundingBoxGenerator_floor_ss_equal_tmp_2));
  assign BoundingBoxGenerator_floor_ss_mask_num_8_lpi_1_dfm_1 = (~ BoundingBoxGenerator_floor_ss_else_else_asn_mdf_sva_1)
      | BoundingBoxGenerator_floor_ss_BoundingBoxGenerator_floor_ss_and_2_itm | BoundingBoxGenerator_floor_ss_equal_tmp_2;
  assign BoundingBoxGenerator_floor_ss_return_3_7_0_sva_1 = (BoundingBoxGenerator_max_1_qr_lpi_2_dfm[7:0])
      & BoundingBoxGenerator_floor_ss_mask_num_7_0_lpi_1_dfm_2;
  assign BoundingBoxGenerator_floor_ss_return_3_8_sva_1 = (BoundingBoxGenerator_max_1_qr_lpi_2_dfm[8])
      & BoundingBoxGenerator_floor_ss_mask_num_8_lpi_1_dfm_1;
  assign BoundingBoxGenerator_floor_ss_return_2_7_0_sva_1 = (BoundingBoxGenerator_max_qr_lpi_2_dfm[7:0])
      & BoundingBoxGenerator_floor_ss_mask_num_7_0_lpi_1_dfm_2;
  assign BoundingBoxGenerator_floor_ss_return_2_8_sva_1 = (BoundingBoxGenerator_max_qr_lpi_2_dfm[8])
      & BoundingBoxGenerator_floor_ss_mask_num_8_lpi_1_dfm_1;
  assign BoundingBoxGenerator_floor_ss_equal_tmp_2 = (config_subsample_sva[1]) &
      BoundingBoxGenerator_floor_ss_nor_2_itm;
  assign and_dcpl_1 = z_out_1_24 & z_out_24;
  assign or_tmp_9 = and_dcpl_1 & (~ z_out_3_24) & (fsm_output[3]);
  assign or_tmp_21 = and_dcpl_1 & (~ z_out_2_24) & (fsm_output[3]);
  assign BoundingBoxGenerator_max_1_qr_lpi_2_dfm_mx0c1 = z_out_24 & (fsm_output[2]);
  assign BoundingBoxGenerator_max_qr_lpi_2_dfm_mx0c1 = z_out_3_24 & (fsm_output[2]);
  assign BoundingBoxGenerator_min_1_qr_lpi_2_dfm_mx0c1 = z_out_2_24 & (fsm_output[2]);
  assign BoundingBoxGenerator_min_qr_lpi_2_dfm_mx0c1 = z_out_1_24 & (fsm_output[2]);
  always @(posedge clk) begin
    if ( rst ) begin
      bbox_out_rsci_idat_7_0 <= 8'b00000000;
      bbox_out_rsci_idat_8 <= 1'b0;
      bbox_out_rsci_idat_9 <= 1'b0;
      bbox_out_rsci_idat_22_10 <= 13'b0000000000000;
      bbox_out_rsci_idat_31_24 <= 8'b00000000;
      bbox_out_rsci_idat_32 <= 1'b0;
      bbox_out_rsci_idat_33 <= 1'b0;
      bbox_out_rsci_idat_46_34 <= 13'b0000000000000;
      config_out_rsci_idat <= 4'b0000;
      triangle_out_rsci_idat <= 288'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( bbox_out_and_cse ) begin
      bbox_out_rsci_idat_7_0 <= (BoundingBoxGenerator_min_qr_lpi_2_dfm[7:0]) & BoundingBoxGenerator_floor_ss_mask_num_7_0_lpi_1_dfm_2
          & (signext_8_1(~ (BoundingBoxGenerator_min_qr_lpi_2_dfm[23])));
      bbox_out_rsci_idat_8 <= (BoundingBoxGenerator_min_qr_lpi_2_dfm[8]) & BoundingBoxGenerator_floor_ss_mask_num_8_lpi_1_dfm_1
          & (~ (BoundingBoxGenerator_min_qr_lpi_2_dfm[23]));
      bbox_out_rsci_idat_9 <= (BoundingBoxGenerator_min_qr_lpi_2_dfm[9]) & (~ (BoundingBoxGenerator_min_qr_lpi_2_dfm[23]));
      bbox_out_rsci_idat_22_10 <= MUX_v_13_2_2(13'b0000000000000, (BoundingBoxGenerator_min_qr_lpi_2_dfm[22:10]),
          (BoundingBoxGenerator_max_2_not_4_nl));
      bbox_out_rsci_idat_31_24 <= (BoundingBoxGenerator_min_1_qr_lpi_2_dfm[7:0])
          & BoundingBoxGenerator_floor_ss_mask_num_7_0_lpi_1_dfm_2 & (signext_8_1(~
          (BoundingBoxGenerator_min_1_qr_lpi_2_dfm[23])));
      bbox_out_rsci_idat_32 <= (BoundingBoxGenerator_min_1_qr_lpi_2_dfm[8]) & BoundingBoxGenerator_floor_ss_mask_num_8_lpi_1_dfm_1
          & (~ (BoundingBoxGenerator_min_1_qr_lpi_2_dfm[23]));
      bbox_out_rsci_idat_33 <= (BoundingBoxGenerator_min_1_qr_lpi_2_dfm[9]) & (~
          (BoundingBoxGenerator_min_1_qr_lpi_2_dfm[23]));
      bbox_out_rsci_idat_46_34 <= MUX_v_13_2_2(13'b0000000000000, (BoundingBoxGenerator_min_1_qr_lpi_2_dfm[22:10]),
          (BoundingBoxGenerator_max_3_not_4_nl));
      config_out_rsci_idat <= config_subsample_sva;
      triangle_out_rsci_idat <= triangle_in_crt_sva;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      bbox_out_rsci_idat_55_48 <= 8'b00000000;
      bbox_out_rsci_idat_56 <= 1'b0;
      bbox_out_rsci_idat_57 <= 1'b0;
      bbox_out_rsci_idat_71_58 <= 14'b00000000000000;
    end
    else if ( bbox_out_and_8_cse ) begin
      bbox_out_rsci_idat_55_48 <= MUX_v_8_2_2((screen_in_crt_sva[7:0]), BoundingBoxGenerator_floor_ss_return_2_7_0_sva_1,
          or_tmp_9);
      bbox_out_rsci_idat_56 <= MUX_s_1_2_2((screen_in_crt_sva[8]), BoundingBoxGenerator_floor_ss_return_2_8_sva_1,
          or_tmp_9);
      bbox_out_rsci_idat_57 <= MUX_s_1_2_2((screen_in_crt_sva[9]), (BoundingBoxGenerator_max_qr_lpi_2_dfm[9]),
          or_tmp_9);
      bbox_out_rsci_idat_71_58 <= MUX_v_14_2_2((screen_in_crt_sva[23:10]), (BoundingBoxGenerator_max_qr_lpi_2_dfm[23:10]),
          or_tmp_9);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      bbox_out_rsci_idat_79_72 <= 8'b00000000;
      bbox_out_rsci_idat_80 <= 1'b0;
      bbox_out_rsci_idat_81 <= 1'b0;
      bbox_out_rsci_idat_95_82 <= 14'b00000000000000;
    end
    else if ( bbox_out_and_12_cse ) begin
      bbox_out_rsci_idat_79_72 <= MUX_v_8_2_2((screen_in_crt_sva[31:24]), BoundingBoxGenerator_floor_ss_return_3_7_0_sva_1,
          or_tmp_21);
      bbox_out_rsci_idat_80 <= MUX_s_1_2_2((screen_in_crt_sva[32]), BoundingBoxGenerator_floor_ss_return_3_8_sva_1,
          or_tmp_21);
      bbox_out_rsci_idat_81 <= MUX_s_1_2_2((screen_in_crt_sva[33]), (BoundingBoxGenerator_max_1_qr_lpi_2_dfm[9]),
          or_tmp_21);
      bbox_out_rsci_idat_95_82 <= MUX_v_14_2_2((screen_in_crt_sva[47:34]), (BoundingBoxGenerator_max_1_qr_lpi_2_dfm[23:10]),
          or_tmp_21);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_config_out_rsci_ivld_run_psct_cse <= 1'b0;
      reg_config_in_rsci_irdy_run_psct_cse <= 1'b0;
      for_i_0_sva <= 1'b0;
    end
    else if ( run_wen ) begin
      reg_config_out_rsci_ivld_run_psct_cse <= and_dcpl_1 & (fsm_output[3]);
      reg_config_in_rsci_irdy_run_psct_cse <= (fsm_output[0]) | (fsm_output[4]);
      for_i_0_sva <= ~ (fsm_output[2]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      config_subsample_sva <= 4'b0000;
      triangle_in_crt_sva <= 288'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
      screen_in_crt_sva <= 48'b000000000000000000000000000000000000000000000000;
    end
    else if ( config_subsample_and_cse ) begin
      config_subsample_sva <= config_in_rsci_idat_mxwt;
      triangle_in_crt_sva <= triangle_in_rsci_idat_mxwt;
      screen_in_crt_sva <= screen_in_rsci_idat_mxwt;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      BoundingBoxGenerator_max_1_qr_lpi_2_dfm <= 24'b000000000000000000000000;
    end
    else if ( run_wen & ((fsm_output[1]) | BoundingBoxGenerator_max_1_qr_lpi_2_dfm_mx0c1)
        ) begin
      BoundingBoxGenerator_max_1_qr_lpi_2_dfm <= MUX_v_24_2_2((triangle_in_rsci_idat_mxwt[95:72]),
          BoundingBoxGenerator_max_b_1_sva_mx0, BoundingBoxGenerator_max_1_qr_lpi_2_dfm_mx0c1);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      BoundingBoxGenerator_max_qr_lpi_2_dfm <= 24'b000000000000000000000000;
    end
    else if ( run_wen & ((fsm_output[1]) | BoundingBoxGenerator_max_qr_lpi_2_dfm_mx0c1)
        ) begin
      BoundingBoxGenerator_max_qr_lpi_2_dfm <= MUX_v_24_2_2((triangle_in_rsci_idat_mxwt[23:0]),
          BoundingBoxGenerator_max_b_sva_mx0, BoundingBoxGenerator_max_qr_lpi_2_dfm_mx0c1);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      BoundingBoxGenerator_min_1_qr_lpi_2_dfm <= 24'b000000000000000000000000;
    end
    else if ( run_wen & ((fsm_output[1]) | BoundingBoxGenerator_min_1_qr_lpi_2_dfm_mx0c1)
        ) begin
      BoundingBoxGenerator_min_1_qr_lpi_2_dfm <= MUX_v_24_2_2((triangle_in_rsci_idat_mxwt[95:72]),
          BoundingBoxGenerator_max_b_1_sva_mx0, BoundingBoxGenerator_min_1_qr_lpi_2_dfm_mx0c1);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      BoundingBoxGenerator_min_qr_lpi_2_dfm <= 24'b000000000000000000000000;
    end
    else if ( run_wen & ((fsm_output[1]) | BoundingBoxGenerator_min_qr_lpi_2_dfm_mx0c1)
        ) begin
      BoundingBoxGenerator_min_qr_lpi_2_dfm <= MUX_v_24_2_2((triangle_in_rsci_idat_mxwt[23:0]),
          BoundingBoxGenerator_max_b_sva_mx0, BoundingBoxGenerator_min_qr_lpi_2_dfm_mx0c1);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      operator_4_false_2_nor_itm <= 1'b0;
    end
    else if ( run_wen & (~((~((~((config_subsample_sva[1]) ^ (config_subsample_sva[0])))
        | (config_subsample_sva[3:2]!=2'b00))) | for_i_0_sva)) ) begin
      operator_4_false_2_nor_itm <= ~((config_subsample_sva[3]) | (config_subsample_sva[1])
          | (config_subsample_sva[0]));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      BoundingBoxGenerator_floor_ss_BoundingBoxGenerator_floor_ss_and_2_itm <= 1'b0;
      BoundingBoxGenerator_floor_ss_nor_2_itm <= 1'b0;
    end
    else if ( BoundingBoxGenerator_floor_ss_and_3_cse ) begin
      BoundingBoxGenerator_floor_ss_BoundingBoxGenerator_floor_ss_and_2_itm <= (config_subsample_sva==4'b0001);
      BoundingBoxGenerator_floor_ss_nor_2_itm <= ~((config_subsample_sva[3]) | (config_subsample_sva[2])
          | (config_subsample_sva[0]));
    end
  end
  assign BoundingBoxGenerator_max_2_not_4_nl = ~ (BoundingBoxGenerator_min_qr_lpi_2_dfm[23]);
  assign BoundingBoxGenerator_max_3_not_4_nl = ~ (BoundingBoxGenerator_min_1_qr_lpi_2_dfm[23]);
  assign screen_in_height_mux_4_nl = MUX_v_14_2_2((BoundingBoxGenerator_max_1_qr_lpi_2_dfm[23:10]),
      (screen_in_crt_sva[47:34]), z_out_2_24);
  assign screen_in_height_mux_5_nl = MUX_s_1_2_2((BoundingBoxGenerator_max_1_qr_lpi_2_dfm[9]),
      (screen_in_crt_sva[33]), z_out_2_24);
  assign screen_in_height_mux_6_nl = MUX_s_1_2_2(BoundingBoxGenerator_floor_ss_return_3_8_sva_1,
      (screen_in_crt_sva[32]), z_out_2_24);
  assign screen_in_height_mux_7_nl = MUX_v_8_2_2(BoundingBoxGenerator_floor_ss_return_3_7_0_sva_1,
      (screen_in_crt_sva[31:24]), z_out_2_24);
  assign valid_bbox_aelse_2_mux_2_nl = MUX_v_24_2_2(({(screen_in_height_mux_4_nl)
      , (screen_in_height_mux_5_nl) , (screen_in_height_mux_6_nl) , (screen_in_height_mux_7_nl)}),
      BoundingBoxGenerator_max_1_qr_lpi_2_dfm, fsm_output[2]);
  assign valid_bbox_aelse_2_mux_3_nl = MUX_v_24_2_2((~ (screen_in_crt_sva[47:24])),
      (~ BoundingBoxGenerator_max_b_1_sva_mx0), fsm_output[2]);
  assign nl_acc_nl = conv_s2u_25_26({(valid_bbox_aelse_2_mux_2_nl) , 1'b1}) + conv_s2u_25_26({(valid_bbox_aelse_2_mux_3_nl)
      , 1'b1});
  assign acc_nl = nl_acc_nl[25:0];
  assign z_out_24 = readslicef_26_1_25((acc_nl));
  assign screen_in_width_mux_4_nl = MUX_v_14_2_2((BoundingBoxGenerator_max_qr_lpi_2_dfm[23:10]),
      (screen_in_crt_sva[23:10]), z_out_3_24);
  assign screen_in_width_mux_5_nl = MUX_s_1_2_2((BoundingBoxGenerator_max_qr_lpi_2_dfm[9]),
      (screen_in_crt_sva[9]), z_out_3_24);
  assign screen_in_width_mux_6_nl = MUX_s_1_2_2(BoundingBoxGenerator_floor_ss_return_2_8_sva_1,
      (screen_in_crt_sva[8]), z_out_3_24);
  assign screen_in_width_mux_7_nl = MUX_v_8_2_2(BoundingBoxGenerator_floor_ss_return_2_7_0_sva_1,
      (screen_in_crt_sva[7:0]), z_out_3_24);
  assign valid_bbox_aelse_1_mux_2_nl = MUX_v_24_2_2(({(screen_in_width_mux_4_nl)
      , (screen_in_width_mux_5_nl) , (screen_in_width_mux_6_nl) , (screen_in_width_mux_7_nl)}),
      BoundingBoxGenerator_max_b_sva_mx0, fsm_output[2]);
  assign valid_bbox_aelse_1_mux_3_nl = MUX_v_24_2_2((~ (screen_in_crt_sva[23:0])),
      (~ BoundingBoxGenerator_min_qr_lpi_2_dfm), fsm_output[2]);
  assign nl_acc_1_nl = conv_s2u_25_26({(valid_bbox_aelse_1_mux_2_nl) , 1'b1}) + conv_s2u_25_26({(valid_bbox_aelse_1_mux_3_nl)
      , 1'b1});
  assign acc_1_nl = nl_acc_1_nl[25:0];
  assign z_out_1_24 = readslicef_26_1_25((acc_1_nl));
  assign BoundingBoxGenerator_min_3_mux_2_nl = MUX_v_24_2_2((screen_in_crt_sva[47:24]),
      BoundingBoxGenerator_max_b_1_sva_mx0, fsm_output[2]);
  assign BoundingBoxGenerator_min_3_mux_3_nl = MUX_v_24_2_2(({(~ (BoundingBoxGenerator_max_1_qr_lpi_2_dfm[23:9]))
      , (~ BoundingBoxGenerator_floor_ss_return_3_8_sva_1) , (~ BoundingBoxGenerator_floor_ss_return_3_7_0_sva_1)}),
      (~ BoundingBoxGenerator_min_1_qr_lpi_2_dfm), fsm_output[2]);
  assign nl_acc_2_nl = conv_s2u_25_26({(BoundingBoxGenerator_min_3_mux_2_nl) , 1'b1})
      + conv_s2u_25_26({(BoundingBoxGenerator_min_3_mux_3_nl) , 1'b1});
  assign acc_2_nl = nl_acc_2_nl[25:0];
  assign z_out_2_24 = readslicef_26_1_25((acc_2_nl));
  assign BoundingBoxGenerator_min_2_mux_2_nl = MUX_v_24_2_2((screen_in_crt_sva[23:0]),
      BoundingBoxGenerator_max_qr_lpi_2_dfm, fsm_output[2]);
  assign BoundingBoxGenerator_min_2_mux_3_nl = MUX_v_24_2_2(({(~ (BoundingBoxGenerator_max_qr_lpi_2_dfm[23:9]))
      , (~ BoundingBoxGenerator_floor_ss_return_2_8_sva_1) , (~ BoundingBoxGenerator_floor_ss_return_2_7_0_sva_1)}),
      (~ BoundingBoxGenerator_max_b_sva_mx0), fsm_output[2]);
  assign nl_acc_3_nl = conv_s2u_25_26({(BoundingBoxGenerator_min_2_mux_2_nl) , 1'b1})
      + conv_s2u_25_26({(BoundingBoxGenerator_min_2_mux_3_nl) , 1'b1});
  assign acc_3_nl = nl_acc_3_nl[25:0];
  assign z_out_3_24 = readslicef_26_1_25((acc_3_nl));

  function automatic [0:0] MUX_s_1_2_2;
    input [0:0] input_0;
    input [0:0] input_1;
    input [0:0] sel;
    reg [0:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_s_1_2_2 = result;
  end
  endfunction


  function automatic [12:0] MUX_v_13_2_2;
    input [12:0] input_0;
    input [12:0] input_1;
    input [0:0] sel;
    reg [12:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_13_2_2 = result;
  end
  endfunction


  function automatic [13:0] MUX_v_14_2_2;
    input [13:0] input_0;
    input [13:0] input_1;
    input [0:0] sel;
    reg [13:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_14_2_2 = result;
  end
  endfunction


  function automatic [23:0] MUX_v_24_2_2;
    input [23:0] input_0;
    input [23:0] input_1;
    input [0:0] sel;
    reg [23:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_24_2_2 = result;
  end
  endfunction


  function automatic [7:0] MUX_v_8_2_2;
    input [7:0] input_0;
    input [7:0] input_1;
    input [0:0] sel;
    reg [7:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_8_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_26_1_25;
    input [25:0] vector;
    reg [25:0] tmp;
  begin
    tmp = vector >> 25;
    readslicef_26_1_25 = tmp[0:0];
  end
  endfunction


  function automatic [7:0] signext_8_1;
    input [0:0] vector;
  begin
    signext_8_1= {{7{vector[0]}}, vector};
  end
  endfunction


  function automatic [25:0] conv_s2u_25_26 ;
    input [24:0]  vector ;
  begin
    conv_s2u_25_26 = {vector[24], vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator_run
// ------------------------------------------------------------------


module TestIterator_run (
  clk, rst, bbox_in_rsc_dat, bbox_in_rsc_vld, bbox_in_rsc_rdy, triangle_in_rsc_dat,
      triangle_in_rsc_vld, triangle_in_rsc_rdy, config_in_rsc_dat, config_in_rsc_vld,
      config_in_rsc_rdy, sample_out_rsc_dat, sample_out_rsc_vld, sample_out_rsc_rdy,
      sampleTest_run_cmp_triangle_v_x_rsc_dat, sampleTest_run_cmp_triangle_v_y_rsc_dat,
      sampleTest_run_cmp_triangle_v_z_rsc_dat, sampleTest_run_cmp_sample_x_rsc_dat,
      sampleTest_run_cmp_sample_y_rsc_dat, sampleTest_run_cmp_return_rsc_z, sampleTest_run_cmp_ccs_ccore_en,
      sampleTest_run_cmp_ccs_ccore_start_rsc_dat, jitterSample_run_cmp_sample_x_rsc_dat,
      jitterSample_run_cmp_sample_y_rsc_dat, jitterSample_run_cmp_config_subsample_rsc_dat,
      jitterSample_run_cmp_return_x_rsc_z, jitterSample_run_cmp_return_y_rsc_z, jitterSample_run_cmp_ccs_ccore_en,
      jitterSample_run_cmp_ccs_ccore_start_rsc_dat, sampleTest_run_cmp_triangle_R_rsc_dat_pff,
      sampleTest_run_cmp_triangle_G_rsc_dat_pff, sampleTest_run_cmp_triangle_B_rsc_dat_pff
);
  input clk;
  input rst;
  input [95:0] bbox_in_rsc_dat;
  input bbox_in_rsc_vld;
  output bbox_in_rsc_rdy;
  input [287:0] triangle_in_rsc_dat;
  input triangle_in_rsc_vld;
  output triangle_in_rsc_rdy;
  input [3:0] config_in_rsc_dat;
  input config_in_rsc_vld;
  output config_in_rsc_rdy;
  output [119:0] sample_out_rsc_dat;
  output sample_out_rsc_vld;
  input sample_out_rsc_rdy;
  output [71:0] sampleTest_run_cmp_triangle_v_x_rsc_dat;
  output [71:0] sampleTest_run_cmp_triangle_v_y_rsc_dat;
  output [71:0] sampleTest_run_cmp_triangle_v_z_rsc_dat;
  output [23:0] sampleTest_run_cmp_sample_x_rsc_dat;
  output [23:0] sampleTest_run_cmp_sample_y_rsc_dat;
  input sampleTest_run_cmp_return_rsc_z;
  output sampleTest_run_cmp_ccs_ccore_en;
  output sampleTest_run_cmp_ccs_ccore_start_rsc_dat;
  output [23:0] jitterSample_run_cmp_sample_x_rsc_dat;
  output [23:0] jitterSample_run_cmp_sample_y_rsc_dat;
  output [3:0] jitterSample_run_cmp_config_subsample_rsc_dat;
  input [23:0] jitterSample_run_cmp_return_x_rsc_z;
  input [23:0] jitterSample_run_cmp_return_y_rsc_z;
  output jitterSample_run_cmp_ccs_ccore_en;
  output jitterSample_run_cmp_ccs_ccore_start_rsc_dat;
  output [23:0] sampleTest_run_cmp_triangle_R_rsc_dat_pff;
  output [23:0] sampleTest_run_cmp_triangle_G_rsc_dat_pff;
  output [23:0] sampleTest_run_cmp_triangle_B_rsc_dat_pff;


  // Interconnect Declarations
  wire run_wen;
  wire bbox_in_rsci_wen_comp;
  wire [95:0] bbox_in_rsci_idat_mxwt;
  wire triangle_in_rsci_wen_comp;
  wire [287:0] triangle_in_rsci_idat_mxwt;
  wire config_in_rsci_wen_comp;
  wire [3:0] config_in_rsci_idat_mxwt;
  wire sample_out_rsci_wen_comp;
  reg [71:0] sample_out_rsci_idat_119_48;
  reg [16:0] sample_out_rsci_idat_47_31;
  reg [6:0] sample_out_rsci_idat_30_24;
  reg [16:0] sample_out_rsci_idat_23_7;
  reg [6:0] sample_out_rsci_idat_6_0;
  wire [14:0] fsm_output;
  wire or_dcpl_1;
  reg exit_for_for_sva;
  wire sample_out_and_cse;
  reg reg_sample_out_rsci_ivld_run_psct_cse;
  reg reg_config_in_rsci_irdy_run_psct_cse;
  reg reg_ensig_cgo_cse;
  wire nor_9_cse;
  wire or_20_rmff;
  reg [16:0] sample_y_23_7_sva_1;
  reg [95:0] bbox_in_crt_sva;
  reg [16:0] sample_x_23_7_sva_1;
  reg [287:0] triangle_in_crt_sva;
  reg [23:0] for_for_isHit_SampleTest_jitter_x_sva;
  reg [23:0] for_for_isHit_SampleTest_jitter_y_sva;
  reg [3:0] config_subsample_sva;
  wire [16:0] z_out;
  wire [17:0] nl_z_out;
  reg operator_4_false_2_operator_4_false_2_and_mdf_sva;
  reg [1:0] increment_val_8_7_lpi_1_dfm_1;
  reg [16:0] sample_y_23_7_sva_2;
  wire operator_4_false_2_operator_4_false_2_and_mdf_sva_mx0w0;
  wire and_1_cse_1;
  wire and_cse;
  wire z_out_1_24;

  wire[1:0] mux_7_nl;
  wire[0:0] nor_6_nl;
  wire[0:0] nor_11_nl;
  wire[16:0] for_mux_5_nl;
  wire[25:0] acc_1_nl;
  wire[26:0] nl_acc_1_nl;
  wire[23:0] for_for_mux_1_nl;
  wire[0:0] for_or_2_nl;
  wire[23:0] for_mux1h_2_nl;

  // Interconnect Declarations for Component Instantiations 
  wire [119:0] nl_TestIterator_run_sample_out_rsci_inst_sample_out_rsci_idat;
  assign nl_TestIterator_run_sample_out_rsci_inst_sample_out_rsci_idat = {sample_out_rsci_idat_119_48
      , sample_out_rsci_idat_47_31 , sample_out_rsci_idat_30_24 , sample_out_rsci_idat_23_7
      , sample_out_rsci_idat_6_0};
  TestIterator_run_bbox_in_rsci TestIterator_run_bbox_in_rsci_inst (
      .clk(clk),
      .rst(rst),
      .bbox_in_rsc_dat(bbox_in_rsc_dat),
      .bbox_in_rsc_vld(bbox_in_rsc_vld),
      .bbox_in_rsc_rdy(bbox_in_rsc_rdy),
      .run_wen(run_wen),
      .bbox_in_rsci_oswt(reg_config_in_rsci_irdy_run_psct_cse),
      .bbox_in_rsci_wen_comp(bbox_in_rsci_wen_comp),
      .bbox_in_rsci_idat_mxwt(bbox_in_rsci_idat_mxwt)
    );
  TestIterator_run_triangle_in_rsci TestIterator_run_triangle_in_rsci_inst (
      .clk(clk),
      .rst(rst),
      .triangle_in_rsc_dat(triangle_in_rsc_dat),
      .triangle_in_rsc_vld(triangle_in_rsc_vld),
      .triangle_in_rsc_rdy(triangle_in_rsc_rdy),
      .run_wen(run_wen),
      .triangle_in_rsci_oswt(reg_config_in_rsci_irdy_run_psct_cse),
      .triangle_in_rsci_wen_comp(triangle_in_rsci_wen_comp),
      .triangle_in_rsci_idat_mxwt(triangle_in_rsci_idat_mxwt)
    );
  TestIterator_run_config_in_rsci TestIterator_run_config_in_rsci_inst (
      .clk(clk),
      .rst(rst),
      .config_in_rsc_dat(config_in_rsc_dat),
      .config_in_rsc_vld(config_in_rsc_vld),
      .config_in_rsc_rdy(config_in_rsc_rdy),
      .run_wen(run_wen),
      .config_in_rsci_oswt(reg_config_in_rsci_irdy_run_psct_cse),
      .config_in_rsci_wen_comp(config_in_rsci_wen_comp),
      .config_in_rsci_idat_mxwt(config_in_rsci_idat_mxwt)
    );
  TestIterator_run_sample_out_rsci TestIterator_run_sample_out_rsci_inst (
      .clk(clk),
      .rst(rst),
      .sample_out_rsc_dat(sample_out_rsc_dat),
      .sample_out_rsc_vld(sample_out_rsc_vld),
      .sample_out_rsc_rdy(sample_out_rsc_rdy),
      .run_wen(run_wen),
      .sample_out_rsci_oswt(reg_sample_out_rsci_ivld_run_psct_cse),
      .sample_out_rsci_wen_comp(sample_out_rsci_wen_comp),
      .sample_out_rsci_idat(nl_TestIterator_run_sample_out_rsci_inst_sample_out_rsci_idat[119:0])
    );
  TestIterator_run_wait_dp TestIterator_run_wait_dp_inst (
      .ensig_cgo_iro(or_20_rmff),
      .sampleTest_run_cmp_ccs_ccore_en(sampleTest_run_cmp_ccs_ccore_en),
      .run_wen(run_wen),
      .ensig_cgo(reg_ensig_cgo_cse)
    );
  TestIterator_run_staller TestIterator_run_staller_inst (
      .run_wen(run_wen),
      .bbox_in_rsci_wen_comp(bbox_in_rsci_wen_comp),
      .triangle_in_rsci_wen_comp(triangle_in_rsci_wen_comp),
      .config_in_rsci_wen_comp(config_in_rsci_wen_comp),
      .sample_out_rsci_wen_comp(sample_out_rsci_wen_comp)
    );
  TestIterator_run_run_fsm TestIterator_run_run_fsm_inst (
      .clk(clk),
      .rst(rst),
      .run_wen(run_wen),
      .fsm_output(fsm_output),
      .main_C_1_tr0(z_out_1_24),
      .for_C_0_tr0(z_out_1_24),
      .for_for_C_9_tr0(exit_for_for_sva),
      .for_C_1_tr0(z_out_1_24)
    );
  assign jitterSample_run_cmp_ccs_ccore_en = run_wen;
  assign sample_out_and_cse = run_wen & (fsm_output[12]) & sampleTest_run_cmp_return_rsc_z;
  assign or_20_rmff = or_dcpl_1 | (fsm_output[9:7]!=3'b000);
  assign and_cse = run_wen & (~ nor_9_cse);
  assign operator_4_false_2_operator_4_false_2_and_mdf_sva_mx0w0 = (config_in_rsci_idat_mxwt==4'b0100);
  assign and_1_cse_1 = (config_in_rsci_idat_mxwt==4'b0010);
  assign nor_9_cse = ~((fsm_output[1:0]!=2'b00));
  assign or_dcpl_1 = (fsm_output[11:10]!=2'b00);
  assign sampleTest_run_cmp_triangle_v_x_rsc_dat = triangle_in_crt_sva[71:0];
  assign sampleTest_run_cmp_triangle_v_y_rsc_dat = triangle_in_crt_sva[143:72];
  assign sampleTest_run_cmp_triangle_v_z_rsc_dat = triangle_in_crt_sva[215:144];
  assign sampleTest_run_cmp_triangle_R_rsc_dat_pff = triangle_in_crt_sva[239:216];
  assign sampleTest_run_cmp_triangle_G_rsc_dat_pff = triangle_in_crt_sva[263:240];
  assign sampleTest_run_cmp_triangle_B_rsc_dat_pff = triangle_in_crt_sva[287:264];
  assign sampleTest_run_cmp_sample_x_rsc_dat = for_for_isHit_SampleTest_jitter_x_sva;
  assign sampleTest_run_cmp_sample_y_rsc_dat = for_for_isHit_SampleTest_jitter_y_sva;
  assign sampleTest_run_cmp_ccs_ccore_start_rsc_dat = fsm_output[7];
  assign jitterSample_run_cmp_sample_x_rsc_dat = {sample_x_23_7_sva_1 , (bbox_in_crt_sva[6:0])};
  assign jitterSample_run_cmp_sample_y_rsc_dat = {sample_y_23_7_sva_1 , (bbox_in_crt_sva[30:24])};
  assign jitterSample_run_cmp_config_subsample_rsc_dat = config_subsample_sva;
  assign jitterSample_run_cmp_ccs_ccore_start_rsc_dat = fsm_output[4];
  always @(posedge clk) begin
    if ( rst ) begin
      sample_out_rsci_idat_6_0 <= 7'b0000000;
      sample_out_rsci_idat_23_7 <= 17'b00000000000000000;
      sample_out_rsci_idat_30_24 <= 7'b0000000;
      sample_out_rsci_idat_47_31 <= 17'b00000000000000000;
      sample_out_rsci_idat_119_48 <= 72'b000000000000000000000000000000000000000000000000000000000000000000000000;
    end
    else if ( sample_out_and_cse ) begin
      sample_out_rsci_idat_6_0 <= bbox_in_crt_sva[6:0];
      sample_out_rsci_idat_23_7 <= sample_x_23_7_sva_1;
      sample_out_rsci_idat_30_24 <= bbox_in_crt_sva[30:24];
      sample_out_rsci_idat_47_31 <= sample_y_23_7_sva_1;
      sample_out_rsci_idat_119_48 <= triangle_in_crt_sva[287:216];
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      reg_ensig_cgo_cse <= 1'b0;
      reg_sample_out_rsci_ivld_run_psct_cse <= 1'b0;
      reg_config_in_rsci_irdy_run_psct_cse <= 1'b0;
      bbox_in_crt_sva <= 96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
      triangle_in_crt_sva <= 288'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
      config_subsample_sva <= 4'b0000;
      sample_y_23_7_sva_1 <= 17'b00000000000000000;
      for_for_isHit_SampleTest_jitter_y_sva <= 24'b000000000000000000000000;
      for_for_isHit_SampleTest_jitter_x_sva <= 24'b000000000000000000000000;
    end
    else if ( run_wen ) begin
      reg_ensig_cgo_cse <= or_20_rmff;
      reg_sample_out_rsci_ivld_run_psct_cse <= sampleTest_run_cmp_return_rsc_z &
          (fsm_output[12]);
      reg_config_in_rsci_irdy_run_psct_cse <= ~((~((fsm_output[0]) | (fsm_output[2])
          | (fsm_output[14]))) | (~(z_out_1_24 | (fsm_output[0]))));
      bbox_in_crt_sva <= MUX_v_96_2_2(bbox_in_rsci_idat_mxwt, bbox_in_crt_sva, nor_9_cse);
      triangle_in_crt_sva <= MUX_v_288_2_2(triangle_in_rsci_idat_mxwt, triangle_in_crt_sva,
          nor_9_cse);
      config_subsample_sva <= MUX_v_4_2_2(config_in_rsci_idat_mxwt, config_subsample_sva,
          nor_9_cse);
      sample_y_23_7_sva_1 <= MUX1HOT_v_17_3_2((bbox_in_crt_sva[47:31]), sample_y_23_7_sva_2,
          sample_y_23_7_sva_1, {(fsm_output[3]) , (fsm_output[12]) , (nor_11_nl)});
      for_for_isHit_SampleTest_jitter_y_sva <= jitterSample_run_cmp_return_y_rsc_z;
      for_for_isHit_SampleTest_jitter_x_sva <= jitterSample_run_cmp_return_x_rsc_z;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      operator_4_false_2_operator_4_false_2_and_mdf_sva <= 1'b0;
      increment_val_8_7_lpi_1_dfm_1 <= 2'b00;
    end
    else if ( and_cse ) begin
      operator_4_false_2_operator_4_false_2_and_mdf_sva <= operator_4_false_2_operator_4_false_2_and_mdf_sva_mx0w0;
      increment_val_8_7_lpi_1_dfm_1 <= ~((mux_7_nl) | (signext_2_1(nor_6_nl)) | ({{1{operator_4_false_2_operator_4_false_2_and_mdf_sva_mx0w0}},
          operator_4_false_2_operator_4_false_2_and_mdf_sva_mx0w0}));
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      sample_x_23_7_sva_1 <= 17'b00000000000000000;
    end
    else if ( run_wen & ((fsm_output[14]) | (fsm_output[2])) ) begin
      sample_x_23_7_sva_1 <= MUX_v_17_2_2((bbox_in_crt_sva[23:7]), z_out, fsm_output[14]);
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      exit_for_for_sva <= 1'b0;
    end
    else if ( run_wen & (fsm_output[4]) ) begin
      exit_for_for_sva <= z_out_1_24;
    end
  end
  always @(posedge clk) begin
    if ( rst ) begin
      sample_y_23_7_sva_2 <= 17'b00000000000000000;
    end
    else if ( run_wen & (~(or_dcpl_1 | (fsm_output[9:5]!=5'b00000))) ) begin
      sample_y_23_7_sva_2 <= z_out;
    end
  end
  assign nor_11_nl = ~((~ nor_9_cse) | (fsm_output[12]) | (fsm_output[3]) | (fsm_output[2])
      | (fsm_output[14]));
  assign mux_7_nl = MUX_v_2_2_2(2'b10, 2'b01, and_1_cse_1);
  assign nor_6_nl = ~(((config_in_rsci_idat_mxwt==4'b0001)) | and_1_cse_1);
  assign for_mux_5_nl = MUX_v_17_2_2(sample_x_23_7_sva_1, sample_y_23_7_sva_1, fsm_output[4]);
  assign nl_z_out = (for_mux_5_nl) + conv_u2u_4_17({operator_4_false_2_operator_4_false_2_and_mdf_sva
      , 1'b0 , increment_val_8_7_lpi_1_dfm_1});
  assign z_out = nl_z_out[16:0];
  assign for_or_2_nl = (fsm_output[4:3]!=2'b00);
  assign for_for_mux_1_nl = MUX_v_24_2_2((bbox_in_crt_sva[71:48]), (bbox_in_crt_sva[95:72]),
      for_or_2_nl);
  assign for_mux1h_2_nl = MUX1HOT_v_24_4_2((~ (bbox_in_crt_sva[23:0])), ({(~ z_out)
      , (~ (bbox_in_crt_sva[6:0]))}), ({(~ z_out) , (~ (bbox_in_crt_sva[30:24]))}),
      (~ (bbox_in_crt_sva[47:24])), {(fsm_output[2]) , (fsm_output[14]) , (fsm_output[4])
      , (fsm_output[3])});
  assign nl_acc_1_nl = conv_s2u_25_26({(for_for_mux_1_nl) , 1'b1}) + conv_s2u_25_26({(for_mux1h_2_nl)
      , 1'b1});
  assign acc_1_nl = nl_acc_1_nl[25:0];
  assign z_out_1_24 = readslicef_26_1_25((acc_1_nl));

  function automatic [16:0] MUX1HOT_v_17_3_2;
    input [16:0] input_2;
    input [16:0] input_1;
    input [16:0] input_0;
    input [2:0] sel;
    reg [16:0] result;
  begin
    result = input_0 & {17{sel[0]}};
    result = result | ( input_1 & {17{sel[1]}});
    result = result | ( input_2 & {17{sel[2]}});
    MUX1HOT_v_17_3_2 = result;
  end
  endfunction


  function automatic [23:0] MUX1HOT_v_24_4_2;
    input [23:0] input_3;
    input [23:0] input_2;
    input [23:0] input_1;
    input [23:0] input_0;
    input [3:0] sel;
    reg [23:0] result;
  begin
    result = input_0 & {24{sel[0]}};
    result = result | ( input_1 & {24{sel[1]}});
    result = result | ( input_2 & {24{sel[2]}});
    result = result | ( input_3 & {24{sel[3]}});
    MUX1HOT_v_24_4_2 = result;
  end
  endfunction


  function automatic [16:0] MUX_v_17_2_2;
    input [16:0] input_0;
    input [16:0] input_1;
    input [0:0] sel;
    reg [16:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_17_2_2 = result;
  end
  endfunction


  function automatic [23:0] MUX_v_24_2_2;
    input [23:0] input_0;
    input [23:0] input_1;
    input [0:0] sel;
    reg [23:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_24_2_2 = result;
  end
  endfunction


  function automatic [287:0] MUX_v_288_2_2;
    input [287:0] input_0;
    input [287:0] input_1;
    input [0:0] sel;
    reg [287:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_288_2_2 = result;
  end
  endfunction


  function automatic [1:0] MUX_v_2_2_2;
    input [1:0] input_0;
    input [1:0] input_1;
    input [0:0] sel;
    reg [1:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_2_2_2 = result;
  end
  endfunction


  function automatic [3:0] MUX_v_4_2_2;
    input [3:0] input_0;
    input [3:0] input_1;
    input [0:0] sel;
    reg [3:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_4_2_2 = result;
  end
  endfunction


  function automatic [95:0] MUX_v_96_2_2;
    input [95:0] input_0;
    input [95:0] input_1;
    input [0:0] sel;
    reg [95:0] result;
  begin
    case (sel)
      1'b0 : begin
        result = input_0;
      end
      default : begin
        result = input_1;
      end
    endcase
    MUX_v_96_2_2 = result;
  end
  endfunction


  function automatic [0:0] readslicef_26_1_25;
    input [25:0] vector;
    reg [25:0] tmp;
  begin
    tmp = vector >> 25;
    readslicef_26_1_25 = tmp[0:0];
  end
  endfunction


  function automatic [1:0] signext_2_1;
    input [0:0] vector;
  begin
    signext_2_1= {{1{vector[0]}}, vector};
  end
  endfunction


  function automatic [25:0] conv_s2u_25_26 ;
    input [24:0]  vector ;
  begin
    conv_s2u_25_26 = {vector[24], vector};
  end
  endfunction


  function automatic [16:0] conv_u2u_4_17 ;
    input [3:0]  vector ;
  begin
    conv_u2u_4_17 = {{13{1'b0}}, vector};
  end
  endfunction

endmodule

// ------------------------------------------------------------------
//  Design Unit:    BoundingBoxGenerator
// ------------------------------------------------------------------


module BoundingBoxGenerator (
  clk, rst, triangle_in_rsc_dat, triangle_in_rsc_vld, triangle_in_rsc_rdy, screen_in_rsc_dat,
      screen_in_rsc_vld, screen_in_rsc_rdy, config_in_rsc_dat, config_in_rsc_vld,
      config_in_rsc_rdy, bbox_out_rsc_dat, bbox_out_rsc_vld, bbox_out_rsc_rdy, triangle_out_rsc_dat,
      triangle_out_rsc_vld, triangle_out_rsc_rdy, config_out_rsc_dat, config_out_rsc_vld,
      config_out_rsc_rdy
);
  input clk;
  input rst;
  input [287:0] triangle_in_rsc_dat;
  input triangle_in_rsc_vld;
  output triangle_in_rsc_rdy;
  input [47:0] screen_in_rsc_dat;
  input screen_in_rsc_vld;
  output screen_in_rsc_rdy;
  input [3:0] config_in_rsc_dat;
  input config_in_rsc_vld;
  output config_in_rsc_rdy;
  output [95:0] bbox_out_rsc_dat;
  output bbox_out_rsc_vld;
  input bbox_out_rsc_rdy;
  output [287:0] triangle_out_rsc_dat;
  output triangle_out_rsc_vld;
  input triangle_out_rsc_rdy;
  output [3:0] config_out_rsc_dat;
  output config_out_rsc_vld;
  input config_out_rsc_rdy;



  // Interconnect Declarations for Component Instantiations 
  BoundingBoxGenerator_run BoundingBoxGenerator_run_inst (
      .clk(clk),
      .rst(rst),
      .triangle_in_rsc_dat(triangle_in_rsc_dat),
      .triangle_in_rsc_vld(triangle_in_rsc_vld),
      .triangle_in_rsc_rdy(triangle_in_rsc_rdy),
      .screen_in_rsc_dat(screen_in_rsc_dat),
      .screen_in_rsc_vld(screen_in_rsc_vld),
      .screen_in_rsc_rdy(screen_in_rsc_rdy),
      .config_in_rsc_dat(config_in_rsc_dat),
      .config_in_rsc_vld(config_in_rsc_vld),
      .config_in_rsc_rdy(config_in_rsc_rdy),
      .bbox_out_rsc_dat(bbox_out_rsc_dat),
      .bbox_out_rsc_vld(bbox_out_rsc_vld),
      .bbox_out_rsc_rdy(bbox_out_rsc_rdy),
      .triangle_out_rsc_dat(triangle_out_rsc_dat),
      .triangle_out_rsc_vld(triangle_out_rsc_vld),
      .triangle_out_rsc_rdy(triangle_out_rsc_rdy),
      .config_out_rsc_dat(config_out_rsc_dat),
      .config_out_rsc_vld(config_out_rsc_vld),
      .config_out_rsc_rdy(config_out_rsc_rdy)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    TestIterator
// ------------------------------------------------------------------


module TestIterator (
  clk, rst, bbox_in_rsc_dat, bbox_in_rsc_vld, bbox_in_rsc_rdy, triangle_in_rsc_dat,
      triangle_in_rsc_vld, triangle_in_rsc_rdy, config_in_rsc_dat, config_in_rsc_vld,
      config_in_rsc_rdy, sample_out_rsc_dat, sample_out_rsc_vld, sample_out_rsc_rdy
);
  input clk;
  input rst;
  input [95:0] bbox_in_rsc_dat;
  input bbox_in_rsc_vld;
  output bbox_in_rsc_rdy;
  input [287:0] triangle_in_rsc_dat;
  input triangle_in_rsc_vld;
  output triangle_in_rsc_rdy;
  input [3:0] config_in_rsc_dat;
  input config_in_rsc_vld;
  output config_in_rsc_rdy;
  output [119:0] sample_out_rsc_dat;
  output sample_out_rsc_vld;
  input sample_out_rsc_rdy;


  // Interconnect Declarations
  wire [71:0] sampleTest_run_cmp_triangle_v_x_rsc_dat;
  wire [71:0] sampleTest_run_cmp_triangle_v_y_rsc_dat;
  wire [71:0] sampleTest_run_cmp_triangle_v_z_rsc_dat;
  wire [23:0] sampleTest_run_cmp_sample_x_rsc_dat;
  wire [23:0] sampleTest_run_cmp_sample_y_rsc_dat;
  wire sampleTest_run_cmp_return_rsc_z;
  wire sampleTest_run_cmp_ccs_ccore_en;
  wire sampleTest_run_cmp_ccs_ccore_start_rsc_dat;
  wire [23:0] jitterSample_run_cmp_sample_x_rsc_dat;
  wire [23:0] jitterSample_run_cmp_sample_y_rsc_dat;
  wire [3:0] jitterSample_run_cmp_config_subsample_rsc_dat;
  wire [23:0] jitterSample_run_cmp_return_x_rsc_z;
  wire [23:0] jitterSample_run_cmp_return_y_rsc_z;
  wire jitterSample_run_cmp_ccs_ccore_en;
  wire jitterSample_run_cmp_ccs_ccore_start_rsc_dat;
  wire [23:0] sampleTest_run_cmp_triangle_R_rsc_dat_iff;
  wire [23:0] sampleTest_run_cmp_triangle_G_rsc_dat_iff;
  wire [23:0] sampleTest_run_cmp_triangle_B_rsc_dat_iff;


  // Interconnect Declarations for Component Instantiations 
  SampleTest  sampleTest_run_cmp (
      .triangle_v_x_rsc_dat(sampleTest_run_cmp_triangle_v_x_rsc_dat),
      .triangle_v_y_rsc_dat(sampleTest_run_cmp_triangle_v_y_rsc_dat),
      .triangle_v_z_rsc_dat(sampleTest_run_cmp_triangle_v_z_rsc_dat),
      .triangle_R_rsc_dat(sampleTest_run_cmp_triangle_R_rsc_dat_iff),
      .triangle_G_rsc_dat(sampleTest_run_cmp_triangle_G_rsc_dat_iff),
      .triangle_B_rsc_dat(sampleTest_run_cmp_triangle_B_rsc_dat_iff),
      .sample_x_rsc_dat(sampleTest_run_cmp_sample_x_rsc_dat),
      .sample_y_rsc_dat(sampleTest_run_cmp_sample_y_rsc_dat),
      .sample_R_rsc_dat(24'b000000000000000000000000),
      .sample_G_rsc_dat(24'b000000000000000000000000),
      .sample_B_rsc_dat(24'b000000000000000000000000),
      .return_rsc_z(sampleTest_run_cmp_return_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(sampleTest_run_cmp_ccs_ccore_en),
      .ccs_ccore_srst(rst),
      .ccs_ccore_start_rsc_dat(sampleTest_run_cmp_ccs_ccore_start_rsc_dat)
    );
  JitterSample  jitterSample_run_cmp (
      .sample_x_rsc_dat(jitterSample_run_cmp_sample_x_rsc_dat),
      .sample_y_rsc_dat(jitterSample_run_cmp_sample_y_rsc_dat),
      .sample_R_rsc_dat(sampleTest_run_cmp_triangle_R_rsc_dat_iff),
      .sample_G_rsc_dat(sampleTest_run_cmp_triangle_G_rsc_dat_iff),
      .sample_B_rsc_dat(sampleTest_run_cmp_triangle_B_rsc_dat_iff),
      .config_subsample_rsc_dat(jitterSample_run_cmp_config_subsample_rsc_dat),
      .return_x_rsc_z(jitterSample_run_cmp_return_x_rsc_z),
      .return_y_rsc_z(jitterSample_run_cmp_return_y_rsc_z),
      .ccs_ccore_clk(clk),
      .ccs_ccore_en(jitterSample_run_cmp_ccs_ccore_en),
      .ccs_ccore_srst(rst),
      .ccs_ccore_start_rsc_dat(jitterSample_run_cmp_ccs_ccore_start_rsc_dat)
    );
  TestIterator_run TestIterator_run_inst (
      .clk(clk),
      .rst(rst),
      .bbox_in_rsc_dat(bbox_in_rsc_dat),
      .bbox_in_rsc_vld(bbox_in_rsc_vld),
      .bbox_in_rsc_rdy(bbox_in_rsc_rdy),
      .triangle_in_rsc_dat(triangle_in_rsc_dat),
      .triangle_in_rsc_vld(triangle_in_rsc_vld),
      .triangle_in_rsc_rdy(triangle_in_rsc_rdy),
      .config_in_rsc_dat(config_in_rsc_dat),
      .config_in_rsc_vld(config_in_rsc_vld),
      .config_in_rsc_rdy(config_in_rsc_rdy),
      .sample_out_rsc_dat(sample_out_rsc_dat),
      .sample_out_rsc_vld(sample_out_rsc_vld),
      .sample_out_rsc_rdy(sample_out_rsc_rdy),
      .sampleTest_run_cmp_triangle_v_x_rsc_dat(sampleTest_run_cmp_triangle_v_x_rsc_dat),
      .sampleTest_run_cmp_triangle_v_y_rsc_dat(sampleTest_run_cmp_triangle_v_y_rsc_dat),
      .sampleTest_run_cmp_triangle_v_z_rsc_dat(sampleTest_run_cmp_triangle_v_z_rsc_dat),
      .sampleTest_run_cmp_sample_x_rsc_dat(sampleTest_run_cmp_sample_x_rsc_dat),
      .sampleTest_run_cmp_sample_y_rsc_dat(sampleTest_run_cmp_sample_y_rsc_dat),
      .sampleTest_run_cmp_return_rsc_z(sampleTest_run_cmp_return_rsc_z),
      .sampleTest_run_cmp_ccs_ccore_en(sampleTest_run_cmp_ccs_ccore_en),
      .sampleTest_run_cmp_ccs_ccore_start_rsc_dat(sampleTest_run_cmp_ccs_ccore_start_rsc_dat),
      .jitterSample_run_cmp_sample_x_rsc_dat(jitterSample_run_cmp_sample_x_rsc_dat),
      .jitterSample_run_cmp_sample_y_rsc_dat(jitterSample_run_cmp_sample_y_rsc_dat),
      .jitterSample_run_cmp_config_subsample_rsc_dat(jitterSample_run_cmp_config_subsample_rsc_dat),
      .jitterSample_run_cmp_return_x_rsc_z(jitterSample_run_cmp_return_x_rsc_z),
      .jitterSample_run_cmp_return_y_rsc_z(jitterSample_run_cmp_return_y_rsc_z),
      .jitterSample_run_cmp_ccs_ccore_en(jitterSample_run_cmp_ccs_ccore_en),
      .jitterSample_run_cmp_ccs_ccore_start_rsc_dat(jitterSample_run_cmp_ccs_ccore_start_rsc_dat),
      .sampleTest_run_cmp_triangle_R_rsc_dat_pff(sampleTest_run_cmp_triangle_R_rsc_dat_iff),
      .sampleTest_run_cmp_triangle_G_rsc_dat_pff(sampleTest_run_cmp_triangle_G_rsc_dat_iff),
      .sampleTest_run_cmp_triangle_B_rsc_dat_pff(sampleTest_run_cmp_triangle_B_rsc_dat_iff)
    );
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Rasterizer_struct
// ------------------------------------------------------------------


module Rasterizer_struct (
  clk, rst, triangle_in_rsc_dat_B, triangle_in_rsc_dat_G, triangle_in_rsc_dat_R,
      triangle_in_rsc_dat_z, triangle_in_rsc_dat_y, triangle_in_rsc_dat_x, triangle_in_rsc_vld,
      triangle_in_rsc_rdy, screen_in_rsc_dat_height, screen_in_rsc_dat_width, screen_in_rsc_vld,
      screen_in_rsc_rdy, config_in_rsc_dat_subsample, config_in_rsc_vld, config_in_rsc_rdy,
      sample_out_rsc_dat_B, sample_out_rsc_dat_G, sample_out_rsc_dat_R, sample_out_rsc_dat_y,
      sample_out_rsc_dat_x, sample_out_rsc_vld, sample_out_rsc_rdy
);
  input clk;
  input rst;
  input [23:0] triangle_in_rsc_dat_B;
  input [23:0] triangle_in_rsc_dat_G;
  input [23:0] triangle_in_rsc_dat_R;
  input [71:0] triangle_in_rsc_dat_z;
  input [71:0] triangle_in_rsc_dat_y;
  input [71:0] triangle_in_rsc_dat_x;
  input triangle_in_rsc_vld;
  output triangle_in_rsc_rdy;
  input [23:0] screen_in_rsc_dat_height;
  input [23:0] screen_in_rsc_dat_width;
  input screen_in_rsc_vld;
  output screen_in_rsc_rdy;
  input [3:0] config_in_rsc_dat_subsample;
  input config_in_rsc_vld;
  output config_in_rsc_rdy;
  output [23:0] sample_out_rsc_dat_B;
  output [23:0] sample_out_rsc_dat_G;
  output [23:0] sample_out_rsc_dat_R;
  output [23:0] sample_out_rsc_dat_y;
  output [23:0] sample_out_rsc_dat_x;
  output sample_out_rsc_vld;
  input sample_out_rsc_rdy;


  // Interconnect Declarations
  wire [95:0] bbox_out_rsc_dat_nboundingBox;
  wire [287:0] triangle_out_rsc_dat_nboundingBox;
  wire triangle_out_rsc_rdy_nboundingBox;
  wire [3:0] config_out_rsc_dat_nboundingBox;
  wire [287:0] triangle_in_rsc_dat_ntestIterator;
  wire triangle_in_rsc_vld_ntestIterator;
  wire [119:0] sample_out_rsc_dat_ntestIterator;
  wire triangle_in_rsc_rdy_nboundingBox_bud;
  wire screen_in_rsc_rdy_nboundingBox_bud;
  wire config_in_rsc_rdy_nboundingBox_bud;
  wire bbox_out_rsc_vld_nboundingBox_bud;
  wire bbox_in_rsc_rdy_ntestIterator_bud;
  wire triangle_out_rsc_vld_nboundingBox_bud;
  wire triangle_in_rsc_rdy_ntestIterator_bud;
  wire config_out_rsc_vld_nboundingBox_bud;
  wire config_in_rsc_rdy_ntestIterator_bud;
  wire sample_out_rsc_vld_ntestIterator_bud;
  wire triangle_bbox2testit_unc_2;
  wire triangle_bbox2testit_idle;


  // Interconnect Declarations for Component Instantiations 
  wire [287:0] nl_boundingBox_triangle_in_rsc_dat;
  assign nl_boundingBox_triangle_in_rsc_dat = {triangle_in_rsc_dat_B , triangle_in_rsc_dat_G
      , triangle_in_rsc_dat_R , triangle_in_rsc_dat_z , triangle_in_rsc_dat_y , triangle_in_rsc_dat_x};
  wire [47:0] nl_boundingBox_screen_in_rsc_dat;
  assign nl_boundingBox_screen_in_rsc_dat = {screen_in_rsc_dat_height , screen_in_rsc_dat_width};
  ccs_pipe_v5 #(.rscid(32'sd45),
  .width(32'sd288),
  .sz_width(32'sd1),
  .fifo_sz(32'sd1),
  .log2_sz(32'sd0),
  .ph_clk(32'sd1),
  .ph_en(32'sd0),
  .ph_arst(32'sd0),
  .ph_srst(32'sd1)) triangle_bbox2testit_cns_pipe (
      .clk(clk),
      .en(1'b0),
      .arst(1'b1),
      .srst(rst),
      .din_rdy(triangle_out_rsc_rdy_nboundingBox),
      .din_vld(triangle_out_rsc_vld_nboundingBox_bud),
      .din(triangle_out_rsc_dat_nboundingBox),
      .dout_rdy(triangle_in_rsc_rdy_ntestIterator_bud),
      .dout_vld(triangle_in_rsc_vld_ntestIterator),
      .dout(triangle_in_rsc_dat_ntestIterator),
      .sz(triangle_bbox2testit_unc_2),
      .sz_req(1'b0),
      .is_idle(triangle_bbox2testit_idle)
    );
  BoundingBoxGenerator boundingBox (
      .clk(clk),
      .rst(rst),
      .triangle_in_rsc_dat(nl_boundingBox_triangle_in_rsc_dat[287:0]),
      .triangle_in_rsc_vld(triangle_in_rsc_vld),
      .triangle_in_rsc_rdy(triangle_in_rsc_rdy_nboundingBox_bud),
      .screen_in_rsc_dat(nl_boundingBox_screen_in_rsc_dat[47:0]),
      .screen_in_rsc_vld(screen_in_rsc_vld),
      .screen_in_rsc_rdy(screen_in_rsc_rdy_nboundingBox_bud),
      .config_in_rsc_dat(config_in_rsc_dat_subsample),
      .config_in_rsc_vld(config_in_rsc_vld),
      .config_in_rsc_rdy(config_in_rsc_rdy_nboundingBox_bud),
      .bbox_out_rsc_dat(bbox_out_rsc_dat_nboundingBox),
      .bbox_out_rsc_vld(bbox_out_rsc_vld_nboundingBox_bud),
      .bbox_out_rsc_rdy(bbox_in_rsc_rdy_ntestIterator_bud),
      .triangle_out_rsc_dat(triangle_out_rsc_dat_nboundingBox),
      .triangle_out_rsc_vld(triangle_out_rsc_vld_nboundingBox_bud),
      .triangle_out_rsc_rdy(triangle_out_rsc_rdy_nboundingBox),
      .config_out_rsc_dat(config_out_rsc_dat_nboundingBox),
      .config_out_rsc_vld(config_out_rsc_vld_nboundingBox_bud),
      .config_out_rsc_rdy(config_in_rsc_rdy_ntestIterator_bud)
    );
  TestIterator testIterator_1 (
      .clk(clk),
      .rst(rst),
      .bbox_in_rsc_dat(bbox_out_rsc_dat_nboundingBox),
      .bbox_in_rsc_vld(bbox_out_rsc_vld_nboundingBox_bud),
      .bbox_in_rsc_rdy(bbox_in_rsc_rdy_ntestIterator_bud),
      .triangle_in_rsc_dat(triangle_in_rsc_dat_ntestIterator),
      .triangle_in_rsc_vld(triangle_in_rsc_vld_ntestIterator),
      .triangle_in_rsc_rdy(triangle_in_rsc_rdy_ntestIterator_bud),
      .config_in_rsc_dat(config_out_rsc_dat_nboundingBox),
      .config_in_rsc_vld(config_out_rsc_vld_nboundingBox_bud),
      .config_in_rsc_rdy(config_in_rsc_rdy_ntestIterator_bud),
      .sample_out_rsc_dat(sample_out_rsc_dat_ntestIterator),
      .sample_out_rsc_vld(sample_out_rsc_vld_ntestIterator_bud),
      .sample_out_rsc_rdy(sample_out_rsc_rdy)
    );
  assign sample_out_rsc_dat_x = sample_out_rsc_dat_ntestIterator[23:0];
  assign sample_out_rsc_dat_y = sample_out_rsc_dat_ntestIterator[47:24];
  assign sample_out_rsc_dat_R = sample_out_rsc_dat_ntestIterator[71:48];
  assign sample_out_rsc_dat_G = sample_out_rsc_dat_ntestIterator[95:72];
  assign sample_out_rsc_dat_B = sample_out_rsc_dat_ntestIterator[119:96];
  assign triangle_in_rsc_rdy = triangle_in_rsc_rdy_nboundingBox_bud;
  assign screen_in_rsc_rdy = screen_in_rsc_rdy_nboundingBox_bud;
  assign config_in_rsc_rdy = config_in_rsc_rdy_nboundingBox_bud;
  assign sample_out_rsc_vld = sample_out_rsc_vld_ntestIterator_bud;
endmodule

// ------------------------------------------------------------------
//  Design Unit:    Rasterizer
// ------------------------------------------------------------------


module Rasterizer (
  clk, rst, triangle_in_rsc_dat, triangle_in_rsc_vld, triangle_in_rsc_rdy, screen_in_rsc_dat,
      screen_in_rsc_vld, screen_in_rsc_rdy, config_in_rsc_dat, config_in_rsc_vld,
      config_in_rsc_rdy, sample_out_rsc_dat, sample_out_rsc_vld, sample_out_rsc_rdy
);
  input clk;
  input rst;
  input [287:0] triangle_in_rsc_dat;
  input triangle_in_rsc_vld;
  output triangle_in_rsc_rdy;
  input [47:0] screen_in_rsc_dat;
  input screen_in_rsc_vld;
  output screen_in_rsc_rdy;
  input [3:0] config_in_rsc_dat;
  input config_in_rsc_vld;
  output config_in_rsc_rdy;
  output [119:0] sample_out_rsc_dat;
  output sample_out_rsc_vld;
  input sample_out_rsc_rdy;


  // Interconnect Declarations
  wire [23:0] sample_out_rsc_dat_B;
  wire [23:0] sample_out_rsc_dat_G;
  wire [23:0] sample_out_rsc_dat_R;
  wire [23:0] sample_out_rsc_dat_y;
  wire [23:0] sample_out_rsc_dat_x;


  // Interconnect Declarations for Component Instantiations 
  wire [23:0] nl_Rasterizer_struct_inst_triangle_in_rsc_dat_B;
  assign nl_Rasterizer_struct_inst_triangle_in_rsc_dat_B = triangle_in_rsc_dat[287:264];
  wire [23:0] nl_Rasterizer_struct_inst_triangle_in_rsc_dat_G;
  assign nl_Rasterizer_struct_inst_triangle_in_rsc_dat_G = triangle_in_rsc_dat[263:240];
  wire [23:0] nl_Rasterizer_struct_inst_triangle_in_rsc_dat_R;
  assign nl_Rasterizer_struct_inst_triangle_in_rsc_dat_R = triangle_in_rsc_dat[239:216];
  wire [71:0] nl_Rasterizer_struct_inst_triangle_in_rsc_dat_z;
  assign nl_Rasterizer_struct_inst_triangle_in_rsc_dat_z = triangle_in_rsc_dat[215:144];
  wire [71:0] nl_Rasterizer_struct_inst_triangle_in_rsc_dat_y;
  assign nl_Rasterizer_struct_inst_triangle_in_rsc_dat_y = triangle_in_rsc_dat[143:72];
  wire [71:0] nl_Rasterizer_struct_inst_triangle_in_rsc_dat_x;
  assign nl_Rasterizer_struct_inst_triangle_in_rsc_dat_x = triangle_in_rsc_dat[71:0];
  wire [23:0] nl_Rasterizer_struct_inst_screen_in_rsc_dat_height;
  assign nl_Rasterizer_struct_inst_screen_in_rsc_dat_height = screen_in_rsc_dat[47:24];
  wire [23:0] nl_Rasterizer_struct_inst_screen_in_rsc_dat_width;
  assign nl_Rasterizer_struct_inst_screen_in_rsc_dat_width = screen_in_rsc_dat[23:0];
  Rasterizer_struct Rasterizer_struct_inst (
      .clk(clk),
      .rst(rst),
      .triangle_in_rsc_dat_B(nl_Rasterizer_struct_inst_triangle_in_rsc_dat_B[23:0]),
      .triangle_in_rsc_dat_G(nl_Rasterizer_struct_inst_triangle_in_rsc_dat_G[23:0]),
      .triangle_in_rsc_dat_R(nl_Rasterizer_struct_inst_triangle_in_rsc_dat_R[23:0]),
      .triangle_in_rsc_dat_z(nl_Rasterizer_struct_inst_triangle_in_rsc_dat_z[71:0]),
      .triangle_in_rsc_dat_y(nl_Rasterizer_struct_inst_triangle_in_rsc_dat_y[71:0]),
      .triangle_in_rsc_dat_x(nl_Rasterizer_struct_inst_triangle_in_rsc_dat_x[71:0]),
      .triangle_in_rsc_vld(triangle_in_rsc_vld),
      .triangle_in_rsc_rdy(triangle_in_rsc_rdy),
      .screen_in_rsc_dat_height(nl_Rasterizer_struct_inst_screen_in_rsc_dat_height[23:0]),
      .screen_in_rsc_dat_width(nl_Rasterizer_struct_inst_screen_in_rsc_dat_width[23:0]),
      .screen_in_rsc_vld(screen_in_rsc_vld),
      .screen_in_rsc_rdy(screen_in_rsc_rdy),
      .config_in_rsc_dat_subsample(config_in_rsc_dat),
      .config_in_rsc_vld(config_in_rsc_vld),
      .config_in_rsc_rdy(config_in_rsc_rdy),
      .sample_out_rsc_dat_B(sample_out_rsc_dat_B),
      .sample_out_rsc_dat_G(sample_out_rsc_dat_G),
      .sample_out_rsc_dat_R(sample_out_rsc_dat_R),
      .sample_out_rsc_dat_y(sample_out_rsc_dat_y),
      .sample_out_rsc_dat_x(sample_out_rsc_dat_x),
      .sample_out_rsc_vld(sample_out_rsc_vld),
      .sample_out_rsc_rdy(sample_out_rsc_rdy)
    );
  assign sample_out_rsc_dat = {sample_out_rsc_dat_B , sample_out_rsc_dat_G , sample_out_rsc_dat_R
      , sample_out_rsc_dat_y , sample_out_rsc_dat_x};
endmodule



