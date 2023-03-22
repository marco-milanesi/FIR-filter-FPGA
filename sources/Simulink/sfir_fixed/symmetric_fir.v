// -------------------------------------------------------------
// 
// File Name: C:\Users\Marco Milanesi\OneDrive\Documenti\Laboratori Merced\Symmetric_FIR_filter\sfir_fixed\symmetric_fir.v
// Created: 2023-03-22 10:05:43
// 
// Generated by MATLAB 9.11 and HDL Coder 3.19
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 1
// Target subsystem base rate: 1
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        1
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// y_out                         ce_out        1
// delayed_xout                  ce_out        1
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: symmetric_fir
// Source Path: sfir_fixed/symmetric_fir
// Hierarchy Level: 0
// 
// Simulink model description for sfir_fixed:
// 
// Symmetric FIR Filter
// This example shows how to use HDL Coder(TM) to check, generate,
// and verify HDL for a fixed-point symmetric FIR filter. 
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module symmetric_fir
          (clk,
           reset_x,
           clk_enable,
           x_in,
           h_in1,
           h_in2,
           h_in3,
           h_in4,
           ce_out,
           y_out,
           delayed_xout);


  input   clk;
  input   reset_x;
  input   clk_enable;
  input   signed [15:0] x_in;  // sfix16_En10
  input   signed [15:0] h_in1;  // sfix16_En10
  input   signed [15:0] h_in2;  // sfix16_En10
  input   signed [15:0] h_in3;  // sfix16_En10
  input   signed [15:0] h_in4;  // sfix16_En10
  output  ce_out;
  output  signed [34:0] y_out;  // sfix35_En20
  output  signed [15:0] delayed_xout;  // sfix16_En10


  wire enb;
  reg signed [15:0] ud1_out1;  // sfix16_En10
  reg signed [15:0] ud2_out1;  // sfix16_En10
  reg signed [15:0] ud3_out1;  // sfix16_En10
  reg signed [15:0] ud4_out1;  // sfix16_En10
  reg signed [15:0] ud5_out1;  // sfix16_En10
  reg signed [15:0] ud6_out1;  // sfix16_En10
  reg signed [15:0] ud7_out1;  // sfix16_En10
  reg signed [15:0] ud8_out1;  // sfix16_En10
  wire signed [16:0] a1_add_cast;  // sfix17_En10
  wire signed [16:0] a1_add_cast_1;  // sfix17_En10
  wire signed [16:0] a1_out1;  // sfix17_En10
  wire signed [32:0] m1_out1;  // sfix33_En20
  wire signed [16:0] a2_add_cast;  // sfix17_En10
  wire signed [16:0] a2_add_cast_1;  // sfix17_En10
  wire signed [16:0] a2_out1;  // sfix17_En10
  wire signed [16:0] a3_add_cast;  // sfix17_En10
  wire signed [16:0] a3_add_cast_1;  // sfix17_En10
  wire signed [16:0] a3_out1;  // sfix17_En10
  wire signed [32:0] m3_out1;  // sfix33_En20
  wire signed [16:0] a4_add_cast;  // sfix17_En10
  wire signed [16:0] a4_add_cast_1;  // sfix17_En10
  wire signed [16:0] a4_out1;  // sfix17_En10
  wire signed [32:0] m2_out1;  // sfix33_En20
  wire signed [33:0] a5_add_cast;  // sfix34_En20
  wire signed [33:0] a5_add_cast_1;  // sfix34_En20
  wire signed [33:0] a5_out1;  // sfix34_En20
  wire signed [32:0] m4_out1;  // sfix33_En20
  wire signed [33:0] a6_add_cast;  // sfix34_En20
  wire signed [33:0] a6_add_cast_1;  // sfix34_En20
  wire signed [33:0] a6_out1;  // sfix34_En20
  wire signed [34:0] y_out_pre_add_cast;  // sfix35_En20
  wire signed [34:0] y_out_pre_add_cast_1;  // sfix35_En20
  wire signed [34:0] y_out_pre_out1;  // sfix35_En20


  assign enb = clk_enable;

  always @(posedge clk or posedge reset_x)
    begin : ud1_process
      if (reset_x == 1'b1) begin
        ud1_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          ud1_out1 <= x_in;
        end
      end
    end


  always @(posedge clk or posedge reset_x)
    begin : ud2_process
      if (reset_x == 1'b1) begin
        ud2_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          ud2_out1 <= ud1_out1;
        end
      end
    end


  always @(posedge clk or posedge reset_x)
    begin : ud3_process
      if (reset_x == 1'b1) begin
        ud3_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          ud3_out1 <= ud2_out1;
        end
      end
    end


  always @(posedge clk or posedge reset_x)
    begin : ud4_process
      if (reset_x == 1'b1) begin
        ud4_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          ud4_out1 <= ud3_out1;
        end
      end
    end


  always @(posedge clk or posedge reset_x)
    begin : ud5_process
      if (reset_x == 1'b1) begin
        ud5_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          ud5_out1 <= ud4_out1;
        end
      end
    end


  always @(posedge clk or posedge reset_x)
    begin : ud6_process
      if (reset_x == 1'b1) begin
        ud6_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          ud6_out1 <= ud5_out1;
        end
      end
    end


  always @(posedge clk or posedge reset_x)
    begin : ud7_process
      if (reset_x == 1'b1) begin
        ud7_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          ud7_out1 <= ud6_out1;
        end
      end
    end


  always @(posedge clk or posedge reset_x)
    begin : ud8_process
      if (reset_x == 1'b1) begin
        ud8_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          ud8_out1 <= ud7_out1;
        end
      end
    end


  assign a1_add_cast = {ud8_out1[15], ud8_out1};
  assign a1_add_cast_1 = {ud1_out1[15], ud1_out1};
  assign a1_out1 = a1_add_cast + a1_add_cast_1;


  assign m1_out1 = a1_out1 * h_in1;


  assign a2_add_cast = {ud7_out1[15], ud7_out1};
  assign a2_add_cast_1 = {ud2_out1[15], ud2_out1};
  assign a2_out1 = a2_add_cast + a2_add_cast_1;


  assign a3_add_cast = {ud6_out1[15], ud6_out1};
  assign a3_add_cast_1 = {ud3_out1[15], ud3_out1};
  assign a3_out1 = a3_add_cast + a3_add_cast_1;


  assign m3_out1 = a3_out1 * h_in3;


  assign a4_add_cast = {ud5_out1[15], ud5_out1};
  assign a4_add_cast_1 = {ud4_out1[15], ud4_out1};
  assign a4_out1 = a4_add_cast + a4_add_cast_1;


  assign m2_out1 = a2_out1 * h_in2;


  assign a5_add_cast = {m1_out1[32], m1_out1};
  assign a5_add_cast_1 = {m2_out1[32], m2_out1};
  assign a5_out1 = a5_add_cast + a5_add_cast_1;


  assign m4_out1 = a4_out1 * h_in4;


  assign a6_add_cast = {m3_out1[32], m3_out1};
  assign a6_add_cast_1 = {m4_out1[32], m4_out1};
  assign a6_out1 = a6_add_cast + a6_add_cast_1;


  assign y_out_pre_add_cast = {a5_out1[33], a5_out1};
  assign y_out_pre_add_cast_1 = {a6_out1[33], a6_out1};
  assign y_out_pre_out1 = y_out_pre_add_cast + y_out_pre_add_cast_1;


  assign y_out = y_out_pre_out1;

  assign delayed_xout = ud8_out1;

  assign ce_out = clk_enable;

endmodule  // symmetric_fir

