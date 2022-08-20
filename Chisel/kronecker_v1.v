module ComplexMul(
  input  [63:0] io_op1_re,
  input  [63:0] io_op1_im,
  input  [63:0] io_op2_re,
  input  [63:0] io_op2_im,
  output [63:0] io_res_re,
  output [63:0] io_res_im
);
  wire [63:0] _k1_T_2 = $signed(io_op1_re) + $signed(io_op1_im); // @[Complex_Operater.scala 38:35]
  wire [127:0] k1 = $signed(io_op2_re) * $signed(_k1_T_2); // @[Complex_Operater.scala 38:22]
  wire [63:0] _k2_T_2 = $signed(io_op2_im) - $signed(io_op2_re); // @[Complex_Operater.scala 39:35]
  wire [127:0] k2 = $signed(io_op1_re) * $signed(_k2_T_2); // @[Complex_Operater.scala 39:22]
  wire [63:0] _k3_T_2 = $signed(io_op2_re) + $signed(io_op2_im); // @[Complex_Operater.scala 40:35]
  wire [127:0] k3 = $signed(io_op1_im) * $signed(_k3_T_2); // @[Complex_Operater.scala 40:22]
  wire [127:0] _io_res_re_T_2 = $signed(k1) - $signed(k3); // @[Complex_Operater.scala 41:19]
  wire [127:0] _io_res_im_T_2 = $signed(k1) + $signed(k2); // @[Complex_Operater.scala 42:19]
  wire [107:0] _GEN_0 = _io_res_re_T_2[127:20]; // @[Complex_Operater.scala 41:13]
  wire [107:0] _GEN_2 = _io_res_im_T_2[127:20]; // @[Complex_Operater.scala 42:13]
  assign io_res_re = _GEN_0[63:0]; // @[Complex_Operater.scala 41:13]
  assign io_res_im = _GEN_2[63:0]; // @[Complex_Operater.scala 42:13]
endmodule
module matrix_vlaue_mul(
  input  [63:0] io_matrixIn_0_re,
  input  [63:0] io_matrixIn_0_im,
  input  [63:0] io_matrixIn_1_re,
  input  [63:0] io_matrixIn_1_im,
  input  [63:0] io_matrixIn_2_re,
  input  [63:0] io_matrixIn_2_im,
  input  [63:0] io_matrixIn_3_re,
  input  [63:0] io_matrixIn_3_im,
  input  [63:0] io_matrixIn_4_re,
  input  [63:0] io_matrixIn_4_im,
  input  [63:0] io_matrixIn_5_re,
  input  [63:0] io_matrixIn_5_im,
  input  [63:0] io_matrixIn_6_re,
  input  [63:0] io_matrixIn_6_im,
  input  [63:0] io_matrixIn_7_re,
  input  [63:0] io_matrixIn_7_im,
  input  [63:0] io_matrixIn_8_re,
  input  [63:0] io_matrixIn_8_im,
  input  [63:0] io_matrixIn_9_re,
  input  [63:0] io_matrixIn_9_im,
  input  [63:0] io_matrixIn_10_re,
  input  [63:0] io_matrixIn_10_im,
  input  [63:0] io_matrixIn_11_re,
  input  [63:0] io_matrixIn_11_im,
  input  [63:0] io_matrixIn_12_re,
  input  [63:0] io_matrixIn_12_im,
  input  [63:0] io_matrixIn_13_re,
  input  [63:0] io_matrixIn_13_im,
  input  [63:0] io_matrixIn_14_re,
  input  [63:0] io_matrixIn_14_im,
  input  [63:0] io_matrixIn_15_re,
  input  [63:0] io_matrixIn_15_im,
  input  [63:0] io_matrixIn_16_re,
  input  [63:0] io_matrixIn_16_im,
  input  [63:0] io_matrixIn_17_re,
  input  [63:0] io_matrixIn_17_im,
  input  [63:0] io_matrixIn_18_re,
  input  [63:0] io_matrixIn_18_im,
  input  [63:0] io_matrixIn_19_re,
  input  [63:0] io_matrixIn_19_im,
  input  [63:0] io_matrixIn_20_re,
  input  [63:0] io_matrixIn_20_im,
  input  [63:0] io_matrixIn_21_re,
  input  [63:0] io_matrixIn_21_im,
  input  [63:0] io_matrixIn_22_re,
  input  [63:0] io_matrixIn_22_im,
  input  [63:0] io_matrixIn_23_re,
  input  [63:0] io_matrixIn_23_im,
  input  [63:0] io_matrixIn_24_re,
  input  [63:0] io_matrixIn_24_im,
  input  [63:0] io_valueIn_re,
  input  [63:0] io_valueIn_im,
  output [63:0] io_matrixOut_0_re,
  output [63:0] io_matrixOut_0_im,
  output [63:0] io_matrixOut_1_re,
  output [63:0] io_matrixOut_1_im,
  output [63:0] io_matrixOut_2_re,
  output [63:0] io_matrixOut_2_im,
  output [63:0] io_matrixOut_3_re,
  output [63:0] io_matrixOut_3_im,
  output [63:0] io_matrixOut_4_re,
  output [63:0] io_matrixOut_4_im,
  output [63:0] io_matrixOut_5_re,
  output [63:0] io_matrixOut_5_im,
  output [63:0] io_matrixOut_6_re,
  output [63:0] io_matrixOut_6_im,
  output [63:0] io_matrixOut_7_re,
  output [63:0] io_matrixOut_7_im,
  output [63:0] io_matrixOut_8_re,
  output [63:0] io_matrixOut_8_im,
  output [63:0] io_matrixOut_9_re,
  output [63:0] io_matrixOut_9_im,
  output [63:0] io_matrixOut_10_re,
  output [63:0] io_matrixOut_10_im,
  output [63:0] io_matrixOut_11_re,
  output [63:0] io_matrixOut_11_im,
  output [63:0] io_matrixOut_12_re,
  output [63:0] io_matrixOut_12_im,
  output [63:0] io_matrixOut_13_re,
  output [63:0] io_matrixOut_13_im,
  output [63:0] io_matrixOut_14_re,
  output [63:0] io_matrixOut_14_im,
  output [63:0] io_matrixOut_15_re,
  output [63:0] io_matrixOut_15_im,
  output [63:0] io_matrixOut_16_re,
  output [63:0] io_matrixOut_16_im,
  output [63:0] io_matrixOut_17_re,
  output [63:0] io_matrixOut_17_im,
  output [63:0] io_matrixOut_18_re,
  output [63:0] io_matrixOut_18_im,
  output [63:0] io_matrixOut_19_re,
  output [63:0] io_matrixOut_19_im,
  output [63:0] io_matrixOut_20_re,
  output [63:0] io_matrixOut_20_im,
  output [63:0] io_matrixOut_21_re,
  output [63:0] io_matrixOut_21_im,
  output [63:0] io_matrixOut_22_re,
  output [63:0] io_matrixOut_22_im,
  output [63:0] io_matrixOut_23_re,
  output [63:0] io_matrixOut_23_im,
  output [63:0] io_matrixOut_24_re,
  output [63:0] io_matrixOut_24_im
);
  wire [63:0] io_matrixOut_0_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_0_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_0_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_0_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_0_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_0_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_1_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_1_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_1_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_1_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_1_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_1_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_2_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_2_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_2_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_2_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_2_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_2_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_3_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_3_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_3_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_3_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_3_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_3_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_4_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_4_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_4_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_4_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_4_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_4_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_5_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_5_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_5_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_5_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_5_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_5_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_6_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_6_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_6_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_6_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_6_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_6_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_7_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_7_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_7_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_7_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_7_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_7_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_8_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_8_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_8_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_8_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_8_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_8_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_9_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_9_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_9_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_9_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_9_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_9_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_10_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_10_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_10_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_10_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_10_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_10_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_11_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_11_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_11_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_11_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_11_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_11_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_12_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_12_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_12_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_12_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_12_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_12_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_13_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_13_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_13_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_13_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_13_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_13_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_14_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_14_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_14_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_14_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_14_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_14_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_15_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_15_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_15_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_15_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_15_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_15_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_16_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_16_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_16_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_16_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_16_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_16_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_17_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_17_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_17_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_17_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_17_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_17_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_18_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_18_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_18_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_18_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_18_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_18_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_19_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_19_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_19_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_19_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_19_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_19_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_20_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_20_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_20_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_20_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_20_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_20_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_21_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_21_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_21_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_21_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_21_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_21_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_22_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_22_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_22_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_22_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_22_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_22_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_23_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_23_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_23_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_23_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_23_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_23_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_24_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_24_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_24_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_24_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_24_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] io_matrixOut_24_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  ComplexMul io_matrixOut_0_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_0_mul_io_op1_re),
    .io_op1_im(io_matrixOut_0_mul_io_op1_im),
    .io_op2_re(io_matrixOut_0_mul_io_op2_re),
    .io_op2_im(io_matrixOut_0_mul_io_op2_im),
    .io_res_re(io_matrixOut_0_mul_io_res_re),
    .io_res_im(io_matrixOut_0_mul_io_res_im)
  );
  ComplexMul io_matrixOut_1_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_1_mul_io_op1_re),
    .io_op1_im(io_matrixOut_1_mul_io_op1_im),
    .io_op2_re(io_matrixOut_1_mul_io_op2_re),
    .io_op2_im(io_matrixOut_1_mul_io_op2_im),
    .io_res_re(io_matrixOut_1_mul_io_res_re),
    .io_res_im(io_matrixOut_1_mul_io_res_im)
  );
  ComplexMul io_matrixOut_2_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_2_mul_io_op1_re),
    .io_op1_im(io_matrixOut_2_mul_io_op1_im),
    .io_op2_re(io_matrixOut_2_mul_io_op2_re),
    .io_op2_im(io_matrixOut_2_mul_io_op2_im),
    .io_res_re(io_matrixOut_2_mul_io_res_re),
    .io_res_im(io_matrixOut_2_mul_io_res_im)
  );
  ComplexMul io_matrixOut_3_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_3_mul_io_op1_re),
    .io_op1_im(io_matrixOut_3_mul_io_op1_im),
    .io_op2_re(io_matrixOut_3_mul_io_op2_re),
    .io_op2_im(io_matrixOut_3_mul_io_op2_im),
    .io_res_re(io_matrixOut_3_mul_io_res_re),
    .io_res_im(io_matrixOut_3_mul_io_res_im)
  );
  ComplexMul io_matrixOut_4_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_4_mul_io_op1_re),
    .io_op1_im(io_matrixOut_4_mul_io_op1_im),
    .io_op2_re(io_matrixOut_4_mul_io_op2_re),
    .io_op2_im(io_matrixOut_4_mul_io_op2_im),
    .io_res_re(io_matrixOut_4_mul_io_res_re),
    .io_res_im(io_matrixOut_4_mul_io_res_im)
  );
  ComplexMul io_matrixOut_5_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_5_mul_io_op1_re),
    .io_op1_im(io_matrixOut_5_mul_io_op1_im),
    .io_op2_re(io_matrixOut_5_mul_io_op2_re),
    .io_op2_im(io_matrixOut_5_mul_io_op2_im),
    .io_res_re(io_matrixOut_5_mul_io_res_re),
    .io_res_im(io_matrixOut_5_mul_io_res_im)
  );
  ComplexMul io_matrixOut_6_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_6_mul_io_op1_re),
    .io_op1_im(io_matrixOut_6_mul_io_op1_im),
    .io_op2_re(io_matrixOut_6_mul_io_op2_re),
    .io_op2_im(io_matrixOut_6_mul_io_op2_im),
    .io_res_re(io_matrixOut_6_mul_io_res_re),
    .io_res_im(io_matrixOut_6_mul_io_res_im)
  );
  ComplexMul io_matrixOut_7_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_7_mul_io_op1_re),
    .io_op1_im(io_matrixOut_7_mul_io_op1_im),
    .io_op2_re(io_matrixOut_7_mul_io_op2_re),
    .io_op2_im(io_matrixOut_7_mul_io_op2_im),
    .io_res_re(io_matrixOut_7_mul_io_res_re),
    .io_res_im(io_matrixOut_7_mul_io_res_im)
  );
  ComplexMul io_matrixOut_8_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_8_mul_io_op1_re),
    .io_op1_im(io_matrixOut_8_mul_io_op1_im),
    .io_op2_re(io_matrixOut_8_mul_io_op2_re),
    .io_op2_im(io_matrixOut_8_mul_io_op2_im),
    .io_res_re(io_matrixOut_8_mul_io_res_re),
    .io_res_im(io_matrixOut_8_mul_io_res_im)
  );
  ComplexMul io_matrixOut_9_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_9_mul_io_op1_re),
    .io_op1_im(io_matrixOut_9_mul_io_op1_im),
    .io_op2_re(io_matrixOut_9_mul_io_op2_re),
    .io_op2_im(io_matrixOut_9_mul_io_op2_im),
    .io_res_re(io_matrixOut_9_mul_io_res_re),
    .io_res_im(io_matrixOut_9_mul_io_res_im)
  );
  ComplexMul io_matrixOut_10_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_10_mul_io_op1_re),
    .io_op1_im(io_matrixOut_10_mul_io_op1_im),
    .io_op2_re(io_matrixOut_10_mul_io_op2_re),
    .io_op2_im(io_matrixOut_10_mul_io_op2_im),
    .io_res_re(io_matrixOut_10_mul_io_res_re),
    .io_res_im(io_matrixOut_10_mul_io_res_im)
  );
  ComplexMul io_matrixOut_11_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_11_mul_io_op1_re),
    .io_op1_im(io_matrixOut_11_mul_io_op1_im),
    .io_op2_re(io_matrixOut_11_mul_io_op2_re),
    .io_op2_im(io_matrixOut_11_mul_io_op2_im),
    .io_res_re(io_matrixOut_11_mul_io_res_re),
    .io_res_im(io_matrixOut_11_mul_io_res_im)
  );
  ComplexMul io_matrixOut_12_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_12_mul_io_op1_re),
    .io_op1_im(io_matrixOut_12_mul_io_op1_im),
    .io_op2_re(io_matrixOut_12_mul_io_op2_re),
    .io_op2_im(io_matrixOut_12_mul_io_op2_im),
    .io_res_re(io_matrixOut_12_mul_io_res_re),
    .io_res_im(io_matrixOut_12_mul_io_res_im)
  );
  ComplexMul io_matrixOut_13_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_13_mul_io_op1_re),
    .io_op1_im(io_matrixOut_13_mul_io_op1_im),
    .io_op2_re(io_matrixOut_13_mul_io_op2_re),
    .io_op2_im(io_matrixOut_13_mul_io_op2_im),
    .io_res_re(io_matrixOut_13_mul_io_res_re),
    .io_res_im(io_matrixOut_13_mul_io_res_im)
  );
  ComplexMul io_matrixOut_14_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_14_mul_io_op1_re),
    .io_op1_im(io_matrixOut_14_mul_io_op1_im),
    .io_op2_re(io_matrixOut_14_mul_io_op2_re),
    .io_op2_im(io_matrixOut_14_mul_io_op2_im),
    .io_res_re(io_matrixOut_14_mul_io_res_re),
    .io_res_im(io_matrixOut_14_mul_io_res_im)
  );
  ComplexMul io_matrixOut_15_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_15_mul_io_op1_re),
    .io_op1_im(io_matrixOut_15_mul_io_op1_im),
    .io_op2_re(io_matrixOut_15_mul_io_op2_re),
    .io_op2_im(io_matrixOut_15_mul_io_op2_im),
    .io_res_re(io_matrixOut_15_mul_io_res_re),
    .io_res_im(io_matrixOut_15_mul_io_res_im)
  );
  ComplexMul io_matrixOut_16_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_16_mul_io_op1_re),
    .io_op1_im(io_matrixOut_16_mul_io_op1_im),
    .io_op2_re(io_matrixOut_16_mul_io_op2_re),
    .io_op2_im(io_matrixOut_16_mul_io_op2_im),
    .io_res_re(io_matrixOut_16_mul_io_res_re),
    .io_res_im(io_matrixOut_16_mul_io_res_im)
  );
  ComplexMul io_matrixOut_17_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_17_mul_io_op1_re),
    .io_op1_im(io_matrixOut_17_mul_io_op1_im),
    .io_op2_re(io_matrixOut_17_mul_io_op2_re),
    .io_op2_im(io_matrixOut_17_mul_io_op2_im),
    .io_res_re(io_matrixOut_17_mul_io_res_re),
    .io_res_im(io_matrixOut_17_mul_io_res_im)
  );
  ComplexMul io_matrixOut_18_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_18_mul_io_op1_re),
    .io_op1_im(io_matrixOut_18_mul_io_op1_im),
    .io_op2_re(io_matrixOut_18_mul_io_op2_re),
    .io_op2_im(io_matrixOut_18_mul_io_op2_im),
    .io_res_re(io_matrixOut_18_mul_io_res_re),
    .io_res_im(io_matrixOut_18_mul_io_res_im)
  );
  ComplexMul io_matrixOut_19_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_19_mul_io_op1_re),
    .io_op1_im(io_matrixOut_19_mul_io_op1_im),
    .io_op2_re(io_matrixOut_19_mul_io_op2_re),
    .io_op2_im(io_matrixOut_19_mul_io_op2_im),
    .io_res_re(io_matrixOut_19_mul_io_res_re),
    .io_res_im(io_matrixOut_19_mul_io_res_im)
  );
  ComplexMul io_matrixOut_20_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_20_mul_io_op1_re),
    .io_op1_im(io_matrixOut_20_mul_io_op1_im),
    .io_op2_re(io_matrixOut_20_mul_io_op2_re),
    .io_op2_im(io_matrixOut_20_mul_io_op2_im),
    .io_res_re(io_matrixOut_20_mul_io_res_re),
    .io_res_im(io_matrixOut_20_mul_io_res_im)
  );
  ComplexMul io_matrixOut_21_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_21_mul_io_op1_re),
    .io_op1_im(io_matrixOut_21_mul_io_op1_im),
    .io_op2_re(io_matrixOut_21_mul_io_op2_re),
    .io_op2_im(io_matrixOut_21_mul_io_op2_im),
    .io_res_re(io_matrixOut_21_mul_io_res_re),
    .io_res_im(io_matrixOut_21_mul_io_res_im)
  );
  ComplexMul io_matrixOut_22_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_22_mul_io_op1_re),
    .io_op1_im(io_matrixOut_22_mul_io_op1_im),
    .io_op2_re(io_matrixOut_22_mul_io_op2_re),
    .io_op2_im(io_matrixOut_22_mul_io_op2_im),
    .io_res_re(io_matrixOut_22_mul_io_res_re),
    .io_res_im(io_matrixOut_22_mul_io_res_im)
  );
  ComplexMul io_matrixOut_23_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_23_mul_io_op1_re),
    .io_op1_im(io_matrixOut_23_mul_io_op1_im),
    .io_op2_re(io_matrixOut_23_mul_io_op2_re),
    .io_op2_im(io_matrixOut_23_mul_io_op2_im),
    .io_res_re(io_matrixOut_23_mul_io_res_re),
    .io_res_im(io_matrixOut_23_mul_io_res_im)
  );
  ComplexMul io_matrixOut_24_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(io_matrixOut_24_mul_io_op1_re),
    .io_op1_im(io_matrixOut_24_mul_io_op1_im),
    .io_op2_re(io_matrixOut_24_mul_io_op2_re),
    .io_op2_im(io_matrixOut_24_mul_io_op2_im),
    .io_res_re(io_matrixOut_24_mul_io_res_re),
    .io_res_im(io_matrixOut_24_mul_io_res_im)
  );
  assign io_matrixOut_0_re = io_matrixOut_0_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_0_im = io_matrixOut_0_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_1_re = io_matrixOut_1_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_1_im = io_matrixOut_1_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_2_re = io_matrixOut_2_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_2_im = io_matrixOut_2_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_3_re = io_matrixOut_3_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_3_im = io_matrixOut_3_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_4_re = io_matrixOut_4_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_4_im = io_matrixOut_4_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_5_re = io_matrixOut_5_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_5_im = io_matrixOut_5_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_6_re = io_matrixOut_6_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_6_im = io_matrixOut_6_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_7_re = io_matrixOut_7_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_7_im = io_matrixOut_7_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_8_re = io_matrixOut_8_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_8_im = io_matrixOut_8_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_9_re = io_matrixOut_9_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_9_im = io_matrixOut_9_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_10_re = io_matrixOut_10_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_10_im = io_matrixOut_10_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_11_re = io_matrixOut_11_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_11_im = io_matrixOut_11_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_12_re = io_matrixOut_12_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_12_im = io_matrixOut_12_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_13_re = io_matrixOut_13_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_13_im = io_matrixOut_13_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_14_re = io_matrixOut_14_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_14_im = io_matrixOut_14_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_15_re = io_matrixOut_15_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_15_im = io_matrixOut_15_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_16_re = io_matrixOut_16_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_16_im = io_matrixOut_16_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_17_re = io_matrixOut_17_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_17_im = io_matrixOut_17_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_18_re = io_matrixOut_18_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_18_im = io_matrixOut_18_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_19_re = io_matrixOut_19_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_19_im = io_matrixOut_19_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_20_re = io_matrixOut_20_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_20_im = io_matrixOut_20_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_21_re = io_matrixOut_21_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_21_im = io_matrixOut_21_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_22_re = io_matrixOut_22_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_22_im = io_matrixOut_22_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_23_re = io_matrixOut_23_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_23_im = io_matrixOut_23_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_24_re = io_matrixOut_24_mul_io_res_re; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_24_im = io_matrixOut_24_mul_io_res_im; // @[Kronecker_V1.scala 24:21]
  assign io_matrixOut_0_mul_io_op1_re = io_matrixIn_0_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_0_mul_io_op1_im = io_matrixIn_0_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_0_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_0_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_1_mul_io_op1_re = io_matrixIn_1_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_1_mul_io_op1_im = io_matrixIn_1_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_1_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_1_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_2_mul_io_op1_re = io_matrixIn_2_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_2_mul_io_op1_im = io_matrixIn_2_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_2_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_2_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_3_mul_io_op1_re = io_matrixIn_3_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_3_mul_io_op1_im = io_matrixIn_3_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_3_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_3_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_4_mul_io_op1_re = io_matrixIn_4_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_4_mul_io_op1_im = io_matrixIn_4_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_4_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_4_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_5_mul_io_op1_re = io_matrixIn_5_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_5_mul_io_op1_im = io_matrixIn_5_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_5_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_5_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_6_mul_io_op1_re = io_matrixIn_6_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_6_mul_io_op1_im = io_matrixIn_6_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_6_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_6_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_7_mul_io_op1_re = io_matrixIn_7_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_7_mul_io_op1_im = io_matrixIn_7_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_7_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_7_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_8_mul_io_op1_re = io_matrixIn_8_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_8_mul_io_op1_im = io_matrixIn_8_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_8_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_8_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_9_mul_io_op1_re = io_matrixIn_9_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_9_mul_io_op1_im = io_matrixIn_9_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_9_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_9_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_10_mul_io_op1_re = io_matrixIn_10_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_10_mul_io_op1_im = io_matrixIn_10_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_10_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_10_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_11_mul_io_op1_re = io_matrixIn_11_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_11_mul_io_op1_im = io_matrixIn_11_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_11_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_11_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_12_mul_io_op1_re = io_matrixIn_12_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_12_mul_io_op1_im = io_matrixIn_12_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_12_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_12_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_13_mul_io_op1_re = io_matrixIn_13_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_13_mul_io_op1_im = io_matrixIn_13_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_13_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_13_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_14_mul_io_op1_re = io_matrixIn_14_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_14_mul_io_op1_im = io_matrixIn_14_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_14_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_14_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_15_mul_io_op1_re = io_matrixIn_15_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_15_mul_io_op1_im = io_matrixIn_15_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_15_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_15_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_16_mul_io_op1_re = io_matrixIn_16_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_16_mul_io_op1_im = io_matrixIn_16_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_16_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_16_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_17_mul_io_op1_re = io_matrixIn_17_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_17_mul_io_op1_im = io_matrixIn_17_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_17_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_17_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_18_mul_io_op1_re = io_matrixIn_18_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_18_mul_io_op1_im = io_matrixIn_18_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_18_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_18_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_19_mul_io_op1_re = io_matrixIn_19_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_19_mul_io_op1_im = io_matrixIn_19_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_19_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_19_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_20_mul_io_op1_re = io_matrixIn_20_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_20_mul_io_op1_im = io_matrixIn_20_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_20_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_20_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_21_mul_io_op1_re = io_matrixIn_21_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_21_mul_io_op1_im = io_matrixIn_21_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_21_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_21_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_22_mul_io_op1_re = io_matrixIn_22_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_22_mul_io_op1_im = io_matrixIn_22_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_22_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_22_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_23_mul_io_op1_re = io_matrixIn_23_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_23_mul_io_op1_im = io_matrixIn_23_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_23_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_23_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_24_mul_io_op1_re = io_matrixIn_24_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_24_mul_io_op1_im = io_matrixIn_24_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_24_mul_io_op2_re = io_valueIn_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_24_mul_io_op2_im = io_valueIn_im; // @[Complex_Operater.scala 49:16]
endmodule
module kronecker_v1(
  input         clock,
  input         reset,
  input  [63:0] io_matrixA_0_re,
  input  [63:0] io_matrixA_0_im,
  input  [63:0] io_matrixA_1_re,
  input  [63:0] io_matrixA_1_im,
  input  [63:0] io_matrixA_2_re,
  input  [63:0] io_matrixA_2_im,
  input  [63:0] io_matrixA_3_re,
  input  [63:0] io_matrixA_3_im,
  input  [63:0] io_matrixA_4_re,
  input  [63:0] io_matrixA_4_im,
  input  [63:0] io_matrixA_5_re,
  input  [63:0] io_matrixA_5_im,
  input  [63:0] io_matrixA_6_re,
  input  [63:0] io_matrixA_6_im,
  input  [63:0] io_matrixA_7_re,
  input  [63:0] io_matrixA_7_im,
  input  [63:0] io_matrixA_8_re,
  input  [63:0] io_matrixA_8_im,
  input  [63:0] io_matrixA_9_re,
  input  [63:0] io_matrixA_9_im,
  input  [63:0] io_matrixA_10_re,
  input  [63:0] io_matrixA_10_im,
  input  [63:0] io_matrixA_11_re,
  input  [63:0] io_matrixA_11_im,
  input  [63:0] io_matrixA_12_re,
  input  [63:0] io_matrixA_12_im,
  input  [63:0] io_matrixA_13_re,
  input  [63:0] io_matrixA_13_im,
  input  [63:0] io_matrixA_14_re,
  input  [63:0] io_matrixA_14_im,
  input  [63:0] io_matrixA_15_re,
  input  [63:0] io_matrixA_15_im,
  input  [63:0] io_matrixA_16_re,
  input  [63:0] io_matrixA_16_im,
  input  [63:0] io_matrixA_17_re,
  input  [63:0] io_matrixA_17_im,
  input  [63:0] io_matrixA_18_re,
  input  [63:0] io_matrixA_18_im,
  input  [63:0] io_matrixA_19_re,
  input  [63:0] io_matrixA_19_im,
  input  [63:0] io_matrixA_20_re,
  input  [63:0] io_matrixA_20_im,
  input  [63:0] io_matrixA_21_re,
  input  [63:0] io_matrixA_21_im,
  input  [63:0] io_matrixA_22_re,
  input  [63:0] io_matrixA_22_im,
  input  [63:0] io_matrixA_23_re,
  input  [63:0] io_matrixA_23_im,
  input  [63:0] io_matrixA_24_re,
  input  [63:0] io_matrixA_24_im,
  input  [63:0] io_matrixB_0_re,
  input  [63:0] io_matrixB_0_im,
  input  [63:0] io_matrixB_1_re,
  input  [63:0] io_matrixB_1_im,
  input  [63:0] io_matrixB_2_re,
  input  [63:0] io_matrixB_2_im,
  input  [63:0] io_matrixB_3_re,
  input  [63:0] io_matrixB_3_im,
  input  [63:0] io_matrixB_4_re,
  input  [63:0] io_matrixB_4_im,
  input  [63:0] io_matrixB_5_re,
  input  [63:0] io_matrixB_5_im,
  input  [63:0] io_matrixB_6_re,
  input  [63:0] io_matrixB_6_im,
  input  [63:0] io_matrixB_7_re,
  input  [63:0] io_matrixB_7_im,
  input  [63:0] io_matrixB_8_re,
  input  [63:0] io_matrixB_8_im,
  input  [63:0] io_matrixB_9_re,
  input  [63:0] io_matrixB_9_im,
  input  [63:0] io_matrixB_10_re,
  input  [63:0] io_matrixB_10_im,
  input  [63:0] io_matrixB_11_re,
  input  [63:0] io_matrixB_11_im,
  input  [63:0] io_matrixB_12_re,
  input  [63:0] io_matrixB_12_im,
  input  [63:0] io_matrixB_13_re,
  input  [63:0] io_matrixB_13_im,
  input  [63:0] io_matrixB_14_re,
  input  [63:0] io_matrixB_14_im,
  input  [63:0] io_matrixB_15_re,
  input  [63:0] io_matrixB_15_im,
  input  [63:0] io_matrixB_16_re,
  input  [63:0] io_matrixB_16_im,
  input  [63:0] io_matrixB_17_re,
  input  [63:0] io_matrixB_17_im,
  input  [63:0] io_matrixB_18_re,
  input  [63:0] io_matrixB_18_im,
  input  [63:0] io_matrixB_19_re,
  input  [63:0] io_matrixB_19_im,
  input  [63:0] io_matrixB_20_re,
  input  [63:0] io_matrixB_20_im,
  input  [63:0] io_matrixB_21_re,
  input  [63:0] io_matrixB_21_im,
  input  [63:0] io_matrixB_22_re,
  input  [63:0] io_matrixB_22_im,
  input  [63:0] io_matrixB_23_re,
  input  [63:0] io_matrixB_23_im,
  input  [63:0] io_matrixB_24_re,
  input  [63:0] io_matrixB_24_im,
  output [63:0] io_matrixOut_0_re,
  output [63:0] io_matrixOut_0_im,
  output [63:0] io_matrixOut_1_re,
  output [63:0] io_matrixOut_1_im,
  output [63:0] io_matrixOut_2_re,
  output [63:0] io_matrixOut_2_im,
  output [63:0] io_matrixOut_3_re,
  output [63:0] io_matrixOut_3_im,
  output [63:0] io_matrixOut_4_re,
  output [63:0] io_matrixOut_4_im,
  output [63:0] io_matrixOut_5_re,
  output [63:0] io_matrixOut_5_im,
  output [63:0] io_matrixOut_6_re,
  output [63:0] io_matrixOut_6_im,
  output [63:0] io_matrixOut_7_re,
  output [63:0] io_matrixOut_7_im,
  output [63:0] io_matrixOut_8_re,
  output [63:0] io_matrixOut_8_im,
  output [63:0] io_matrixOut_9_re,
  output [63:0] io_matrixOut_9_im,
  output [63:0] io_matrixOut_10_re,
  output [63:0] io_matrixOut_10_im,
  output [63:0] io_matrixOut_11_re,
  output [63:0] io_matrixOut_11_im,
  output [63:0] io_matrixOut_12_re,
  output [63:0] io_matrixOut_12_im,
  output [63:0] io_matrixOut_13_re,
  output [63:0] io_matrixOut_13_im,
  output [63:0] io_matrixOut_14_re,
  output [63:0] io_matrixOut_14_im,
  output [63:0] io_matrixOut_15_re,
  output [63:0] io_matrixOut_15_im,
  output [63:0] io_matrixOut_16_re,
  output [63:0] io_matrixOut_16_im,
  output [63:0] io_matrixOut_17_re,
  output [63:0] io_matrixOut_17_im,
  output [63:0] io_matrixOut_18_re,
  output [63:0] io_matrixOut_18_im,
  output [63:0] io_matrixOut_19_re,
  output [63:0] io_matrixOut_19_im,
  output [63:0] io_matrixOut_20_re,
  output [63:0] io_matrixOut_20_im,
  output [63:0] io_matrixOut_21_re,
  output [63:0] io_matrixOut_21_im,
  output [63:0] io_matrixOut_22_re,
  output [63:0] io_matrixOut_22_im,
  output [63:0] io_matrixOut_23_re,
  output [63:0] io_matrixOut_23_im,
  output [63:0] io_matrixOut_24_re,
  output [63:0] io_matrixOut_24_im,
  output [63:0] io_matrixOut_25_re,
  output [63:0] io_matrixOut_25_im,
  output [63:0] io_matrixOut_26_re,
  output [63:0] io_matrixOut_26_im,
  output [63:0] io_matrixOut_27_re,
  output [63:0] io_matrixOut_27_im,
  output [63:0] io_matrixOut_28_re,
  output [63:0] io_matrixOut_28_im,
  output [63:0] io_matrixOut_29_re,
  output [63:0] io_matrixOut_29_im,
  output [63:0] io_matrixOut_30_re,
  output [63:0] io_matrixOut_30_im,
  output [63:0] io_matrixOut_31_re,
  output [63:0] io_matrixOut_31_im,
  output [63:0] io_matrixOut_32_re,
  output [63:0] io_matrixOut_32_im,
  output [63:0] io_matrixOut_33_re,
  output [63:0] io_matrixOut_33_im,
  output [63:0] io_matrixOut_34_re,
  output [63:0] io_matrixOut_34_im,
  output [63:0] io_matrixOut_35_re,
  output [63:0] io_matrixOut_35_im,
  output [63:0] io_matrixOut_36_re,
  output [63:0] io_matrixOut_36_im,
  output [63:0] io_matrixOut_37_re,
  output [63:0] io_matrixOut_37_im,
  output [63:0] io_matrixOut_38_re,
  output [63:0] io_matrixOut_38_im,
  output [63:0] io_matrixOut_39_re,
  output [63:0] io_matrixOut_39_im,
  output [63:0] io_matrixOut_40_re,
  output [63:0] io_matrixOut_40_im,
  output [63:0] io_matrixOut_41_re,
  output [63:0] io_matrixOut_41_im,
  output [63:0] io_matrixOut_42_re,
  output [63:0] io_matrixOut_42_im,
  output [63:0] io_matrixOut_43_re,
  output [63:0] io_matrixOut_43_im,
  output [63:0] io_matrixOut_44_re,
  output [63:0] io_matrixOut_44_im,
  output [63:0] io_matrixOut_45_re,
  output [63:0] io_matrixOut_45_im,
  output [63:0] io_matrixOut_46_re,
  output [63:0] io_matrixOut_46_im,
  output [63:0] io_matrixOut_47_re,
  output [63:0] io_matrixOut_47_im,
  output [63:0] io_matrixOut_48_re,
  output [63:0] io_matrixOut_48_im,
  output [63:0] io_matrixOut_49_re,
  output [63:0] io_matrixOut_49_im,
  output [63:0] io_matrixOut_50_re,
  output [63:0] io_matrixOut_50_im,
  output [63:0] io_matrixOut_51_re,
  output [63:0] io_matrixOut_51_im,
  output [63:0] io_matrixOut_52_re,
  output [63:0] io_matrixOut_52_im,
  output [63:0] io_matrixOut_53_re,
  output [63:0] io_matrixOut_53_im,
  output [63:0] io_matrixOut_54_re,
  output [63:0] io_matrixOut_54_im,
  output [63:0] io_matrixOut_55_re,
  output [63:0] io_matrixOut_55_im,
  output [63:0] io_matrixOut_56_re,
  output [63:0] io_matrixOut_56_im,
  output [63:0] io_matrixOut_57_re,
  output [63:0] io_matrixOut_57_im,
  output [63:0] io_matrixOut_58_re,
  output [63:0] io_matrixOut_58_im,
  output [63:0] io_matrixOut_59_re,
  output [63:0] io_matrixOut_59_im,
  output [63:0] io_matrixOut_60_re,
  output [63:0] io_matrixOut_60_im,
  output [63:0] io_matrixOut_61_re,
  output [63:0] io_matrixOut_61_im,
  output [63:0] io_matrixOut_62_re,
  output [63:0] io_matrixOut_62_im,
  output [63:0] io_matrixOut_63_re,
  output [63:0] io_matrixOut_63_im,
  output [63:0] io_matrixOut_64_re,
  output [63:0] io_matrixOut_64_im,
  output [63:0] io_matrixOut_65_re,
  output [63:0] io_matrixOut_65_im,
  output [63:0] io_matrixOut_66_re,
  output [63:0] io_matrixOut_66_im,
  output [63:0] io_matrixOut_67_re,
  output [63:0] io_matrixOut_67_im,
  output [63:0] io_matrixOut_68_re,
  output [63:0] io_matrixOut_68_im,
  output [63:0] io_matrixOut_69_re,
  output [63:0] io_matrixOut_69_im,
  output [63:0] io_matrixOut_70_re,
  output [63:0] io_matrixOut_70_im,
  output [63:0] io_matrixOut_71_re,
  output [63:0] io_matrixOut_71_im,
  output [63:0] io_matrixOut_72_re,
  output [63:0] io_matrixOut_72_im,
  output [63:0] io_matrixOut_73_re,
  output [63:0] io_matrixOut_73_im,
  output [63:0] io_matrixOut_74_re,
  output [63:0] io_matrixOut_74_im,
  output [63:0] io_matrixOut_75_re,
  output [63:0] io_matrixOut_75_im,
  output [63:0] io_matrixOut_76_re,
  output [63:0] io_matrixOut_76_im,
  output [63:0] io_matrixOut_77_re,
  output [63:0] io_matrixOut_77_im,
  output [63:0] io_matrixOut_78_re,
  output [63:0] io_matrixOut_78_im,
  output [63:0] io_matrixOut_79_re,
  output [63:0] io_matrixOut_79_im,
  output [63:0] io_matrixOut_80_re,
  output [63:0] io_matrixOut_80_im,
  output [63:0] io_matrixOut_81_re,
  output [63:0] io_matrixOut_81_im,
  output [63:0] io_matrixOut_82_re,
  output [63:0] io_matrixOut_82_im,
  output [63:0] io_matrixOut_83_re,
  output [63:0] io_matrixOut_83_im,
  output [63:0] io_matrixOut_84_re,
  output [63:0] io_matrixOut_84_im,
  output [63:0] io_matrixOut_85_re,
  output [63:0] io_matrixOut_85_im,
  output [63:0] io_matrixOut_86_re,
  output [63:0] io_matrixOut_86_im,
  output [63:0] io_matrixOut_87_re,
  output [63:0] io_matrixOut_87_im,
  output [63:0] io_matrixOut_88_re,
  output [63:0] io_matrixOut_88_im,
  output [63:0] io_matrixOut_89_re,
  output [63:0] io_matrixOut_89_im,
  output [63:0] io_matrixOut_90_re,
  output [63:0] io_matrixOut_90_im,
  output [63:0] io_matrixOut_91_re,
  output [63:0] io_matrixOut_91_im,
  output [63:0] io_matrixOut_92_re,
  output [63:0] io_matrixOut_92_im,
  output [63:0] io_matrixOut_93_re,
  output [63:0] io_matrixOut_93_im,
  output [63:0] io_matrixOut_94_re,
  output [63:0] io_matrixOut_94_im,
  output [63:0] io_matrixOut_95_re,
  output [63:0] io_matrixOut_95_im,
  output [63:0] io_matrixOut_96_re,
  output [63:0] io_matrixOut_96_im,
  output [63:0] io_matrixOut_97_re,
  output [63:0] io_matrixOut_97_im,
  output [63:0] io_matrixOut_98_re,
  output [63:0] io_matrixOut_98_im,
  output [63:0] io_matrixOut_99_re,
  output [63:0] io_matrixOut_99_im,
  output [63:0] io_matrixOut_100_re,
  output [63:0] io_matrixOut_100_im,
  output [63:0] io_matrixOut_101_re,
  output [63:0] io_matrixOut_101_im,
  output [63:0] io_matrixOut_102_re,
  output [63:0] io_matrixOut_102_im,
  output [63:0] io_matrixOut_103_re,
  output [63:0] io_matrixOut_103_im,
  output [63:0] io_matrixOut_104_re,
  output [63:0] io_matrixOut_104_im,
  output [63:0] io_matrixOut_105_re,
  output [63:0] io_matrixOut_105_im,
  output [63:0] io_matrixOut_106_re,
  output [63:0] io_matrixOut_106_im,
  output [63:0] io_matrixOut_107_re,
  output [63:0] io_matrixOut_107_im,
  output [63:0] io_matrixOut_108_re,
  output [63:0] io_matrixOut_108_im,
  output [63:0] io_matrixOut_109_re,
  output [63:0] io_matrixOut_109_im,
  output [63:0] io_matrixOut_110_re,
  output [63:0] io_matrixOut_110_im,
  output [63:0] io_matrixOut_111_re,
  output [63:0] io_matrixOut_111_im,
  output [63:0] io_matrixOut_112_re,
  output [63:0] io_matrixOut_112_im,
  output [63:0] io_matrixOut_113_re,
  output [63:0] io_matrixOut_113_im,
  output [63:0] io_matrixOut_114_re,
  output [63:0] io_matrixOut_114_im,
  output [63:0] io_matrixOut_115_re,
  output [63:0] io_matrixOut_115_im,
  output [63:0] io_matrixOut_116_re,
  output [63:0] io_matrixOut_116_im,
  output [63:0] io_matrixOut_117_re,
  output [63:0] io_matrixOut_117_im,
  output [63:0] io_matrixOut_118_re,
  output [63:0] io_matrixOut_118_im,
  output [63:0] io_matrixOut_119_re,
  output [63:0] io_matrixOut_119_im,
  output [63:0] io_matrixOut_120_re,
  output [63:0] io_matrixOut_120_im,
  output [63:0] io_matrixOut_121_re,
  output [63:0] io_matrixOut_121_im,
  output [63:0] io_matrixOut_122_re,
  output [63:0] io_matrixOut_122_im,
  output [63:0] io_matrixOut_123_re,
  output [63:0] io_matrixOut_123_im,
  output [63:0] io_matrixOut_124_re,
  output [63:0] io_matrixOut_124_im,
  output [63:0] io_matrixOut_125_re,
  output [63:0] io_matrixOut_125_im,
  output [63:0] io_matrixOut_126_re,
  output [63:0] io_matrixOut_126_im,
  output [63:0] io_matrixOut_127_re,
  output [63:0] io_matrixOut_127_im,
  output [63:0] io_matrixOut_128_re,
  output [63:0] io_matrixOut_128_im,
  output [63:0] io_matrixOut_129_re,
  output [63:0] io_matrixOut_129_im,
  output [63:0] io_matrixOut_130_re,
  output [63:0] io_matrixOut_130_im,
  output [63:0] io_matrixOut_131_re,
  output [63:0] io_matrixOut_131_im,
  output [63:0] io_matrixOut_132_re,
  output [63:0] io_matrixOut_132_im,
  output [63:0] io_matrixOut_133_re,
  output [63:0] io_matrixOut_133_im,
  output [63:0] io_matrixOut_134_re,
  output [63:0] io_matrixOut_134_im,
  output [63:0] io_matrixOut_135_re,
  output [63:0] io_matrixOut_135_im,
  output [63:0] io_matrixOut_136_re,
  output [63:0] io_matrixOut_136_im,
  output [63:0] io_matrixOut_137_re,
  output [63:0] io_matrixOut_137_im,
  output [63:0] io_matrixOut_138_re,
  output [63:0] io_matrixOut_138_im,
  output [63:0] io_matrixOut_139_re,
  output [63:0] io_matrixOut_139_im,
  output [63:0] io_matrixOut_140_re,
  output [63:0] io_matrixOut_140_im,
  output [63:0] io_matrixOut_141_re,
  output [63:0] io_matrixOut_141_im,
  output [63:0] io_matrixOut_142_re,
  output [63:0] io_matrixOut_142_im,
  output [63:0] io_matrixOut_143_re,
  output [63:0] io_matrixOut_143_im,
  output [63:0] io_matrixOut_144_re,
  output [63:0] io_matrixOut_144_im,
  output [63:0] io_matrixOut_145_re,
  output [63:0] io_matrixOut_145_im,
  output [63:0] io_matrixOut_146_re,
  output [63:0] io_matrixOut_146_im,
  output [63:0] io_matrixOut_147_re,
  output [63:0] io_matrixOut_147_im,
  output [63:0] io_matrixOut_148_re,
  output [63:0] io_matrixOut_148_im,
  output [63:0] io_matrixOut_149_re,
  output [63:0] io_matrixOut_149_im,
  output [63:0] io_matrixOut_150_re,
  output [63:0] io_matrixOut_150_im,
  output [63:0] io_matrixOut_151_re,
  output [63:0] io_matrixOut_151_im,
  output [63:0] io_matrixOut_152_re,
  output [63:0] io_matrixOut_152_im,
  output [63:0] io_matrixOut_153_re,
  output [63:0] io_matrixOut_153_im,
  output [63:0] io_matrixOut_154_re,
  output [63:0] io_matrixOut_154_im,
  output [63:0] io_matrixOut_155_re,
  output [63:0] io_matrixOut_155_im,
  output [63:0] io_matrixOut_156_re,
  output [63:0] io_matrixOut_156_im,
  output [63:0] io_matrixOut_157_re,
  output [63:0] io_matrixOut_157_im,
  output [63:0] io_matrixOut_158_re,
  output [63:0] io_matrixOut_158_im,
  output [63:0] io_matrixOut_159_re,
  output [63:0] io_matrixOut_159_im,
  output [63:0] io_matrixOut_160_re,
  output [63:0] io_matrixOut_160_im,
  output [63:0] io_matrixOut_161_re,
  output [63:0] io_matrixOut_161_im,
  output [63:0] io_matrixOut_162_re,
  output [63:0] io_matrixOut_162_im,
  output [63:0] io_matrixOut_163_re,
  output [63:0] io_matrixOut_163_im,
  output [63:0] io_matrixOut_164_re,
  output [63:0] io_matrixOut_164_im,
  output [63:0] io_matrixOut_165_re,
  output [63:0] io_matrixOut_165_im,
  output [63:0] io_matrixOut_166_re,
  output [63:0] io_matrixOut_166_im,
  output [63:0] io_matrixOut_167_re,
  output [63:0] io_matrixOut_167_im,
  output [63:0] io_matrixOut_168_re,
  output [63:0] io_matrixOut_168_im,
  output [63:0] io_matrixOut_169_re,
  output [63:0] io_matrixOut_169_im,
  output [63:0] io_matrixOut_170_re,
  output [63:0] io_matrixOut_170_im,
  output [63:0] io_matrixOut_171_re,
  output [63:0] io_matrixOut_171_im,
  output [63:0] io_matrixOut_172_re,
  output [63:0] io_matrixOut_172_im,
  output [63:0] io_matrixOut_173_re,
  output [63:0] io_matrixOut_173_im,
  output [63:0] io_matrixOut_174_re,
  output [63:0] io_matrixOut_174_im,
  output [63:0] io_matrixOut_175_re,
  output [63:0] io_matrixOut_175_im,
  output [63:0] io_matrixOut_176_re,
  output [63:0] io_matrixOut_176_im,
  output [63:0] io_matrixOut_177_re,
  output [63:0] io_matrixOut_177_im,
  output [63:0] io_matrixOut_178_re,
  output [63:0] io_matrixOut_178_im,
  output [63:0] io_matrixOut_179_re,
  output [63:0] io_matrixOut_179_im,
  output [63:0] io_matrixOut_180_re,
  output [63:0] io_matrixOut_180_im,
  output [63:0] io_matrixOut_181_re,
  output [63:0] io_matrixOut_181_im,
  output [63:0] io_matrixOut_182_re,
  output [63:0] io_matrixOut_182_im,
  output [63:0] io_matrixOut_183_re,
  output [63:0] io_matrixOut_183_im,
  output [63:0] io_matrixOut_184_re,
  output [63:0] io_matrixOut_184_im,
  output [63:0] io_matrixOut_185_re,
  output [63:0] io_matrixOut_185_im,
  output [63:0] io_matrixOut_186_re,
  output [63:0] io_matrixOut_186_im,
  output [63:0] io_matrixOut_187_re,
  output [63:0] io_matrixOut_187_im,
  output [63:0] io_matrixOut_188_re,
  output [63:0] io_matrixOut_188_im,
  output [63:0] io_matrixOut_189_re,
  output [63:0] io_matrixOut_189_im,
  output [63:0] io_matrixOut_190_re,
  output [63:0] io_matrixOut_190_im,
  output [63:0] io_matrixOut_191_re,
  output [63:0] io_matrixOut_191_im,
  output [63:0] io_matrixOut_192_re,
  output [63:0] io_matrixOut_192_im,
  output [63:0] io_matrixOut_193_re,
  output [63:0] io_matrixOut_193_im,
  output [63:0] io_matrixOut_194_re,
  output [63:0] io_matrixOut_194_im,
  output [63:0] io_matrixOut_195_re,
  output [63:0] io_matrixOut_195_im,
  output [63:0] io_matrixOut_196_re,
  output [63:0] io_matrixOut_196_im,
  output [63:0] io_matrixOut_197_re,
  output [63:0] io_matrixOut_197_im,
  output [63:0] io_matrixOut_198_re,
  output [63:0] io_matrixOut_198_im,
  output [63:0] io_matrixOut_199_re,
  output [63:0] io_matrixOut_199_im,
  output [63:0] io_matrixOut_200_re,
  output [63:0] io_matrixOut_200_im,
  output [63:0] io_matrixOut_201_re,
  output [63:0] io_matrixOut_201_im,
  output [63:0] io_matrixOut_202_re,
  output [63:0] io_matrixOut_202_im,
  output [63:0] io_matrixOut_203_re,
  output [63:0] io_matrixOut_203_im,
  output [63:0] io_matrixOut_204_re,
  output [63:0] io_matrixOut_204_im,
  output [63:0] io_matrixOut_205_re,
  output [63:0] io_matrixOut_205_im,
  output [63:0] io_matrixOut_206_re,
  output [63:0] io_matrixOut_206_im,
  output [63:0] io_matrixOut_207_re,
  output [63:0] io_matrixOut_207_im,
  output [63:0] io_matrixOut_208_re,
  output [63:0] io_matrixOut_208_im,
  output [63:0] io_matrixOut_209_re,
  output [63:0] io_matrixOut_209_im,
  output [63:0] io_matrixOut_210_re,
  output [63:0] io_matrixOut_210_im,
  output [63:0] io_matrixOut_211_re,
  output [63:0] io_matrixOut_211_im,
  output [63:0] io_matrixOut_212_re,
  output [63:0] io_matrixOut_212_im,
  output [63:0] io_matrixOut_213_re,
  output [63:0] io_matrixOut_213_im,
  output [63:0] io_matrixOut_214_re,
  output [63:0] io_matrixOut_214_im,
  output [63:0] io_matrixOut_215_re,
  output [63:0] io_matrixOut_215_im,
  output [63:0] io_matrixOut_216_re,
  output [63:0] io_matrixOut_216_im,
  output [63:0] io_matrixOut_217_re,
  output [63:0] io_matrixOut_217_im,
  output [63:0] io_matrixOut_218_re,
  output [63:0] io_matrixOut_218_im,
  output [63:0] io_matrixOut_219_re,
  output [63:0] io_matrixOut_219_im,
  output [63:0] io_matrixOut_220_re,
  output [63:0] io_matrixOut_220_im,
  output [63:0] io_matrixOut_221_re,
  output [63:0] io_matrixOut_221_im,
  output [63:0] io_matrixOut_222_re,
  output [63:0] io_matrixOut_222_im,
  output [63:0] io_matrixOut_223_re,
  output [63:0] io_matrixOut_223_im,
  output [63:0] io_matrixOut_224_re,
  output [63:0] io_matrixOut_224_im,
  output [63:0] io_matrixOut_225_re,
  output [63:0] io_matrixOut_225_im,
  output [63:0] io_matrixOut_226_re,
  output [63:0] io_matrixOut_226_im,
  output [63:0] io_matrixOut_227_re,
  output [63:0] io_matrixOut_227_im,
  output [63:0] io_matrixOut_228_re,
  output [63:0] io_matrixOut_228_im,
  output [63:0] io_matrixOut_229_re,
  output [63:0] io_matrixOut_229_im,
  output [63:0] io_matrixOut_230_re,
  output [63:0] io_matrixOut_230_im,
  output [63:0] io_matrixOut_231_re,
  output [63:0] io_matrixOut_231_im,
  output [63:0] io_matrixOut_232_re,
  output [63:0] io_matrixOut_232_im,
  output [63:0] io_matrixOut_233_re,
  output [63:0] io_matrixOut_233_im,
  output [63:0] io_matrixOut_234_re,
  output [63:0] io_matrixOut_234_im,
  output [63:0] io_matrixOut_235_re,
  output [63:0] io_matrixOut_235_im,
  output [63:0] io_matrixOut_236_re,
  output [63:0] io_matrixOut_236_im,
  output [63:0] io_matrixOut_237_re,
  output [63:0] io_matrixOut_237_im,
  output [63:0] io_matrixOut_238_re,
  output [63:0] io_matrixOut_238_im,
  output [63:0] io_matrixOut_239_re,
  output [63:0] io_matrixOut_239_im,
  output [63:0] io_matrixOut_240_re,
  output [63:0] io_matrixOut_240_im,
  output [63:0] io_matrixOut_241_re,
  output [63:0] io_matrixOut_241_im,
  output [63:0] io_matrixOut_242_re,
  output [63:0] io_matrixOut_242_im,
  output [63:0] io_matrixOut_243_re,
  output [63:0] io_matrixOut_243_im,
  output [63:0] io_matrixOut_244_re,
  output [63:0] io_matrixOut_244_im,
  output [63:0] io_matrixOut_245_re,
  output [63:0] io_matrixOut_245_im,
  output [63:0] io_matrixOut_246_re,
  output [63:0] io_matrixOut_246_im,
  output [63:0] io_matrixOut_247_re,
  output [63:0] io_matrixOut_247_im,
  output [63:0] io_matrixOut_248_re,
  output [63:0] io_matrixOut_248_im,
  output [63:0] io_matrixOut_249_re,
  output [63:0] io_matrixOut_249_im,
  output [63:0] io_matrixOut_250_re,
  output [63:0] io_matrixOut_250_im,
  output [63:0] io_matrixOut_251_re,
  output [63:0] io_matrixOut_251_im,
  output [63:0] io_matrixOut_252_re,
  output [63:0] io_matrixOut_252_im,
  output [63:0] io_matrixOut_253_re,
  output [63:0] io_matrixOut_253_im,
  output [63:0] io_matrixOut_254_re,
  output [63:0] io_matrixOut_254_im,
  output [63:0] io_matrixOut_255_re,
  output [63:0] io_matrixOut_255_im,
  output [63:0] io_matrixOut_256_re,
  output [63:0] io_matrixOut_256_im,
  output [63:0] io_matrixOut_257_re,
  output [63:0] io_matrixOut_257_im,
  output [63:0] io_matrixOut_258_re,
  output [63:0] io_matrixOut_258_im,
  output [63:0] io_matrixOut_259_re,
  output [63:0] io_matrixOut_259_im,
  output [63:0] io_matrixOut_260_re,
  output [63:0] io_matrixOut_260_im,
  output [63:0] io_matrixOut_261_re,
  output [63:0] io_matrixOut_261_im,
  output [63:0] io_matrixOut_262_re,
  output [63:0] io_matrixOut_262_im,
  output [63:0] io_matrixOut_263_re,
  output [63:0] io_matrixOut_263_im,
  output [63:0] io_matrixOut_264_re,
  output [63:0] io_matrixOut_264_im,
  output [63:0] io_matrixOut_265_re,
  output [63:0] io_matrixOut_265_im,
  output [63:0] io_matrixOut_266_re,
  output [63:0] io_matrixOut_266_im,
  output [63:0] io_matrixOut_267_re,
  output [63:0] io_matrixOut_267_im,
  output [63:0] io_matrixOut_268_re,
  output [63:0] io_matrixOut_268_im,
  output [63:0] io_matrixOut_269_re,
  output [63:0] io_matrixOut_269_im,
  output [63:0] io_matrixOut_270_re,
  output [63:0] io_matrixOut_270_im,
  output [63:0] io_matrixOut_271_re,
  output [63:0] io_matrixOut_271_im,
  output [63:0] io_matrixOut_272_re,
  output [63:0] io_matrixOut_272_im,
  output [63:0] io_matrixOut_273_re,
  output [63:0] io_matrixOut_273_im,
  output [63:0] io_matrixOut_274_re,
  output [63:0] io_matrixOut_274_im,
  output [63:0] io_matrixOut_275_re,
  output [63:0] io_matrixOut_275_im,
  output [63:0] io_matrixOut_276_re,
  output [63:0] io_matrixOut_276_im,
  output [63:0] io_matrixOut_277_re,
  output [63:0] io_matrixOut_277_im,
  output [63:0] io_matrixOut_278_re,
  output [63:0] io_matrixOut_278_im,
  output [63:0] io_matrixOut_279_re,
  output [63:0] io_matrixOut_279_im,
  output [63:0] io_matrixOut_280_re,
  output [63:0] io_matrixOut_280_im,
  output [63:0] io_matrixOut_281_re,
  output [63:0] io_matrixOut_281_im,
  output [63:0] io_matrixOut_282_re,
  output [63:0] io_matrixOut_282_im,
  output [63:0] io_matrixOut_283_re,
  output [63:0] io_matrixOut_283_im,
  output [63:0] io_matrixOut_284_re,
  output [63:0] io_matrixOut_284_im,
  output [63:0] io_matrixOut_285_re,
  output [63:0] io_matrixOut_285_im,
  output [63:0] io_matrixOut_286_re,
  output [63:0] io_matrixOut_286_im,
  output [63:0] io_matrixOut_287_re,
  output [63:0] io_matrixOut_287_im,
  output [63:0] io_matrixOut_288_re,
  output [63:0] io_matrixOut_288_im,
  output [63:0] io_matrixOut_289_re,
  output [63:0] io_matrixOut_289_im,
  output [63:0] io_matrixOut_290_re,
  output [63:0] io_matrixOut_290_im,
  output [63:0] io_matrixOut_291_re,
  output [63:0] io_matrixOut_291_im,
  output [63:0] io_matrixOut_292_re,
  output [63:0] io_matrixOut_292_im,
  output [63:0] io_matrixOut_293_re,
  output [63:0] io_matrixOut_293_im,
  output [63:0] io_matrixOut_294_re,
  output [63:0] io_matrixOut_294_im,
  output [63:0] io_matrixOut_295_re,
  output [63:0] io_matrixOut_295_im,
  output [63:0] io_matrixOut_296_re,
  output [63:0] io_matrixOut_296_im,
  output [63:0] io_matrixOut_297_re,
  output [63:0] io_matrixOut_297_im,
  output [63:0] io_matrixOut_298_re,
  output [63:0] io_matrixOut_298_im,
  output [63:0] io_matrixOut_299_re,
  output [63:0] io_matrixOut_299_im,
  output [63:0] io_matrixOut_300_re,
  output [63:0] io_matrixOut_300_im,
  output [63:0] io_matrixOut_301_re,
  output [63:0] io_matrixOut_301_im,
  output [63:0] io_matrixOut_302_re,
  output [63:0] io_matrixOut_302_im,
  output [63:0] io_matrixOut_303_re,
  output [63:0] io_matrixOut_303_im,
  output [63:0] io_matrixOut_304_re,
  output [63:0] io_matrixOut_304_im,
  output [63:0] io_matrixOut_305_re,
  output [63:0] io_matrixOut_305_im,
  output [63:0] io_matrixOut_306_re,
  output [63:0] io_matrixOut_306_im,
  output [63:0] io_matrixOut_307_re,
  output [63:0] io_matrixOut_307_im,
  output [63:0] io_matrixOut_308_re,
  output [63:0] io_matrixOut_308_im,
  output [63:0] io_matrixOut_309_re,
  output [63:0] io_matrixOut_309_im,
  output [63:0] io_matrixOut_310_re,
  output [63:0] io_matrixOut_310_im,
  output [63:0] io_matrixOut_311_re,
  output [63:0] io_matrixOut_311_im,
  output [63:0] io_matrixOut_312_re,
  output [63:0] io_matrixOut_312_im,
  output [63:0] io_matrixOut_313_re,
  output [63:0] io_matrixOut_313_im,
  output [63:0] io_matrixOut_314_re,
  output [63:0] io_matrixOut_314_im,
  output [63:0] io_matrixOut_315_re,
  output [63:0] io_matrixOut_315_im,
  output [63:0] io_matrixOut_316_re,
  output [63:0] io_matrixOut_316_im,
  output [63:0] io_matrixOut_317_re,
  output [63:0] io_matrixOut_317_im,
  output [63:0] io_matrixOut_318_re,
  output [63:0] io_matrixOut_318_im,
  output [63:0] io_matrixOut_319_re,
  output [63:0] io_matrixOut_319_im,
  output [63:0] io_matrixOut_320_re,
  output [63:0] io_matrixOut_320_im,
  output [63:0] io_matrixOut_321_re,
  output [63:0] io_matrixOut_321_im,
  output [63:0] io_matrixOut_322_re,
  output [63:0] io_matrixOut_322_im,
  output [63:0] io_matrixOut_323_re,
  output [63:0] io_matrixOut_323_im,
  output [63:0] io_matrixOut_324_re,
  output [63:0] io_matrixOut_324_im,
  output [63:0] io_matrixOut_325_re,
  output [63:0] io_matrixOut_325_im,
  output [63:0] io_matrixOut_326_re,
  output [63:0] io_matrixOut_326_im,
  output [63:0] io_matrixOut_327_re,
  output [63:0] io_matrixOut_327_im,
  output [63:0] io_matrixOut_328_re,
  output [63:0] io_matrixOut_328_im,
  output [63:0] io_matrixOut_329_re,
  output [63:0] io_matrixOut_329_im,
  output [63:0] io_matrixOut_330_re,
  output [63:0] io_matrixOut_330_im,
  output [63:0] io_matrixOut_331_re,
  output [63:0] io_matrixOut_331_im,
  output [63:0] io_matrixOut_332_re,
  output [63:0] io_matrixOut_332_im,
  output [63:0] io_matrixOut_333_re,
  output [63:0] io_matrixOut_333_im,
  output [63:0] io_matrixOut_334_re,
  output [63:0] io_matrixOut_334_im,
  output [63:0] io_matrixOut_335_re,
  output [63:0] io_matrixOut_335_im,
  output [63:0] io_matrixOut_336_re,
  output [63:0] io_matrixOut_336_im,
  output [63:0] io_matrixOut_337_re,
  output [63:0] io_matrixOut_337_im,
  output [63:0] io_matrixOut_338_re,
  output [63:0] io_matrixOut_338_im,
  output [63:0] io_matrixOut_339_re,
  output [63:0] io_matrixOut_339_im,
  output [63:0] io_matrixOut_340_re,
  output [63:0] io_matrixOut_340_im,
  output [63:0] io_matrixOut_341_re,
  output [63:0] io_matrixOut_341_im,
  output [63:0] io_matrixOut_342_re,
  output [63:0] io_matrixOut_342_im,
  output [63:0] io_matrixOut_343_re,
  output [63:0] io_matrixOut_343_im,
  output [63:0] io_matrixOut_344_re,
  output [63:0] io_matrixOut_344_im,
  output [63:0] io_matrixOut_345_re,
  output [63:0] io_matrixOut_345_im,
  output [63:0] io_matrixOut_346_re,
  output [63:0] io_matrixOut_346_im,
  output [63:0] io_matrixOut_347_re,
  output [63:0] io_matrixOut_347_im,
  output [63:0] io_matrixOut_348_re,
  output [63:0] io_matrixOut_348_im,
  output [63:0] io_matrixOut_349_re,
  output [63:0] io_matrixOut_349_im,
  output [63:0] io_matrixOut_350_re,
  output [63:0] io_matrixOut_350_im,
  output [63:0] io_matrixOut_351_re,
  output [63:0] io_matrixOut_351_im,
  output [63:0] io_matrixOut_352_re,
  output [63:0] io_matrixOut_352_im,
  output [63:0] io_matrixOut_353_re,
  output [63:0] io_matrixOut_353_im,
  output [63:0] io_matrixOut_354_re,
  output [63:0] io_matrixOut_354_im,
  output [63:0] io_matrixOut_355_re,
  output [63:0] io_matrixOut_355_im,
  output [63:0] io_matrixOut_356_re,
  output [63:0] io_matrixOut_356_im,
  output [63:0] io_matrixOut_357_re,
  output [63:0] io_matrixOut_357_im,
  output [63:0] io_matrixOut_358_re,
  output [63:0] io_matrixOut_358_im,
  output [63:0] io_matrixOut_359_re,
  output [63:0] io_matrixOut_359_im,
  output [63:0] io_matrixOut_360_re,
  output [63:0] io_matrixOut_360_im,
  output [63:0] io_matrixOut_361_re,
  output [63:0] io_matrixOut_361_im,
  output [63:0] io_matrixOut_362_re,
  output [63:0] io_matrixOut_362_im,
  output [63:0] io_matrixOut_363_re,
  output [63:0] io_matrixOut_363_im,
  output [63:0] io_matrixOut_364_re,
  output [63:0] io_matrixOut_364_im,
  output [63:0] io_matrixOut_365_re,
  output [63:0] io_matrixOut_365_im,
  output [63:0] io_matrixOut_366_re,
  output [63:0] io_matrixOut_366_im,
  output [63:0] io_matrixOut_367_re,
  output [63:0] io_matrixOut_367_im,
  output [63:0] io_matrixOut_368_re,
  output [63:0] io_matrixOut_368_im,
  output [63:0] io_matrixOut_369_re,
  output [63:0] io_matrixOut_369_im,
  output [63:0] io_matrixOut_370_re,
  output [63:0] io_matrixOut_370_im,
  output [63:0] io_matrixOut_371_re,
  output [63:0] io_matrixOut_371_im,
  output [63:0] io_matrixOut_372_re,
  output [63:0] io_matrixOut_372_im,
  output [63:0] io_matrixOut_373_re,
  output [63:0] io_matrixOut_373_im,
  output [63:0] io_matrixOut_374_re,
  output [63:0] io_matrixOut_374_im,
  output [63:0] io_matrixOut_375_re,
  output [63:0] io_matrixOut_375_im,
  output [63:0] io_matrixOut_376_re,
  output [63:0] io_matrixOut_376_im,
  output [63:0] io_matrixOut_377_re,
  output [63:0] io_matrixOut_377_im,
  output [63:0] io_matrixOut_378_re,
  output [63:0] io_matrixOut_378_im,
  output [63:0] io_matrixOut_379_re,
  output [63:0] io_matrixOut_379_im,
  output [63:0] io_matrixOut_380_re,
  output [63:0] io_matrixOut_380_im,
  output [63:0] io_matrixOut_381_re,
  output [63:0] io_matrixOut_381_im,
  output [63:0] io_matrixOut_382_re,
  output [63:0] io_matrixOut_382_im,
  output [63:0] io_matrixOut_383_re,
  output [63:0] io_matrixOut_383_im,
  output [63:0] io_matrixOut_384_re,
  output [63:0] io_matrixOut_384_im,
  output [63:0] io_matrixOut_385_re,
  output [63:0] io_matrixOut_385_im,
  output [63:0] io_matrixOut_386_re,
  output [63:0] io_matrixOut_386_im,
  output [63:0] io_matrixOut_387_re,
  output [63:0] io_matrixOut_387_im,
  output [63:0] io_matrixOut_388_re,
  output [63:0] io_matrixOut_388_im,
  output [63:0] io_matrixOut_389_re,
  output [63:0] io_matrixOut_389_im,
  output [63:0] io_matrixOut_390_re,
  output [63:0] io_matrixOut_390_im,
  output [63:0] io_matrixOut_391_re,
  output [63:0] io_matrixOut_391_im,
  output [63:0] io_matrixOut_392_re,
  output [63:0] io_matrixOut_392_im,
  output [63:0] io_matrixOut_393_re,
  output [63:0] io_matrixOut_393_im,
  output [63:0] io_matrixOut_394_re,
  output [63:0] io_matrixOut_394_im,
  output [63:0] io_matrixOut_395_re,
  output [63:0] io_matrixOut_395_im,
  output [63:0] io_matrixOut_396_re,
  output [63:0] io_matrixOut_396_im,
  output [63:0] io_matrixOut_397_re,
  output [63:0] io_matrixOut_397_im,
  output [63:0] io_matrixOut_398_re,
  output [63:0] io_matrixOut_398_im,
  output [63:0] io_matrixOut_399_re,
  output [63:0] io_matrixOut_399_im,
  output [63:0] io_matrixOut_400_re,
  output [63:0] io_matrixOut_400_im,
  output [63:0] io_matrixOut_401_re,
  output [63:0] io_matrixOut_401_im,
  output [63:0] io_matrixOut_402_re,
  output [63:0] io_matrixOut_402_im,
  output [63:0] io_matrixOut_403_re,
  output [63:0] io_matrixOut_403_im,
  output [63:0] io_matrixOut_404_re,
  output [63:0] io_matrixOut_404_im,
  output [63:0] io_matrixOut_405_re,
  output [63:0] io_matrixOut_405_im,
  output [63:0] io_matrixOut_406_re,
  output [63:0] io_matrixOut_406_im,
  output [63:0] io_matrixOut_407_re,
  output [63:0] io_matrixOut_407_im,
  output [63:0] io_matrixOut_408_re,
  output [63:0] io_matrixOut_408_im,
  output [63:0] io_matrixOut_409_re,
  output [63:0] io_matrixOut_409_im,
  output [63:0] io_matrixOut_410_re,
  output [63:0] io_matrixOut_410_im,
  output [63:0] io_matrixOut_411_re,
  output [63:0] io_matrixOut_411_im,
  output [63:0] io_matrixOut_412_re,
  output [63:0] io_matrixOut_412_im,
  output [63:0] io_matrixOut_413_re,
  output [63:0] io_matrixOut_413_im,
  output [63:0] io_matrixOut_414_re,
  output [63:0] io_matrixOut_414_im,
  output [63:0] io_matrixOut_415_re,
  output [63:0] io_matrixOut_415_im,
  output [63:0] io_matrixOut_416_re,
  output [63:0] io_matrixOut_416_im,
  output [63:0] io_matrixOut_417_re,
  output [63:0] io_matrixOut_417_im,
  output [63:0] io_matrixOut_418_re,
  output [63:0] io_matrixOut_418_im,
  output [63:0] io_matrixOut_419_re,
  output [63:0] io_matrixOut_419_im,
  output [63:0] io_matrixOut_420_re,
  output [63:0] io_matrixOut_420_im,
  output [63:0] io_matrixOut_421_re,
  output [63:0] io_matrixOut_421_im,
  output [63:0] io_matrixOut_422_re,
  output [63:0] io_matrixOut_422_im,
  output [63:0] io_matrixOut_423_re,
  output [63:0] io_matrixOut_423_im,
  output [63:0] io_matrixOut_424_re,
  output [63:0] io_matrixOut_424_im,
  output [63:0] io_matrixOut_425_re,
  output [63:0] io_matrixOut_425_im,
  output [63:0] io_matrixOut_426_re,
  output [63:0] io_matrixOut_426_im,
  output [63:0] io_matrixOut_427_re,
  output [63:0] io_matrixOut_427_im,
  output [63:0] io_matrixOut_428_re,
  output [63:0] io_matrixOut_428_im,
  output [63:0] io_matrixOut_429_re,
  output [63:0] io_matrixOut_429_im,
  output [63:0] io_matrixOut_430_re,
  output [63:0] io_matrixOut_430_im,
  output [63:0] io_matrixOut_431_re,
  output [63:0] io_matrixOut_431_im,
  output [63:0] io_matrixOut_432_re,
  output [63:0] io_matrixOut_432_im,
  output [63:0] io_matrixOut_433_re,
  output [63:0] io_matrixOut_433_im,
  output [63:0] io_matrixOut_434_re,
  output [63:0] io_matrixOut_434_im,
  output [63:0] io_matrixOut_435_re,
  output [63:0] io_matrixOut_435_im,
  output [63:0] io_matrixOut_436_re,
  output [63:0] io_matrixOut_436_im,
  output [63:0] io_matrixOut_437_re,
  output [63:0] io_matrixOut_437_im,
  output [63:0] io_matrixOut_438_re,
  output [63:0] io_matrixOut_438_im,
  output [63:0] io_matrixOut_439_re,
  output [63:0] io_matrixOut_439_im,
  output [63:0] io_matrixOut_440_re,
  output [63:0] io_matrixOut_440_im,
  output [63:0] io_matrixOut_441_re,
  output [63:0] io_matrixOut_441_im,
  output [63:0] io_matrixOut_442_re,
  output [63:0] io_matrixOut_442_im,
  output [63:0] io_matrixOut_443_re,
  output [63:0] io_matrixOut_443_im,
  output [63:0] io_matrixOut_444_re,
  output [63:0] io_matrixOut_444_im,
  output [63:0] io_matrixOut_445_re,
  output [63:0] io_matrixOut_445_im,
  output [63:0] io_matrixOut_446_re,
  output [63:0] io_matrixOut_446_im,
  output [63:0] io_matrixOut_447_re,
  output [63:0] io_matrixOut_447_im,
  output [63:0] io_matrixOut_448_re,
  output [63:0] io_matrixOut_448_im,
  output [63:0] io_matrixOut_449_re,
  output [63:0] io_matrixOut_449_im,
  output [63:0] io_matrixOut_450_re,
  output [63:0] io_matrixOut_450_im,
  output [63:0] io_matrixOut_451_re,
  output [63:0] io_matrixOut_451_im,
  output [63:0] io_matrixOut_452_re,
  output [63:0] io_matrixOut_452_im,
  output [63:0] io_matrixOut_453_re,
  output [63:0] io_matrixOut_453_im,
  output [63:0] io_matrixOut_454_re,
  output [63:0] io_matrixOut_454_im,
  output [63:0] io_matrixOut_455_re,
  output [63:0] io_matrixOut_455_im,
  output [63:0] io_matrixOut_456_re,
  output [63:0] io_matrixOut_456_im,
  output [63:0] io_matrixOut_457_re,
  output [63:0] io_matrixOut_457_im,
  output [63:0] io_matrixOut_458_re,
  output [63:0] io_matrixOut_458_im,
  output [63:0] io_matrixOut_459_re,
  output [63:0] io_matrixOut_459_im,
  output [63:0] io_matrixOut_460_re,
  output [63:0] io_matrixOut_460_im,
  output [63:0] io_matrixOut_461_re,
  output [63:0] io_matrixOut_461_im,
  output [63:0] io_matrixOut_462_re,
  output [63:0] io_matrixOut_462_im,
  output [63:0] io_matrixOut_463_re,
  output [63:0] io_matrixOut_463_im,
  output [63:0] io_matrixOut_464_re,
  output [63:0] io_matrixOut_464_im,
  output [63:0] io_matrixOut_465_re,
  output [63:0] io_matrixOut_465_im,
  output [63:0] io_matrixOut_466_re,
  output [63:0] io_matrixOut_466_im,
  output [63:0] io_matrixOut_467_re,
  output [63:0] io_matrixOut_467_im,
  output [63:0] io_matrixOut_468_re,
  output [63:0] io_matrixOut_468_im,
  output [63:0] io_matrixOut_469_re,
  output [63:0] io_matrixOut_469_im,
  output [63:0] io_matrixOut_470_re,
  output [63:0] io_matrixOut_470_im,
  output [63:0] io_matrixOut_471_re,
  output [63:0] io_matrixOut_471_im,
  output [63:0] io_matrixOut_472_re,
  output [63:0] io_matrixOut_472_im,
  output [63:0] io_matrixOut_473_re,
  output [63:0] io_matrixOut_473_im,
  output [63:0] io_matrixOut_474_re,
  output [63:0] io_matrixOut_474_im,
  output [63:0] io_matrixOut_475_re,
  output [63:0] io_matrixOut_475_im,
  output [63:0] io_matrixOut_476_re,
  output [63:0] io_matrixOut_476_im,
  output [63:0] io_matrixOut_477_re,
  output [63:0] io_matrixOut_477_im,
  output [63:0] io_matrixOut_478_re,
  output [63:0] io_matrixOut_478_im,
  output [63:0] io_matrixOut_479_re,
  output [63:0] io_matrixOut_479_im,
  output [63:0] io_matrixOut_480_re,
  output [63:0] io_matrixOut_480_im,
  output [63:0] io_matrixOut_481_re,
  output [63:0] io_matrixOut_481_im,
  output [63:0] io_matrixOut_482_re,
  output [63:0] io_matrixOut_482_im,
  output [63:0] io_matrixOut_483_re,
  output [63:0] io_matrixOut_483_im,
  output [63:0] io_matrixOut_484_re,
  output [63:0] io_matrixOut_484_im,
  output [63:0] io_matrixOut_485_re,
  output [63:0] io_matrixOut_485_im,
  output [63:0] io_matrixOut_486_re,
  output [63:0] io_matrixOut_486_im,
  output [63:0] io_matrixOut_487_re,
  output [63:0] io_matrixOut_487_im,
  output [63:0] io_matrixOut_488_re,
  output [63:0] io_matrixOut_488_im,
  output [63:0] io_matrixOut_489_re,
  output [63:0] io_matrixOut_489_im,
  output [63:0] io_matrixOut_490_re,
  output [63:0] io_matrixOut_490_im,
  output [63:0] io_matrixOut_491_re,
  output [63:0] io_matrixOut_491_im,
  output [63:0] io_matrixOut_492_re,
  output [63:0] io_matrixOut_492_im,
  output [63:0] io_matrixOut_493_re,
  output [63:0] io_matrixOut_493_im,
  output [63:0] io_matrixOut_494_re,
  output [63:0] io_matrixOut_494_im,
  output [63:0] io_matrixOut_495_re,
  output [63:0] io_matrixOut_495_im,
  output [63:0] io_matrixOut_496_re,
  output [63:0] io_matrixOut_496_im,
  output [63:0] io_matrixOut_497_re,
  output [63:0] io_matrixOut_497_im,
  output [63:0] io_matrixOut_498_re,
  output [63:0] io_matrixOut_498_im,
  output [63:0] io_matrixOut_499_re,
  output [63:0] io_matrixOut_499_im,
  output [63:0] io_matrixOut_500_re,
  output [63:0] io_matrixOut_500_im,
  output [63:0] io_matrixOut_501_re,
  output [63:0] io_matrixOut_501_im,
  output [63:0] io_matrixOut_502_re,
  output [63:0] io_matrixOut_502_im,
  output [63:0] io_matrixOut_503_re,
  output [63:0] io_matrixOut_503_im,
  output [63:0] io_matrixOut_504_re,
  output [63:0] io_matrixOut_504_im,
  output [63:0] io_matrixOut_505_re,
  output [63:0] io_matrixOut_505_im,
  output [63:0] io_matrixOut_506_re,
  output [63:0] io_matrixOut_506_im,
  output [63:0] io_matrixOut_507_re,
  output [63:0] io_matrixOut_507_im,
  output [63:0] io_matrixOut_508_re,
  output [63:0] io_matrixOut_508_im,
  output [63:0] io_matrixOut_509_re,
  output [63:0] io_matrixOut_509_im,
  output [63:0] io_matrixOut_510_re,
  output [63:0] io_matrixOut_510_im,
  output [63:0] io_matrixOut_511_re,
  output [63:0] io_matrixOut_511_im,
  output [63:0] io_matrixOut_512_re,
  output [63:0] io_matrixOut_512_im,
  output [63:0] io_matrixOut_513_re,
  output [63:0] io_matrixOut_513_im,
  output [63:0] io_matrixOut_514_re,
  output [63:0] io_matrixOut_514_im,
  output [63:0] io_matrixOut_515_re,
  output [63:0] io_matrixOut_515_im,
  output [63:0] io_matrixOut_516_re,
  output [63:0] io_matrixOut_516_im,
  output [63:0] io_matrixOut_517_re,
  output [63:0] io_matrixOut_517_im,
  output [63:0] io_matrixOut_518_re,
  output [63:0] io_matrixOut_518_im,
  output [63:0] io_matrixOut_519_re,
  output [63:0] io_matrixOut_519_im,
  output [63:0] io_matrixOut_520_re,
  output [63:0] io_matrixOut_520_im,
  output [63:0] io_matrixOut_521_re,
  output [63:0] io_matrixOut_521_im,
  output [63:0] io_matrixOut_522_re,
  output [63:0] io_matrixOut_522_im,
  output [63:0] io_matrixOut_523_re,
  output [63:0] io_matrixOut_523_im,
  output [63:0] io_matrixOut_524_re,
  output [63:0] io_matrixOut_524_im,
  output [63:0] io_matrixOut_525_re,
  output [63:0] io_matrixOut_525_im,
  output [63:0] io_matrixOut_526_re,
  output [63:0] io_matrixOut_526_im,
  output [63:0] io_matrixOut_527_re,
  output [63:0] io_matrixOut_527_im,
  output [63:0] io_matrixOut_528_re,
  output [63:0] io_matrixOut_528_im,
  output [63:0] io_matrixOut_529_re,
  output [63:0] io_matrixOut_529_im,
  output [63:0] io_matrixOut_530_re,
  output [63:0] io_matrixOut_530_im,
  output [63:0] io_matrixOut_531_re,
  output [63:0] io_matrixOut_531_im,
  output [63:0] io_matrixOut_532_re,
  output [63:0] io_matrixOut_532_im,
  output [63:0] io_matrixOut_533_re,
  output [63:0] io_matrixOut_533_im,
  output [63:0] io_matrixOut_534_re,
  output [63:0] io_matrixOut_534_im,
  output [63:0] io_matrixOut_535_re,
  output [63:0] io_matrixOut_535_im,
  output [63:0] io_matrixOut_536_re,
  output [63:0] io_matrixOut_536_im,
  output [63:0] io_matrixOut_537_re,
  output [63:0] io_matrixOut_537_im,
  output [63:0] io_matrixOut_538_re,
  output [63:0] io_matrixOut_538_im,
  output [63:0] io_matrixOut_539_re,
  output [63:0] io_matrixOut_539_im,
  output [63:0] io_matrixOut_540_re,
  output [63:0] io_matrixOut_540_im,
  output [63:0] io_matrixOut_541_re,
  output [63:0] io_matrixOut_541_im,
  output [63:0] io_matrixOut_542_re,
  output [63:0] io_matrixOut_542_im,
  output [63:0] io_matrixOut_543_re,
  output [63:0] io_matrixOut_543_im,
  output [63:0] io_matrixOut_544_re,
  output [63:0] io_matrixOut_544_im,
  output [63:0] io_matrixOut_545_re,
  output [63:0] io_matrixOut_545_im,
  output [63:0] io_matrixOut_546_re,
  output [63:0] io_matrixOut_546_im,
  output [63:0] io_matrixOut_547_re,
  output [63:0] io_matrixOut_547_im,
  output [63:0] io_matrixOut_548_re,
  output [63:0] io_matrixOut_548_im,
  output [63:0] io_matrixOut_549_re,
  output [63:0] io_matrixOut_549_im,
  output [63:0] io_matrixOut_550_re,
  output [63:0] io_matrixOut_550_im,
  output [63:0] io_matrixOut_551_re,
  output [63:0] io_matrixOut_551_im,
  output [63:0] io_matrixOut_552_re,
  output [63:0] io_matrixOut_552_im,
  output [63:0] io_matrixOut_553_re,
  output [63:0] io_matrixOut_553_im,
  output [63:0] io_matrixOut_554_re,
  output [63:0] io_matrixOut_554_im,
  output [63:0] io_matrixOut_555_re,
  output [63:0] io_matrixOut_555_im,
  output [63:0] io_matrixOut_556_re,
  output [63:0] io_matrixOut_556_im,
  output [63:0] io_matrixOut_557_re,
  output [63:0] io_matrixOut_557_im,
  output [63:0] io_matrixOut_558_re,
  output [63:0] io_matrixOut_558_im,
  output [63:0] io_matrixOut_559_re,
  output [63:0] io_matrixOut_559_im,
  output [63:0] io_matrixOut_560_re,
  output [63:0] io_matrixOut_560_im,
  output [63:0] io_matrixOut_561_re,
  output [63:0] io_matrixOut_561_im,
  output [63:0] io_matrixOut_562_re,
  output [63:0] io_matrixOut_562_im,
  output [63:0] io_matrixOut_563_re,
  output [63:0] io_matrixOut_563_im,
  output [63:0] io_matrixOut_564_re,
  output [63:0] io_matrixOut_564_im,
  output [63:0] io_matrixOut_565_re,
  output [63:0] io_matrixOut_565_im,
  output [63:0] io_matrixOut_566_re,
  output [63:0] io_matrixOut_566_im,
  output [63:0] io_matrixOut_567_re,
  output [63:0] io_matrixOut_567_im,
  output [63:0] io_matrixOut_568_re,
  output [63:0] io_matrixOut_568_im,
  output [63:0] io_matrixOut_569_re,
  output [63:0] io_matrixOut_569_im,
  output [63:0] io_matrixOut_570_re,
  output [63:0] io_matrixOut_570_im,
  output [63:0] io_matrixOut_571_re,
  output [63:0] io_matrixOut_571_im,
  output [63:0] io_matrixOut_572_re,
  output [63:0] io_matrixOut_572_im,
  output [63:0] io_matrixOut_573_re,
  output [63:0] io_matrixOut_573_im,
  output [63:0] io_matrixOut_574_re,
  output [63:0] io_matrixOut_574_im,
  output [63:0] io_matrixOut_575_re,
  output [63:0] io_matrixOut_575_im,
  output [63:0] io_matrixOut_576_re,
  output [63:0] io_matrixOut_576_im,
  output [63:0] io_matrixOut_577_re,
  output [63:0] io_matrixOut_577_im,
  output [63:0] io_matrixOut_578_re,
  output [63:0] io_matrixOut_578_im,
  output [63:0] io_matrixOut_579_re,
  output [63:0] io_matrixOut_579_im,
  output [63:0] io_matrixOut_580_re,
  output [63:0] io_matrixOut_580_im,
  output [63:0] io_matrixOut_581_re,
  output [63:0] io_matrixOut_581_im,
  output [63:0] io_matrixOut_582_re,
  output [63:0] io_matrixOut_582_im,
  output [63:0] io_matrixOut_583_re,
  output [63:0] io_matrixOut_583_im,
  output [63:0] io_matrixOut_584_re,
  output [63:0] io_matrixOut_584_im,
  output [63:0] io_matrixOut_585_re,
  output [63:0] io_matrixOut_585_im,
  output [63:0] io_matrixOut_586_re,
  output [63:0] io_matrixOut_586_im,
  output [63:0] io_matrixOut_587_re,
  output [63:0] io_matrixOut_587_im,
  output [63:0] io_matrixOut_588_re,
  output [63:0] io_matrixOut_588_im,
  output [63:0] io_matrixOut_589_re,
  output [63:0] io_matrixOut_589_im,
  output [63:0] io_matrixOut_590_re,
  output [63:0] io_matrixOut_590_im,
  output [63:0] io_matrixOut_591_re,
  output [63:0] io_matrixOut_591_im,
  output [63:0] io_matrixOut_592_re,
  output [63:0] io_matrixOut_592_im,
  output [63:0] io_matrixOut_593_re,
  output [63:0] io_matrixOut_593_im,
  output [63:0] io_matrixOut_594_re,
  output [63:0] io_matrixOut_594_im,
  output [63:0] io_matrixOut_595_re,
  output [63:0] io_matrixOut_595_im,
  output [63:0] io_matrixOut_596_re,
  output [63:0] io_matrixOut_596_im,
  output [63:0] io_matrixOut_597_re,
  output [63:0] io_matrixOut_597_im,
  output [63:0] io_matrixOut_598_re,
  output [63:0] io_matrixOut_598_im,
  output [63:0] io_matrixOut_599_re,
  output [63:0] io_matrixOut_599_im,
  output [63:0] io_matrixOut_600_re,
  output [63:0] io_matrixOut_600_im,
  output [63:0] io_matrixOut_601_re,
  output [63:0] io_matrixOut_601_im,
  output [63:0] io_matrixOut_602_re,
  output [63:0] io_matrixOut_602_im,
  output [63:0] io_matrixOut_603_re,
  output [63:0] io_matrixOut_603_im,
  output [63:0] io_matrixOut_604_re,
  output [63:0] io_matrixOut_604_im,
  output [63:0] io_matrixOut_605_re,
  output [63:0] io_matrixOut_605_im,
  output [63:0] io_matrixOut_606_re,
  output [63:0] io_matrixOut_606_im,
  output [63:0] io_matrixOut_607_re,
  output [63:0] io_matrixOut_607_im,
  output [63:0] io_matrixOut_608_re,
  output [63:0] io_matrixOut_608_im,
  output [63:0] io_matrixOut_609_re,
  output [63:0] io_matrixOut_609_im,
  output [63:0] io_matrixOut_610_re,
  output [63:0] io_matrixOut_610_im,
  output [63:0] io_matrixOut_611_re,
  output [63:0] io_matrixOut_611_im,
  output [63:0] io_matrixOut_612_re,
  output [63:0] io_matrixOut_612_im,
  output [63:0] io_matrixOut_613_re,
  output [63:0] io_matrixOut_613_im,
  output [63:0] io_matrixOut_614_re,
  output [63:0] io_matrixOut_614_im,
  output [63:0] io_matrixOut_615_re,
  output [63:0] io_matrixOut_615_im,
  output [63:0] io_matrixOut_616_re,
  output [63:0] io_matrixOut_616_im,
  output [63:0] io_matrixOut_617_re,
  output [63:0] io_matrixOut_617_im,
  output [63:0] io_matrixOut_618_re,
  output [63:0] io_matrixOut_618_im,
  output [63:0] io_matrixOut_619_re,
  output [63:0] io_matrixOut_619_im,
  output [63:0] io_matrixOut_620_re,
  output [63:0] io_matrixOut_620_im,
  output [63:0] io_matrixOut_621_re,
  output [63:0] io_matrixOut_621_im,
  output [63:0] io_matrixOut_622_re,
  output [63:0] io_matrixOut_622_im,
  output [63:0] io_matrixOut_623_re,
  output [63:0] io_matrixOut_623_im,
  output [63:0] io_matrixOut_624_re,
  output [63:0] io_matrixOut_624_im
);
  wire [63:0] unit_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_1_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_2_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_3_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_4_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_5_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_6_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_7_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_8_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_9_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_10_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_11_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_12_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_13_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_14_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_15_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_16_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_17_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_18_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_19_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_20_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_21_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_22_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_23_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixIn_24_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_valueIn_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_valueIn_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_0_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_0_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_1_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_1_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_2_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_2_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_3_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_3_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_4_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_4_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_5_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_5_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_6_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_6_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_7_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_7_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_8_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_8_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_9_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_9_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_10_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_10_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_11_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_11_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_12_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_12_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_13_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_13_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_14_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_14_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_15_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_15_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_16_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_16_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_17_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_17_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_18_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_18_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_19_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_19_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_20_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_20_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_21_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_21_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_22_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_22_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_23_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_23_im; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_24_re; // @[Kronecker_V1.scala 39:22]
  wire [63:0] unit_24_io_matrixOut_24_im; // @[Kronecker_V1.scala 39:22]
  matrix_vlaue_mul unit ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_io_matrixIn_24_im),
    .io_valueIn_re(unit_io_valueIn_re),
    .io_valueIn_im(unit_io_valueIn_im),
    .io_matrixOut_0_re(unit_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_1 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_1_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_1_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_1_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_1_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_1_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_1_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_1_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_1_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_1_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_1_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_1_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_1_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_1_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_1_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_1_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_1_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_1_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_1_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_1_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_1_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_1_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_1_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_1_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_1_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_1_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_1_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_1_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_1_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_1_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_1_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_1_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_1_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_1_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_1_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_1_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_1_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_1_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_1_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_1_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_1_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_1_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_1_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_1_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_1_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_1_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_1_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_1_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_1_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_1_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_1_io_matrixIn_24_im),
    .io_valueIn_re(unit_1_io_valueIn_re),
    .io_valueIn_im(unit_1_io_valueIn_im),
    .io_matrixOut_0_re(unit_1_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_1_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_1_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_1_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_1_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_1_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_1_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_1_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_1_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_1_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_1_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_1_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_1_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_1_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_1_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_1_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_1_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_1_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_1_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_1_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_1_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_1_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_1_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_1_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_1_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_1_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_1_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_1_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_1_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_1_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_1_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_1_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_1_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_1_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_1_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_1_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_1_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_1_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_1_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_1_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_1_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_1_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_1_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_1_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_1_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_1_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_1_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_1_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_1_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_1_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_2 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_2_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_2_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_2_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_2_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_2_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_2_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_2_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_2_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_2_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_2_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_2_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_2_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_2_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_2_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_2_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_2_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_2_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_2_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_2_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_2_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_2_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_2_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_2_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_2_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_2_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_2_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_2_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_2_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_2_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_2_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_2_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_2_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_2_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_2_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_2_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_2_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_2_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_2_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_2_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_2_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_2_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_2_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_2_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_2_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_2_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_2_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_2_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_2_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_2_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_2_io_matrixIn_24_im),
    .io_valueIn_re(unit_2_io_valueIn_re),
    .io_valueIn_im(unit_2_io_valueIn_im),
    .io_matrixOut_0_re(unit_2_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_2_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_2_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_2_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_2_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_2_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_2_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_2_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_2_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_2_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_2_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_2_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_2_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_2_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_2_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_2_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_2_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_2_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_2_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_2_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_2_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_2_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_2_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_2_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_2_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_2_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_2_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_2_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_2_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_2_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_2_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_2_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_2_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_2_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_2_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_2_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_2_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_2_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_2_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_2_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_2_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_2_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_2_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_2_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_2_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_2_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_2_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_2_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_2_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_2_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_3 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_3_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_3_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_3_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_3_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_3_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_3_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_3_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_3_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_3_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_3_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_3_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_3_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_3_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_3_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_3_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_3_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_3_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_3_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_3_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_3_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_3_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_3_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_3_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_3_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_3_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_3_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_3_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_3_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_3_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_3_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_3_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_3_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_3_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_3_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_3_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_3_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_3_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_3_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_3_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_3_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_3_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_3_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_3_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_3_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_3_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_3_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_3_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_3_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_3_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_3_io_matrixIn_24_im),
    .io_valueIn_re(unit_3_io_valueIn_re),
    .io_valueIn_im(unit_3_io_valueIn_im),
    .io_matrixOut_0_re(unit_3_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_3_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_3_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_3_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_3_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_3_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_3_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_3_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_3_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_3_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_3_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_3_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_3_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_3_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_3_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_3_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_3_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_3_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_3_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_3_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_3_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_3_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_3_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_3_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_3_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_3_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_3_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_3_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_3_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_3_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_3_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_3_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_3_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_3_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_3_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_3_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_3_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_3_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_3_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_3_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_3_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_3_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_3_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_3_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_3_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_3_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_3_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_3_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_3_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_3_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_4 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_4_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_4_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_4_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_4_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_4_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_4_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_4_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_4_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_4_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_4_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_4_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_4_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_4_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_4_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_4_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_4_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_4_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_4_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_4_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_4_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_4_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_4_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_4_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_4_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_4_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_4_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_4_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_4_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_4_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_4_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_4_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_4_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_4_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_4_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_4_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_4_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_4_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_4_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_4_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_4_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_4_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_4_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_4_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_4_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_4_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_4_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_4_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_4_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_4_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_4_io_matrixIn_24_im),
    .io_valueIn_re(unit_4_io_valueIn_re),
    .io_valueIn_im(unit_4_io_valueIn_im),
    .io_matrixOut_0_re(unit_4_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_4_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_4_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_4_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_4_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_4_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_4_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_4_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_4_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_4_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_4_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_4_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_4_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_4_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_4_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_4_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_4_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_4_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_4_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_4_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_4_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_4_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_4_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_4_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_4_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_4_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_4_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_4_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_4_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_4_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_4_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_4_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_4_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_4_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_4_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_4_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_4_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_4_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_4_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_4_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_4_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_4_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_4_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_4_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_4_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_4_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_4_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_4_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_4_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_4_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_5 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_5_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_5_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_5_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_5_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_5_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_5_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_5_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_5_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_5_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_5_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_5_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_5_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_5_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_5_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_5_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_5_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_5_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_5_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_5_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_5_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_5_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_5_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_5_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_5_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_5_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_5_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_5_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_5_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_5_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_5_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_5_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_5_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_5_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_5_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_5_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_5_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_5_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_5_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_5_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_5_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_5_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_5_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_5_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_5_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_5_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_5_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_5_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_5_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_5_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_5_io_matrixIn_24_im),
    .io_valueIn_re(unit_5_io_valueIn_re),
    .io_valueIn_im(unit_5_io_valueIn_im),
    .io_matrixOut_0_re(unit_5_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_5_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_5_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_5_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_5_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_5_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_5_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_5_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_5_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_5_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_5_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_5_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_5_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_5_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_5_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_5_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_5_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_5_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_5_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_5_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_5_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_5_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_5_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_5_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_5_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_5_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_5_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_5_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_5_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_5_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_5_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_5_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_5_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_5_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_5_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_5_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_5_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_5_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_5_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_5_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_5_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_5_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_5_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_5_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_5_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_5_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_5_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_5_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_5_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_5_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_6 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_6_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_6_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_6_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_6_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_6_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_6_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_6_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_6_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_6_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_6_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_6_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_6_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_6_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_6_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_6_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_6_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_6_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_6_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_6_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_6_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_6_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_6_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_6_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_6_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_6_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_6_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_6_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_6_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_6_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_6_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_6_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_6_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_6_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_6_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_6_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_6_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_6_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_6_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_6_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_6_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_6_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_6_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_6_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_6_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_6_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_6_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_6_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_6_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_6_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_6_io_matrixIn_24_im),
    .io_valueIn_re(unit_6_io_valueIn_re),
    .io_valueIn_im(unit_6_io_valueIn_im),
    .io_matrixOut_0_re(unit_6_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_6_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_6_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_6_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_6_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_6_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_6_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_6_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_6_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_6_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_6_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_6_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_6_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_6_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_6_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_6_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_6_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_6_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_6_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_6_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_6_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_6_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_6_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_6_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_6_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_6_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_6_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_6_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_6_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_6_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_6_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_6_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_6_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_6_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_6_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_6_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_6_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_6_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_6_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_6_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_6_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_6_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_6_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_6_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_6_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_6_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_6_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_6_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_6_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_6_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_7 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_7_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_7_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_7_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_7_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_7_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_7_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_7_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_7_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_7_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_7_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_7_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_7_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_7_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_7_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_7_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_7_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_7_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_7_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_7_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_7_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_7_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_7_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_7_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_7_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_7_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_7_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_7_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_7_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_7_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_7_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_7_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_7_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_7_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_7_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_7_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_7_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_7_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_7_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_7_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_7_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_7_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_7_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_7_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_7_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_7_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_7_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_7_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_7_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_7_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_7_io_matrixIn_24_im),
    .io_valueIn_re(unit_7_io_valueIn_re),
    .io_valueIn_im(unit_7_io_valueIn_im),
    .io_matrixOut_0_re(unit_7_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_7_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_7_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_7_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_7_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_7_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_7_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_7_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_7_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_7_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_7_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_7_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_7_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_7_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_7_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_7_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_7_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_7_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_7_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_7_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_7_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_7_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_7_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_7_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_7_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_7_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_7_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_7_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_7_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_7_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_7_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_7_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_7_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_7_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_7_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_7_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_7_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_7_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_7_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_7_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_7_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_7_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_7_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_7_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_7_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_7_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_7_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_7_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_7_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_7_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_8 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_8_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_8_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_8_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_8_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_8_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_8_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_8_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_8_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_8_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_8_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_8_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_8_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_8_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_8_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_8_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_8_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_8_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_8_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_8_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_8_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_8_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_8_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_8_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_8_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_8_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_8_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_8_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_8_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_8_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_8_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_8_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_8_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_8_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_8_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_8_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_8_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_8_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_8_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_8_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_8_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_8_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_8_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_8_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_8_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_8_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_8_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_8_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_8_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_8_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_8_io_matrixIn_24_im),
    .io_valueIn_re(unit_8_io_valueIn_re),
    .io_valueIn_im(unit_8_io_valueIn_im),
    .io_matrixOut_0_re(unit_8_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_8_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_8_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_8_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_8_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_8_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_8_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_8_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_8_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_8_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_8_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_8_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_8_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_8_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_8_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_8_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_8_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_8_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_8_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_8_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_8_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_8_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_8_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_8_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_8_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_8_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_8_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_8_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_8_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_8_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_8_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_8_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_8_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_8_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_8_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_8_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_8_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_8_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_8_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_8_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_8_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_8_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_8_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_8_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_8_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_8_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_8_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_8_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_8_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_8_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_9 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_9_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_9_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_9_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_9_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_9_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_9_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_9_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_9_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_9_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_9_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_9_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_9_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_9_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_9_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_9_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_9_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_9_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_9_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_9_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_9_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_9_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_9_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_9_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_9_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_9_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_9_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_9_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_9_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_9_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_9_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_9_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_9_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_9_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_9_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_9_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_9_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_9_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_9_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_9_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_9_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_9_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_9_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_9_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_9_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_9_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_9_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_9_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_9_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_9_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_9_io_matrixIn_24_im),
    .io_valueIn_re(unit_9_io_valueIn_re),
    .io_valueIn_im(unit_9_io_valueIn_im),
    .io_matrixOut_0_re(unit_9_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_9_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_9_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_9_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_9_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_9_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_9_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_9_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_9_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_9_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_9_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_9_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_9_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_9_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_9_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_9_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_9_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_9_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_9_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_9_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_9_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_9_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_9_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_9_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_9_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_9_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_9_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_9_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_9_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_9_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_9_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_9_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_9_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_9_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_9_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_9_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_9_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_9_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_9_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_9_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_9_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_9_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_9_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_9_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_9_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_9_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_9_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_9_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_9_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_9_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_10 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_10_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_10_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_10_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_10_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_10_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_10_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_10_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_10_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_10_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_10_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_10_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_10_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_10_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_10_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_10_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_10_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_10_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_10_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_10_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_10_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_10_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_10_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_10_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_10_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_10_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_10_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_10_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_10_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_10_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_10_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_10_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_10_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_10_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_10_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_10_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_10_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_10_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_10_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_10_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_10_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_10_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_10_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_10_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_10_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_10_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_10_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_10_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_10_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_10_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_10_io_matrixIn_24_im),
    .io_valueIn_re(unit_10_io_valueIn_re),
    .io_valueIn_im(unit_10_io_valueIn_im),
    .io_matrixOut_0_re(unit_10_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_10_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_10_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_10_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_10_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_10_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_10_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_10_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_10_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_10_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_10_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_10_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_10_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_10_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_10_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_10_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_10_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_10_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_10_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_10_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_10_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_10_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_10_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_10_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_10_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_10_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_10_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_10_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_10_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_10_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_10_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_10_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_10_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_10_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_10_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_10_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_10_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_10_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_10_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_10_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_10_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_10_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_10_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_10_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_10_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_10_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_10_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_10_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_10_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_10_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_11 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_11_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_11_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_11_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_11_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_11_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_11_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_11_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_11_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_11_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_11_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_11_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_11_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_11_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_11_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_11_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_11_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_11_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_11_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_11_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_11_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_11_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_11_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_11_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_11_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_11_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_11_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_11_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_11_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_11_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_11_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_11_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_11_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_11_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_11_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_11_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_11_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_11_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_11_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_11_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_11_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_11_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_11_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_11_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_11_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_11_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_11_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_11_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_11_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_11_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_11_io_matrixIn_24_im),
    .io_valueIn_re(unit_11_io_valueIn_re),
    .io_valueIn_im(unit_11_io_valueIn_im),
    .io_matrixOut_0_re(unit_11_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_11_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_11_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_11_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_11_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_11_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_11_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_11_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_11_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_11_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_11_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_11_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_11_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_11_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_11_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_11_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_11_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_11_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_11_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_11_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_11_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_11_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_11_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_11_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_11_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_11_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_11_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_11_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_11_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_11_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_11_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_11_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_11_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_11_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_11_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_11_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_11_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_11_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_11_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_11_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_11_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_11_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_11_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_11_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_11_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_11_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_11_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_11_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_11_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_11_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_12 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_12_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_12_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_12_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_12_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_12_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_12_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_12_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_12_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_12_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_12_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_12_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_12_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_12_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_12_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_12_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_12_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_12_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_12_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_12_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_12_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_12_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_12_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_12_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_12_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_12_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_12_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_12_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_12_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_12_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_12_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_12_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_12_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_12_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_12_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_12_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_12_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_12_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_12_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_12_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_12_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_12_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_12_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_12_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_12_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_12_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_12_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_12_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_12_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_12_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_12_io_matrixIn_24_im),
    .io_valueIn_re(unit_12_io_valueIn_re),
    .io_valueIn_im(unit_12_io_valueIn_im),
    .io_matrixOut_0_re(unit_12_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_12_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_12_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_12_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_12_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_12_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_12_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_12_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_12_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_12_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_12_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_12_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_12_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_12_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_12_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_12_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_12_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_12_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_12_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_12_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_12_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_12_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_12_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_12_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_12_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_12_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_12_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_12_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_12_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_12_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_12_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_12_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_12_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_12_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_12_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_12_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_12_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_12_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_12_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_12_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_12_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_12_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_12_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_12_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_12_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_12_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_12_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_12_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_12_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_12_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_13 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_13_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_13_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_13_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_13_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_13_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_13_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_13_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_13_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_13_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_13_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_13_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_13_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_13_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_13_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_13_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_13_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_13_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_13_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_13_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_13_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_13_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_13_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_13_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_13_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_13_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_13_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_13_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_13_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_13_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_13_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_13_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_13_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_13_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_13_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_13_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_13_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_13_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_13_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_13_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_13_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_13_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_13_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_13_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_13_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_13_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_13_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_13_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_13_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_13_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_13_io_matrixIn_24_im),
    .io_valueIn_re(unit_13_io_valueIn_re),
    .io_valueIn_im(unit_13_io_valueIn_im),
    .io_matrixOut_0_re(unit_13_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_13_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_13_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_13_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_13_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_13_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_13_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_13_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_13_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_13_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_13_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_13_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_13_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_13_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_13_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_13_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_13_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_13_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_13_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_13_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_13_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_13_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_13_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_13_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_13_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_13_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_13_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_13_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_13_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_13_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_13_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_13_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_13_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_13_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_13_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_13_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_13_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_13_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_13_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_13_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_13_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_13_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_13_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_13_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_13_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_13_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_13_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_13_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_13_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_13_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_14 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_14_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_14_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_14_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_14_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_14_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_14_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_14_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_14_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_14_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_14_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_14_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_14_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_14_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_14_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_14_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_14_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_14_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_14_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_14_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_14_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_14_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_14_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_14_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_14_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_14_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_14_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_14_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_14_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_14_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_14_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_14_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_14_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_14_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_14_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_14_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_14_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_14_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_14_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_14_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_14_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_14_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_14_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_14_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_14_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_14_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_14_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_14_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_14_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_14_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_14_io_matrixIn_24_im),
    .io_valueIn_re(unit_14_io_valueIn_re),
    .io_valueIn_im(unit_14_io_valueIn_im),
    .io_matrixOut_0_re(unit_14_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_14_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_14_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_14_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_14_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_14_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_14_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_14_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_14_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_14_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_14_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_14_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_14_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_14_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_14_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_14_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_14_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_14_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_14_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_14_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_14_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_14_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_14_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_14_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_14_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_14_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_14_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_14_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_14_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_14_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_14_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_14_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_14_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_14_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_14_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_14_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_14_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_14_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_14_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_14_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_14_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_14_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_14_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_14_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_14_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_14_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_14_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_14_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_14_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_14_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_15 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_15_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_15_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_15_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_15_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_15_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_15_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_15_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_15_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_15_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_15_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_15_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_15_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_15_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_15_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_15_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_15_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_15_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_15_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_15_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_15_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_15_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_15_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_15_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_15_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_15_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_15_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_15_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_15_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_15_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_15_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_15_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_15_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_15_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_15_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_15_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_15_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_15_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_15_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_15_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_15_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_15_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_15_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_15_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_15_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_15_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_15_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_15_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_15_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_15_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_15_io_matrixIn_24_im),
    .io_valueIn_re(unit_15_io_valueIn_re),
    .io_valueIn_im(unit_15_io_valueIn_im),
    .io_matrixOut_0_re(unit_15_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_15_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_15_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_15_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_15_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_15_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_15_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_15_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_15_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_15_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_15_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_15_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_15_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_15_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_15_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_15_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_15_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_15_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_15_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_15_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_15_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_15_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_15_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_15_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_15_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_15_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_15_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_15_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_15_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_15_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_15_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_15_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_15_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_15_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_15_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_15_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_15_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_15_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_15_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_15_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_15_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_15_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_15_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_15_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_15_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_15_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_15_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_15_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_15_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_15_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_16 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_16_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_16_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_16_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_16_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_16_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_16_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_16_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_16_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_16_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_16_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_16_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_16_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_16_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_16_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_16_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_16_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_16_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_16_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_16_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_16_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_16_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_16_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_16_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_16_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_16_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_16_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_16_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_16_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_16_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_16_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_16_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_16_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_16_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_16_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_16_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_16_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_16_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_16_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_16_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_16_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_16_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_16_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_16_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_16_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_16_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_16_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_16_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_16_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_16_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_16_io_matrixIn_24_im),
    .io_valueIn_re(unit_16_io_valueIn_re),
    .io_valueIn_im(unit_16_io_valueIn_im),
    .io_matrixOut_0_re(unit_16_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_16_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_16_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_16_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_16_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_16_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_16_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_16_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_16_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_16_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_16_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_16_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_16_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_16_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_16_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_16_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_16_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_16_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_16_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_16_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_16_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_16_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_16_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_16_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_16_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_16_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_16_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_16_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_16_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_16_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_16_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_16_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_16_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_16_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_16_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_16_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_16_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_16_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_16_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_16_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_16_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_16_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_16_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_16_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_16_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_16_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_16_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_16_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_16_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_16_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_17 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_17_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_17_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_17_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_17_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_17_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_17_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_17_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_17_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_17_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_17_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_17_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_17_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_17_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_17_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_17_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_17_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_17_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_17_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_17_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_17_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_17_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_17_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_17_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_17_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_17_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_17_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_17_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_17_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_17_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_17_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_17_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_17_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_17_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_17_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_17_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_17_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_17_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_17_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_17_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_17_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_17_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_17_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_17_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_17_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_17_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_17_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_17_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_17_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_17_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_17_io_matrixIn_24_im),
    .io_valueIn_re(unit_17_io_valueIn_re),
    .io_valueIn_im(unit_17_io_valueIn_im),
    .io_matrixOut_0_re(unit_17_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_17_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_17_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_17_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_17_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_17_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_17_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_17_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_17_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_17_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_17_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_17_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_17_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_17_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_17_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_17_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_17_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_17_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_17_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_17_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_17_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_17_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_17_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_17_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_17_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_17_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_17_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_17_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_17_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_17_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_17_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_17_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_17_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_17_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_17_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_17_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_17_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_17_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_17_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_17_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_17_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_17_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_17_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_17_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_17_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_17_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_17_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_17_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_17_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_17_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_18 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_18_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_18_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_18_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_18_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_18_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_18_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_18_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_18_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_18_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_18_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_18_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_18_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_18_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_18_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_18_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_18_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_18_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_18_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_18_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_18_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_18_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_18_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_18_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_18_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_18_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_18_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_18_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_18_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_18_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_18_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_18_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_18_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_18_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_18_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_18_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_18_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_18_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_18_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_18_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_18_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_18_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_18_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_18_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_18_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_18_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_18_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_18_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_18_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_18_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_18_io_matrixIn_24_im),
    .io_valueIn_re(unit_18_io_valueIn_re),
    .io_valueIn_im(unit_18_io_valueIn_im),
    .io_matrixOut_0_re(unit_18_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_18_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_18_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_18_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_18_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_18_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_18_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_18_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_18_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_18_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_18_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_18_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_18_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_18_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_18_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_18_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_18_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_18_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_18_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_18_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_18_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_18_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_18_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_18_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_18_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_18_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_18_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_18_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_18_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_18_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_18_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_18_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_18_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_18_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_18_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_18_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_18_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_18_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_18_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_18_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_18_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_18_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_18_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_18_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_18_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_18_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_18_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_18_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_18_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_18_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_19 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_19_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_19_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_19_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_19_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_19_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_19_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_19_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_19_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_19_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_19_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_19_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_19_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_19_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_19_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_19_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_19_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_19_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_19_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_19_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_19_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_19_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_19_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_19_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_19_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_19_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_19_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_19_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_19_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_19_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_19_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_19_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_19_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_19_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_19_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_19_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_19_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_19_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_19_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_19_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_19_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_19_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_19_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_19_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_19_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_19_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_19_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_19_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_19_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_19_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_19_io_matrixIn_24_im),
    .io_valueIn_re(unit_19_io_valueIn_re),
    .io_valueIn_im(unit_19_io_valueIn_im),
    .io_matrixOut_0_re(unit_19_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_19_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_19_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_19_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_19_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_19_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_19_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_19_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_19_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_19_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_19_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_19_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_19_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_19_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_19_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_19_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_19_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_19_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_19_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_19_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_19_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_19_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_19_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_19_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_19_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_19_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_19_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_19_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_19_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_19_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_19_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_19_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_19_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_19_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_19_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_19_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_19_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_19_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_19_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_19_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_19_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_19_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_19_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_19_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_19_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_19_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_19_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_19_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_19_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_19_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_20 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_20_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_20_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_20_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_20_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_20_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_20_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_20_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_20_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_20_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_20_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_20_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_20_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_20_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_20_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_20_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_20_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_20_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_20_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_20_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_20_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_20_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_20_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_20_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_20_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_20_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_20_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_20_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_20_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_20_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_20_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_20_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_20_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_20_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_20_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_20_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_20_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_20_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_20_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_20_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_20_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_20_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_20_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_20_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_20_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_20_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_20_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_20_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_20_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_20_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_20_io_matrixIn_24_im),
    .io_valueIn_re(unit_20_io_valueIn_re),
    .io_valueIn_im(unit_20_io_valueIn_im),
    .io_matrixOut_0_re(unit_20_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_20_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_20_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_20_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_20_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_20_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_20_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_20_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_20_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_20_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_20_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_20_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_20_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_20_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_20_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_20_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_20_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_20_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_20_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_20_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_20_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_20_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_20_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_20_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_20_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_20_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_20_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_20_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_20_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_20_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_20_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_20_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_20_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_20_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_20_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_20_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_20_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_20_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_20_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_20_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_20_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_20_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_20_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_20_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_20_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_20_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_20_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_20_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_20_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_20_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_21 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_21_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_21_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_21_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_21_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_21_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_21_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_21_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_21_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_21_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_21_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_21_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_21_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_21_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_21_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_21_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_21_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_21_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_21_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_21_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_21_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_21_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_21_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_21_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_21_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_21_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_21_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_21_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_21_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_21_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_21_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_21_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_21_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_21_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_21_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_21_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_21_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_21_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_21_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_21_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_21_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_21_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_21_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_21_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_21_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_21_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_21_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_21_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_21_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_21_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_21_io_matrixIn_24_im),
    .io_valueIn_re(unit_21_io_valueIn_re),
    .io_valueIn_im(unit_21_io_valueIn_im),
    .io_matrixOut_0_re(unit_21_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_21_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_21_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_21_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_21_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_21_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_21_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_21_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_21_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_21_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_21_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_21_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_21_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_21_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_21_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_21_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_21_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_21_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_21_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_21_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_21_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_21_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_21_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_21_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_21_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_21_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_21_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_21_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_21_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_21_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_21_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_21_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_21_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_21_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_21_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_21_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_21_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_21_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_21_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_21_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_21_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_21_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_21_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_21_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_21_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_21_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_21_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_21_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_21_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_21_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_22 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_22_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_22_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_22_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_22_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_22_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_22_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_22_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_22_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_22_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_22_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_22_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_22_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_22_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_22_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_22_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_22_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_22_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_22_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_22_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_22_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_22_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_22_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_22_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_22_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_22_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_22_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_22_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_22_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_22_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_22_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_22_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_22_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_22_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_22_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_22_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_22_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_22_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_22_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_22_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_22_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_22_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_22_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_22_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_22_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_22_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_22_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_22_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_22_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_22_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_22_io_matrixIn_24_im),
    .io_valueIn_re(unit_22_io_valueIn_re),
    .io_valueIn_im(unit_22_io_valueIn_im),
    .io_matrixOut_0_re(unit_22_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_22_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_22_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_22_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_22_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_22_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_22_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_22_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_22_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_22_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_22_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_22_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_22_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_22_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_22_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_22_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_22_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_22_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_22_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_22_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_22_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_22_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_22_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_22_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_22_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_22_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_22_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_22_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_22_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_22_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_22_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_22_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_22_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_22_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_22_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_22_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_22_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_22_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_22_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_22_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_22_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_22_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_22_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_22_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_22_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_22_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_22_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_22_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_22_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_22_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_23 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_23_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_23_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_23_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_23_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_23_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_23_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_23_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_23_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_23_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_23_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_23_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_23_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_23_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_23_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_23_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_23_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_23_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_23_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_23_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_23_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_23_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_23_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_23_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_23_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_23_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_23_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_23_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_23_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_23_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_23_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_23_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_23_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_23_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_23_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_23_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_23_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_23_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_23_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_23_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_23_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_23_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_23_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_23_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_23_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_23_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_23_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_23_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_23_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_23_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_23_io_matrixIn_24_im),
    .io_valueIn_re(unit_23_io_valueIn_re),
    .io_valueIn_im(unit_23_io_valueIn_im),
    .io_matrixOut_0_re(unit_23_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_23_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_23_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_23_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_23_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_23_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_23_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_23_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_23_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_23_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_23_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_23_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_23_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_23_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_23_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_23_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_23_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_23_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_23_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_23_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_23_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_23_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_23_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_23_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_23_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_23_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_23_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_23_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_23_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_23_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_23_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_23_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_23_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_23_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_23_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_23_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_23_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_23_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_23_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_23_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_23_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_23_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_23_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_23_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_23_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_23_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_23_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_23_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_23_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_23_io_matrixOut_24_im)
  );
  matrix_vlaue_mul unit_24 ( // @[Kronecker_V1.scala 39:22]
    .io_matrixIn_0_re(unit_24_io_matrixIn_0_re),
    .io_matrixIn_0_im(unit_24_io_matrixIn_0_im),
    .io_matrixIn_1_re(unit_24_io_matrixIn_1_re),
    .io_matrixIn_1_im(unit_24_io_matrixIn_1_im),
    .io_matrixIn_2_re(unit_24_io_matrixIn_2_re),
    .io_matrixIn_2_im(unit_24_io_matrixIn_2_im),
    .io_matrixIn_3_re(unit_24_io_matrixIn_3_re),
    .io_matrixIn_3_im(unit_24_io_matrixIn_3_im),
    .io_matrixIn_4_re(unit_24_io_matrixIn_4_re),
    .io_matrixIn_4_im(unit_24_io_matrixIn_4_im),
    .io_matrixIn_5_re(unit_24_io_matrixIn_5_re),
    .io_matrixIn_5_im(unit_24_io_matrixIn_5_im),
    .io_matrixIn_6_re(unit_24_io_matrixIn_6_re),
    .io_matrixIn_6_im(unit_24_io_matrixIn_6_im),
    .io_matrixIn_7_re(unit_24_io_matrixIn_7_re),
    .io_matrixIn_7_im(unit_24_io_matrixIn_7_im),
    .io_matrixIn_8_re(unit_24_io_matrixIn_8_re),
    .io_matrixIn_8_im(unit_24_io_matrixIn_8_im),
    .io_matrixIn_9_re(unit_24_io_matrixIn_9_re),
    .io_matrixIn_9_im(unit_24_io_matrixIn_9_im),
    .io_matrixIn_10_re(unit_24_io_matrixIn_10_re),
    .io_matrixIn_10_im(unit_24_io_matrixIn_10_im),
    .io_matrixIn_11_re(unit_24_io_matrixIn_11_re),
    .io_matrixIn_11_im(unit_24_io_matrixIn_11_im),
    .io_matrixIn_12_re(unit_24_io_matrixIn_12_re),
    .io_matrixIn_12_im(unit_24_io_matrixIn_12_im),
    .io_matrixIn_13_re(unit_24_io_matrixIn_13_re),
    .io_matrixIn_13_im(unit_24_io_matrixIn_13_im),
    .io_matrixIn_14_re(unit_24_io_matrixIn_14_re),
    .io_matrixIn_14_im(unit_24_io_matrixIn_14_im),
    .io_matrixIn_15_re(unit_24_io_matrixIn_15_re),
    .io_matrixIn_15_im(unit_24_io_matrixIn_15_im),
    .io_matrixIn_16_re(unit_24_io_matrixIn_16_re),
    .io_matrixIn_16_im(unit_24_io_matrixIn_16_im),
    .io_matrixIn_17_re(unit_24_io_matrixIn_17_re),
    .io_matrixIn_17_im(unit_24_io_matrixIn_17_im),
    .io_matrixIn_18_re(unit_24_io_matrixIn_18_re),
    .io_matrixIn_18_im(unit_24_io_matrixIn_18_im),
    .io_matrixIn_19_re(unit_24_io_matrixIn_19_re),
    .io_matrixIn_19_im(unit_24_io_matrixIn_19_im),
    .io_matrixIn_20_re(unit_24_io_matrixIn_20_re),
    .io_matrixIn_20_im(unit_24_io_matrixIn_20_im),
    .io_matrixIn_21_re(unit_24_io_matrixIn_21_re),
    .io_matrixIn_21_im(unit_24_io_matrixIn_21_im),
    .io_matrixIn_22_re(unit_24_io_matrixIn_22_re),
    .io_matrixIn_22_im(unit_24_io_matrixIn_22_im),
    .io_matrixIn_23_re(unit_24_io_matrixIn_23_re),
    .io_matrixIn_23_im(unit_24_io_matrixIn_23_im),
    .io_matrixIn_24_re(unit_24_io_matrixIn_24_re),
    .io_matrixIn_24_im(unit_24_io_matrixIn_24_im),
    .io_valueIn_re(unit_24_io_valueIn_re),
    .io_valueIn_im(unit_24_io_valueIn_im),
    .io_matrixOut_0_re(unit_24_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_24_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_24_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_24_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_24_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_24_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_24_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_24_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_24_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_24_io_matrixOut_4_im),
    .io_matrixOut_5_re(unit_24_io_matrixOut_5_re),
    .io_matrixOut_5_im(unit_24_io_matrixOut_5_im),
    .io_matrixOut_6_re(unit_24_io_matrixOut_6_re),
    .io_matrixOut_6_im(unit_24_io_matrixOut_6_im),
    .io_matrixOut_7_re(unit_24_io_matrixOut_7_re),
    .io_matrixOut_7_im(unit_24_io_matrixOut_7_im),
    .io_matrixOut_8_re(unit_24_io_matrixOut_8_re),
    .io_matrixOut_8_im(unit_24_io_matrixOut_8_im),
    .io_matrixOut_9_re(unit_24_io_matrixOut_9_re),
    .io_matrixOut_9_im(unit_24_io_matrixOut_9_im),
    .io_matrixOut_10_re(unit_24_io_matrixOut_10_re),
    .io_matrixOut_10_im(unit_24_io_matrixOut_10_im),
    .io_matrixOut_11_re(unit_24_io_matrixOut_11_re),
    .io_matrixOut_11_im(unit_24_io_matrixOut_11_im),
    .io_matrixOut_12_re(unit_24_io_matrixOut_12_re),
    .io_matrixOut_12_im(unit_24_io_matrixOut_12_im),
    .io_matrixOut_13_re(unit_24_io_matrixOut_13_re),
    .io_matrixOut_13_im(unit_24_io_matrixOut_13_im),
    .io_matrixOut_14_re(unit_24_io_matrixOut_14_re),
    .io_matrixOut_14_im(unit_24_io_matrixOut_14_im),
    .io_matrixOut_15_re(unit_24_io_matrixOut_15_re),
    .io_matrixOut_15_im(unit_24_io_matrixOut_15_im),
    .io_matrixOut_16_re(unit_24_io_matrixOut_16_re),
    .io_matrixOut_16_im(unit_24_io_matrixOut_16_im),
    .io_matrixOut_17_re(unit_24_io_matrixOut_17_re),
    .io_matrixOut_17_im(unit_24_io_matrixOut_17_im),
    .io_matrixOut_18_re(unit_24_io_matrixOut_18_re),
    .io_matrixOut_18_im(unit_24_io_matrixOut_18_im),
    .io_matrixOut_19_re(unit_24_io_matrixOut_19_re),
    .io_matrixOut_19_im(unit_24_io_matrixOut_19_im),
    .io_matrixOut_20_re(unit_24_io_matrixOut_20_re),
    .io_matrixOut_20_im(unit_24_io_matrixOut_20_im),
    .io_matrixOut_21_re(unit_24_io_matrixOut_21_re),
    .io_matrixOut_21_im(unit_24_io_matrixOut_21_im),
    .io_matrixOut_22_re(unit_24_io_matrixOut_22_re),
    .io_matrixOut_22_im(unit_24_io_matrixOut_22_im),
    .io_matrixOut_23_re(unit_24_io_matrixOut_23_re),
    .io_matrixOut_23_im(unit_24_io_matrixOut_23_im),
    .io_matrixOut_24_re(unit_24_io_matrixOut_24_re),
    .io_matrixOut_24_im(unit_24_io_matrixOut_24_im)
  );
  assign io_matrixOut_0_re = unit_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_0_im = unit_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_1_re = unit_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_1_im = unit_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_2_re = unit_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_2_im = unit_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_3_re = unit_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_3_im = unit_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_4_re = unit_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_4_im = unit_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_5_re = unit_1_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_5_im = unit_1_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_6_re = unit_1_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_6_im = unit_1_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_7_re = unit_1_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_7_im = unit_1_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_8_re = unit_1_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_8_im = unit_1_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_9_re = unit_1_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_9_im = unit_1_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_10_re = unit_2_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_10_im = unit_2_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_11_re = unit_2_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_11_im = unit_2_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_12_re = unit_2_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_12_im = unit_2_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_13_re = unit_2_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_13_im = unit_2_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_14_re = unit_2_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_14_im = unit_2_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_15_re = unit_3_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_15_im = unit_3_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_16_re = unit_3_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_16_im = unit_3_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_17_re = unit_3_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_17_im = unit_3_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_18_re = unit_3_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_18_im = unit_3_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_19_re = unit_3_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_19_im = unit_3_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_20_re = unit_4_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_20_im = unit_4_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_21_re = unit_4_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_21_im = unit_4_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_22_re = unit_4_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_22_im = unit_4_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_23_re = unit_4_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_23_im = unit_4_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_24_re = unit_4_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_24_im = unit_4_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_25_re = unit_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_25_im = unit_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_26_re = unit_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_26_im = unit_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_27_re = unit_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_27_im = unit_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_28_re = unit_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_28_im = unit_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_29_re = unit_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_29_im = unit_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_30_re = unit_1_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_30_im = unit_1_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_31_re = unit_1_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_31_im = unit_1_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_32_re = unit_1_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_32_im = unit_1_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_33_re = unit_1_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_33_im = unit_1_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_34_re = unit_1_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_34_im = unit_1_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_35_re = unit_2_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_35_im = unit_2_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_36_re = unit_2_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_36_im = unit_2_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_37_re = unit_2_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_37_im = unit_2_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_38_re = unit_2_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_38_im = unit_2_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_39_re = unit_2_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_39_im = unit_2_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_40_re = unit_3_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_40_im = unit_3_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_41_re = unit_3_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_41_im = unit_3_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_42_re = unit_3_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_42_im = unit_3_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_43_re = unit_3_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_43_im = unit_3_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_44_re = unit_3_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_44_im = unit_3_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_45_re = unit_4_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_45_im = unit_4_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_46_re = unit_4_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_46_im = unit_4_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_47_re = unit_4_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_47_im = unit_4_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_48_re = unit_4_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_48_im = unit_4_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_49_re = unit_4_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_49_im = unit_4_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_50_re = unit_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_50_im = unit_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_51_re = unit_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_51_im = unit_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_52_re = unit_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_52_im = unit_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_53_re = unit_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_53_im = unit_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_54_re = unit_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_54_im = unit_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_55_re = unit_1_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_55_im = unit_1_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_56_re = unit_1_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_56_im = unit_1_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_57_re = unit_1_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_57_im = unit_1_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_58_re = unit_1_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_58_im = unit_1_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_59_re = unit_1_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_59_im = unit_1_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_60_re = unit_2_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_60_im = unit_2_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_61_re = unit_2_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_61_im = unit_2_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_62_re = unit_2_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_62_im = unit_2_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_63_re = unit_2_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_63_im = unit_2_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_64_re = unit_2_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_64_im = unit_2_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_65_re = unit_3_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_65_im = unit_3_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_66_re = unit_3_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_66_im = unit_3_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_67_re = unit_3_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_67_im = unit_3_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_68_re = unit_3_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_68_im = unit_3_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_69_re = unit_3_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_69_im = unit_3_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_70_re = unit_4_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_70_im = unit_4_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_71_re = unit_4_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_71_im = unit_4_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_72_re = unit_4_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_72_im = unit_4_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_73_re = unit_4_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_73_im = unit_4_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_74_re = unit_4_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_74_im = unit_4_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_75_re = unit_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_75_im = unit_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_76_re = unit_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_76_im = unit_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_77_re = unit_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_77_im = unit_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_78_re = unit_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_78_im = unit_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_79_re = unit_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_79_im = unit_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_80_re = unit_1_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_80_im = unit_1_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_81_re = unit_1_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_81_im = unit_1_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_82_re = unit_1_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_82_im = unit_1_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_83_re = unit_1_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_83_im = unit_1_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_84_re = unit_1_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_84_im = unit_1_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_85_re = unit_2_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_85_im = unit_2_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_86_re = unit_2_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_86_im = unit_2_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_87_re = unit_2_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_87_im = unit_2_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_88_re = unit_2_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_88_im = unit_2_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_89_re = unit_2_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_89_im = unit_2_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_90_re = unit_3_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_90_im = unit_3_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_91_re = unit_3_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_91_im = unit_3_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_92_re = unit_3_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_92_im = unit_3_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_93_re = unit_3_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_93_im = unit_3_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_94_re = unit_3_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_94_im = unit_3_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_95_re = unit_4_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_95_im = unit_4_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_96_re = unit_4_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_96_im = unit_4_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_97_re = unit_4_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_97_im = unit_4_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_98_re = unit_4_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_98_im = unit_4_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_99_re = unit_4_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_99_im = unit_4_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_100_re = unit_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_100_im = unit_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_101_re = unit_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_101_im = unit_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_102_re = unit_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_102_im = unit_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_103_re = unit_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_103_im = unit_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_104_re = unit_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_104_im = unit_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_105_re = unit_1_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_105_im = unit_1_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_106_re = unit_1_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_106_im = unit_1_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_107_re = unit_1_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_107_im = unit_1_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_108_re = unit_1_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_108_im = unit_1_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_109_re = unit_1_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_109_im = unit_1_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_110_re = unit_2_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_110_im = unit_2_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_111_re = unit_2_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_111_im = unit_2_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_112_re = unit_2_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_112_im = unit_2_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_113_re = unit_2_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_113_im = unit_2_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_114_re = unit_2_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_114_im = unit_2_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_115_re = unit_3_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_115_im = unit_3_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_116_re = unit_3_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_116_im = unit_3_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_117_re = unit_3_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_117_im = unit_3_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_118_re = unit_3_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_118_im = unit_3_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_119_re = unit_3_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_119_im = unit_3_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_120_re = unit_4_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_120_im = unit_4_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_121_re = unit_4_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_121_im = unit_4_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_122_re = unit_4_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_122_im = unit_4_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_123_re = unit_4_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_123_im = unit_4_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_124_re = unit_4_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_124_im = unit_4_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_125_re = unit_5_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_125_im = unit_5_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_126_re = unit_5_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_126_im = unit_5_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_127_re = unit_5_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_127_im = unit_5_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_128_re = unit_5_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_128_im = unit_5_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_129_re = unit_5_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_129_im = unit_5_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_130_re = unit_6_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_130_im = unit_6_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_131_re = unit_6_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_131_im = unit_6_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_132_re = unit_6_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_132_im = unit_6_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_133_re = unit_6_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_133_im = unit_6_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_134_re = unit_6_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_134_im = unit_6_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_135_re = unit_7_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_135_im = unit_7_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_136_re = unit_7_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_136_im = unit_7_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_137_re = unit_7_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_137_im = unit_7_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_138_re = unit_7_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_138_im = unit_7_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_139_re = unit_7_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_139_im = unit_7_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_140_re = unit_8_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_140_im = unit_8_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_141_re = unit_8_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_141_im = unit_8_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_142_re = unit_8_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_142_im = unit_8_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_143_re = unit_8_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_143_im = unit_8_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_144_re = unit_8_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_144_im = unit_8_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_145_re = unit_9_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_145_im = unit_9_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_146_re = unit_9_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_146_im = unit_9_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_147_re = unit_9_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_147_im = unit_9_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_148_re = unit_9_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_148_im = unit_9_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_149_re = unit_9_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_149_im = unit_9_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_150_re = unit_5_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_150_im = unit_5_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_151_re = unit_5_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_151_im = unit_5_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_152_re = unit_5_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_152_im = unit_5_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_153_re = unit_5_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_153_im = unit_5_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_154_re = unit_5_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_154_im = unit_5_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_155_re = unit_6_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_155_im = unit_6_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_156_re = unit_6_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_156_im = unit_6_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_157_re = unit_6_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_157_im = unit_6_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_158_re = unit_6_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_158_im = unit_6_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_159_re = unit_6_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_159_im = unit_6_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_160_re = unit_7_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_160_im = unit_7_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_161_re = unit_7_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_161_im = unit_7_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_162_re = unit_7_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_162_im = unit_7_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_163_re = unit_7_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_163_im = unit_7_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_164_re = unit_7_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_164_im = unit_7_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_165_re = unit_8_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_165_im = unit_8_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_166_re = unit_8_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_166_im = unit_8_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_167_re = unit_8_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_167_im = unit_8_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_168_re = unit_8_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_168_im = unit_8_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_169_re = unit_8_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_169_im = unit_8_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_170_re = unit_9_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_170_im = unit_9_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_171_re = unit_9_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_171_im = unit_9_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_172_re = unit_9_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_172_im = unit_9_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_173_re = unit_9_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_173_im = unit_9_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_174_re = unit_9_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_174_im = unit_9_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_175_re = unit_5_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_175_im = unit_5_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_176_re = unit_5_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_176_im = unit_5_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_177_re = unit_5_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_177_im = unit_5_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_178_re = unit_5_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_178_im = unit_5_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_179_re = unit_5_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_179_im = unit_5_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_180_re = unit_6_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_180_im = unit_6_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_181_re = unit_6_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_181_im = unit_6_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_182_re = unit_6_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_182_im = unit_6_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_183_re = unit_6_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_183_im = unit_6_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_184_re = unit_6_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_184_im = unit_6_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_185_re = unit_7_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_185_im = unit_7_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_186_re = unit_7_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_186_im = unit_7_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_187_re = unit_7_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_187_im = unit_7_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_188_re = unit_7_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_188_im = unit_7_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_189_re = unit_7_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_189_im = unit_7_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_190_re = unit_8_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_190_im = unit_8_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_191_re = unit_8_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_191_im = unit_8_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_192_re = unit_8_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_192_im = unit_8_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_193_re = unit_8_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_193_im = unit_8_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_194_re = unit_8_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_194_im = unit_8_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_195_re = unit_9_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_195_im = unit_9_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_196_re = unit_9_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_196_im = unit_9_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_197_re = unit_9_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_197_im = unit_9_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_198_re = unit_9_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_198_im = unit_9_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_199_re = unit_9_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_199_im = unit_9_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_200_re = unit_5_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_200_im = unit_5_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_201_re = unit_5_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_201_im = unit_5_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_202_re = unit_5_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_202_im = unit_5_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_203_re = unit_5_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_203_im = unit_5_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_204_re = unit_5_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_204_im = unit_5_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_205_re = unit_6_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_205_im = unit_6_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_206_re = unit_6_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_206_im = unit_6_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_207_re = unit_6_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_207_im = unit_6_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_208_re = unit_6_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_208_im = unit_6_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_209_re = unit_6_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_209_im = unit_6_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_210_re = unit_7_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_210_im = unit_7_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_211_re = unit_7_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_211_im = unit_7_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_212_re = unit_7_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_212_im = unit_7_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_213_re = unit_7_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_213_im = unit_7_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_214_re = unit_7_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_214_im = unit_7_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_215_re = unit_8_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_215_im = unit_8_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_216_re = unit_8_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_216_im = unit_8_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_217_re = unit_8_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_217_im = unit_8_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_218_re = unit_8_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_218_im = unit_8_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_219_re = unit_8_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_219_im = unit_8_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_220_re = unit_9_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_220_im = unit_9_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_221_re = unit_9_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_221_im = unit_9_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_222_re = unit_9_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_222_im = unit_9_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_223_re = unit_9_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_223_im = unit_9_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_224_re = unit_9_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_224_im = unit_9_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_225_re = unit_5_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_225_im = unit_5_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_226_re = unit_5_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_226_im = unit_5_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_227_re = unit_5_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_227_im = unit_5_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_228_re = unit_5_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_228_im = unit_5_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_229_re = unit_5_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_229_im = unit_5_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_230_re = unit_6_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_230_im = unit_6_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_231_re = unit_6_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_231_im = unit_6_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_232_re = unit_6_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_232_im = unit_6_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_233_re = unit_6_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_233_im = unit_6_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_234_re = unit_6_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_234_im = unit_6_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_235_re = unit_7_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_235_im = unit_7_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_236_re = unit_7_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_236_im = unit_7_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_237_re = unit_7_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_237_im = unit_7_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_238_re = unit_7_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_238_im = unit_7_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_239_re = unit_7_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_239_im = unit_7_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_240_re = unit_8_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_240_im = unit_8_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_241_re = unit_8_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_241_im = unit_8_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_242_re = unit_8_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_242_im = unit_8_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_243_re = unit_8_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_243_im = unit_8_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_244_re = unit_8_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_244_im = unit_8_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_245_re = unit_9_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_245_im = unit_9_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_246_re = unit_9_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_246_im = unit_9_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_247_re = unit_9_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_247_im = unit_9_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_248_re = unit_9_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_248_im = unit_9_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_249_re = unit_9_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_249_im = unit_9_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_250_re = unit_10_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_250_im = unit_10_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_251_re = unit_10_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_251_im = unit_10_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_252_re = unit_10_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_252_im = unit_10_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_253_re = unit_10_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_253_im = unit_10_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_254_re = unit_10_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_254_im = unit_10_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_255_re = unit_11_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_255_im = unit_11_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_256_re = unit_11_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_256_im = unit_11_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_257_re = unit_11_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_257_im = unit_11_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_258_re = unit_11_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_258_im = unit_11_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_259_re = unit_11_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_259_im = unit_11_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_260_re = unit_12_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_260_im = unit_12_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_261_re = unit_12_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_261_im = unit_12_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_262_re = unit_12_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_262_im = unit_12_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_263_re = unit_12_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_263_im = unit_12_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_264_re = unit_12_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_264_im = unit_12_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_265_re = unit_13_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_265_im = unit_13_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_266_re = unit_13_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_266_im = unit_13_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_267_re = unit_13_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_267_im = unit_13_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_268_re = unit_13_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_268_im = unit_13_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_269_re = unit_13_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_269_im = unit_13_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_270_re = unit_14_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_270_im = unit_14_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_271_re = unit_14_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_271_im = unit_14_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_272_re = unit_14_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_272_im = unit_14_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_273_re = unit_14_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_273_im = unit_14_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_274_re = unit_14_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_274_im = unit_14_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_275_re = unit_10_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_275_im = unit_10_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_276_re = unit_10_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_276_im = unit_10_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_277_re = unit_10_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_277_im = unit_10_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_278_re = unit_10_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_278_im = unit_10_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_279_re = unit_10_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_279_im = unit_10_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_280_re = unit_11_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_280_im = unit_11_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_281_re = unit_11_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_281_im = unit_11_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_282_re = unit_11_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_282_im = unit_11_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_283_re = unit_11_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_283_im = unit_11_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_284_re = unit_11_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_284_im = unit_11_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_285_re = unit_12_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_285_im = unit_12_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_286_re = unit_12_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_286_im = unit_12_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_287_re = unit_12_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_287_im = unit_12_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_288_re = unit_12_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_288_im = unit_12_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_289_re = unit_12_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_289_im = unit_12_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_290_re = unit_13_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_290_im = unit_13_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_291_re = unit_13_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_291_im = unit_13_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_292_re = unit_13_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_292_im = unit_13_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_293_re = unit_13_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_293_im = unit_13_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_294_re = unit_13_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_294_im = unit_13_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_295_re = unit_14_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_295_im = unit_14_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_296_re = unit_14_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_296_im = unit_14_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_297_re = unit_14_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_297_im = unit_14_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_298_re = unit_14_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_298_im = unit_14_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_299_re = unit_14_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_299_im = unit_14_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_300_re = unit_10_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_300_im = unit_10_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_301_re = unit_10_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_301_im = unit_10_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_302_re = unit_10_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_302_im = unit_10_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_303_re = unit_10_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_303_im = unit_10_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_304_re = unit_10_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_304_im = unit_10_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_305_re = unit_11_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_305_im = unit_11_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_306_re = unit_11_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_306_im = unit_11_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_307_re = unit_11_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_307_im = unit_11_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_308_re = unit_11_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_308_im = unit_11_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_309_re = unit_11_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_309_im = unit_11_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_310_re = unit_12_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_310_im = unit_12_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_311_re = unit_12_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_311_im = unit_12_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_312_re = unit_12_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_312_im = unit_12_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_313_re = unit_12_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_313_im = unit_12_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_314_re = unit_12_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_314_im = unit_12_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_315_re = unit_13_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_315_im = unit_13_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_316_re = unit_13_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_316_im = unit_13_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_317_re = unit_13_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_317_im = unit_13_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_318_re = unit_13_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_318_im = unit_13_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_319_re = unit_13_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_319_im = unit_13_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_320_re = unit_14_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_320_im = unit_14_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_321_re = unit_14_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_321_im = unit_14_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_322_re = unit_14_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_322_im = unit_14_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_323_re = unit_14_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_323_im = unit_14_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_324_re = unit_14_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_324_im = unit_14_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_325_re = unit_10_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_325_im = unit_10_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_326_re = unit_10_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_326_im = unit_10_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_327_re = unit_10_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_327_im = unit_10_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_328_re = unit_10_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_328_im = unit_10_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_329_re = unit_10_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_329_im = unit_10_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_330_re = unit_11_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_330_im = unit_11_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_331_re = unit_11_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_331_im = unit_11_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_332_re = unit_11_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_332_im = unit_11_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_333_re = unit_11_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_333_im = unit_11_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_334_re = unit_11_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_334_im = unit_11_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_335_re = unit_12_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_335_im = unit_12_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_336_re = unit_12_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_336_im = unit_12_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_337_re = unit_12_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_337_im = unit_12_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_338_re = unit_12_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_338_im = unit_12_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_339_re = unit_12_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_339_im = unit_12_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_340_re = unit_13_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_340_im = unit_13_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_341_re = unit_13_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_341_im = unit_13_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_342_re = unit_13_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_342_im = unit_13_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_343_re = unit_13_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_343_im = unit_13_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_344_re = unit_13_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_344_im = unit_13_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_345_re = unit_14_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_345_im = unit_14_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_346_re = unit_14_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_346_im = unit_14_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_347_re = unit_14_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_347_im = unit_14_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_348_re = unit_14_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_348_im = unit_14_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_349_re = unit_14_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_349_im = unit_14_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_350_re = unit_10_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_350_im = unit_10_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_351_re = unit_10_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_351_im = unit_10_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_352_re = unit_10_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_352_im = unit_10_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_353_re = unit_10_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_353_im = unit_10_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_354_re = unit_10_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_354_im = unit_10_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_355_re = unit_11_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_355_im = unit_11_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_356_re = unit_11_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_356_im = unit_11_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_357_re = unit_11_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_357_im = unit_11_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_358_re = unit_11_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_358_im = unit_11_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_359_re = unit_11_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_359_im = unit_11_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_360_re = unit_12_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_360_im = unit_12_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_361_re = unit_12_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_361_im = unit_12_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_362_re = unit_12_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_362_im = unit_12_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_363_re = unit_12_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_363_im = unit_12_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_364_re = unit_12_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_364_im = unit_12_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_365_re = unit_13_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_365_im = unit_13_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_366_re = unit_13_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_366_im = unit_13_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_367_re = unit_13_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_367_im = unit_13_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_368_re = unit_13_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_368_im = unit_13_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_369_re = unit_13_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_369_im = unit_13_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_370_re = unit_14_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_370_im = unit_14_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_371_re = unit_14_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_371_im = unit_14_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_372_re = unit_14_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_372_im = unit_14_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_373_re = unit_14_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_373_im = unit_14_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_374_re = unit_14_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_374_im = unit_14_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_375_re = unit_15_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_375_im = unit_15_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_376_re = unit_15_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_376_im = unit_15_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_377_re = unit_15_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_377_im = unit_15_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_378_re = unit_15_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_378_im = unit_15_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_379_re = unit_15_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_379_im = unit_15_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_380_re = unit_16_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_380_im = unit_16_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_381_re = unit_16_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_381_im = unit_16_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_382_re = unit_16_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_382_im = unit_16_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_383_re = unit_16_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_383_im = unit_16_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_384_re = unit_16_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_384_im = unit_16_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_385_re = unit_17_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_385_im = unit_17_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_386_re = unit_17_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_386_im = unit_17_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_387_re = unit_17_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_387_im = unit_17_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_388_re = unit_17_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_388_im = unit_17_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_389_re = unit_17_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_389_im = unit_17_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_390_re = unit_18_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_390_im = unit_18_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_391_re = unit_18_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_391_im = unit_18_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_392_re = unit_18_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_392_im = unit_18_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_393_re = unit_18_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_393_im = unit_18_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_394_re = unit_18_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_394_im = unit_18_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_395_re = unit_19_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_395_im = unit_19_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_396_re = unit_19_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_396_im = unit_19_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_397_re = unit_19_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_397_im = unit_19_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_398_re = unit_19_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_398_im = unit_19_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_399_re = unit_19_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_399_im = unit_19_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_400_re = unit_15_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_400_im = unit_15_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_401_re = unit_15_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_401_im = unit_15_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_402_re = unit_15_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_402_im = unit_15_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_403_re = unit_15_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_403_im = unit_15_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_404_re = unit_15_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_404_im = unit_15_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_405_re = unit_16_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_405_im = unit_16_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_406_re = unit_16_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_406_im = unit_16_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_407_re = unit_16_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_407_im = unit_16_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_408_re = unit_16_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_408_im = unit_16_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_409_re = unit_16_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_409_im = unit_16_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_410_re = unit_17_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_410_im = unit_17_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_411_re = unit_17_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_411_im = unit_17_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_412_re = unit_17_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_412_im = unit_17_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_413_re = unit_17_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_413_im = unit_17_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_414_re = unit_17_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_414_im = unit_17_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_415_re = unit_18_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_415_im = unit_18_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_416_re = unit_18_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_416_im = unit_18_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_417_re = unit_18_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_417_im = unit_18_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_418_re = unit_18_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_418_im = unit_18_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_419_re = unit_18_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_419_im = unit_18_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_420_re = unit_19_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_420_im = unit_19_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_421_re = unit_19_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_421_im = unit_19_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_422_re = unit_19_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_422_im = unit_19_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_423_re = unit_19_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_423_im = unit_19_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_424_re = unit_19_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_424_im = unit_19_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_425_re = unit_15_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_425_im = unit_15_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_426_re = unit_15_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_426_im = unit_15_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_427_re = unit_15_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_427_im = unit_15_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_428_re = unit_15_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_428_im = unit_15_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_429_re = unit_15_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_429_im = unit_15_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_430_re = unit_16_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_430_im = unit_16_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_431_re = unit_16_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_431_im = unit_16_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_432_re = unit_16_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_432_im = unit_16_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_433_re = unit_16_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_433_im = unit_16_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_434_re = unit_16_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_434_im = unit_16_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_435_re = unit_17_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_435_im = unit_17_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_436_re = unit_17_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_436_im = unit_17_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_437_re = unit_17_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_437_im = unit_17_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_438_re = unit_17_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_438_im = unit_17_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_439_re = unit_17_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_439_im = unit_17_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_440_re = unit_18_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_440_im = unit_18_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_441_re = unit_18_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_441_im = unit_18_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_442_re = unit_18_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_442_im = unit_18_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_443_re = unit_18_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_443_im = unit_18_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_444_re = unit_18_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_444_im = unit_18_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_445_re = unit_19_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_445_im = unit_19_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_446_re = unit_19_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_446_im = unit_19_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_447_re = unit_19_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_447_im = unit_19_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_448_re = unit_19_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_448_im = unit_19_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_449_re = unit_19_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_449_im = unit_19_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_450_re = unit_15_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_450_im = unit_15_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_451_re = unit_15_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_451_im = unit_15_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_452_re = unit_15_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_452_im = unit_15_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_453_re = unit_15_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_453_im = unit_15_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_454_re = unit_15_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_454_im = unit_15_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_455_re = unit_16_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_455_im = unit_16_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_456_re = unit_16_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_456_im = unit_16_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_457_re = unit_16_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_457_im = unit_16_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_458_re = unit_16_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_458_im = unit_16_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_459_re = unit_16_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_459_im = unit_16_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_460_re = unit_17_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_460_im = unit_17_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_461_re = unit_17_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_461_im = unit_17_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_462_re = unit_17_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_462_im = unit_17_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_463_re = unit_17_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_463_im = unit_17_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_464_re = unit_17_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_464_im = unit_17_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_465_re = unit_18_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_465_im = unit_18_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_466_re = unit_18_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_466_im = unit_18_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_467_re = unit_18_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_467_im = unit_18_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_468_re = unit_18_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_468_im = unit_18_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_469_re = unit_18_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_469_im = unit_18_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_470_re = unit_19_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_470_im = unit_19_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_471_re = unit_19_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_471_im = unit_19_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_472_re = unit_19_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_472_im = unit_19_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_473_re = unit_19_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_473_im = unit_19_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_474_re = unit_19_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_474_im = unit_19_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_475_re = unit_15_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_475_im = unit_15_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_476_re = unit_15_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_476_im = unit_15_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_477_re = unit_15_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_477_im = unit_15_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_478_re = unit_15_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_478_im = unit_15_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_479_re = unit_15_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_479_im = unit_15_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_480_re = unit_16_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_480_im = unit_16_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_481_re = unit_16_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_481_im = unit_16_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_482_re = unit_16_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_482_im = unit_16_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_483_re = unit_16_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_483_im = unit_16_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_484_re = unit_16_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_484_im = unit_16_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_485_re = unit_17_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_485_im = unit_17_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_486_re = unit_17_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_486_im = unit_17_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_487_re = unit_17_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_487_im = unit_17_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_488_re = unit_17_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_488_im = unit_17_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_489_re = unit_17_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_489_im = unit_17_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_490_re = unit_18_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_490_im = unit_18_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_491_re = unit_18_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_491_im = unit_18_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_492_re = unit_18_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_492_im = unit_18_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_493_re = unit_18_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_493_im = unit_18_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_494_re = unit_18_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_494_im = unit_18_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_495_re = unit_19_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_495_im = unit_19_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_496_re = unit_19_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_496_im = unit_19_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_497_re = unit_19_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_497_im = unit_19_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_498_re = unit_19_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_498_im = unit_19_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_499_re = unit_19_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_499_im = unit_19_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_500_re = unit_20_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_500_im = unit_20_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_501_re = unit_20_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_501_im = unit_20_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_502_re = unit_20_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_502_im = unit_20_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_503_re = unit_20_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_503_im = unit_20_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_504_re = unit_20_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_504_im = unit_20_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_505_re = unit_21_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_505_im = unit_21_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_506_re = unit_21_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_506_im = unit_21_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_507_re = unit_21_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_507_im = unit_21_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_508_re = unit_21_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_508_im = unit_21_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_509_re = unit_21_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_509_im = unit_21_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_510_re = unit_22_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_510_im = unit_22_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_511_re = unit_22_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_511_im = unit_22_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_512_re = unit_22_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_512_im = unit_22_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_513_re = unit_22_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_513_im = unit_22_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_514_re = unit_22_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_514_im = unit_22_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_515_re = unit_23_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_515_im = unit_23_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_516_re = unit_23_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_516_im = unit_23_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_517_re = unit_23_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_517_im = unit_23_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_518_re = unit_23_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_518_im = unit_23_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_519_re = unit_23_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_519_im = unit_23_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_520_re = unit_24_io_matrixOut_0_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_520_im = unit_24_io_matrixOut_0_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_521_re = unit_24_io_matrixOut_1_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_521_im = unit_24_io_matrixOut_1_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_522_re = unit_24_io_matrixOut_2_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_522_im = unit_24_io_matrixOut_2_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_523_re = unit_24_io_matrixOut_3_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_523_im = unit_24_io_matrixOut_3_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_524_re = unit_24_io_matrixOut_4_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_524_im = unit_24_io_matrixOut_4_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_525_re = unit_20_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_525_im = unit_20_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_526_re = unit_20_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_526_im = unit_20_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_527_re = unit_20_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_527_im = unit_20_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_528_re = unit_20_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_528_im = unit_20_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_529_re = unit_20_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_529_im = unit_20_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_530_re = unit_21_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_530_im = unit_21_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_531_re = unit_21_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_531_im = unit_21_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_532_re = unit_21_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_532_im = unit_21_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_533_re = unit_21_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_533_im = unit_21_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_534_re = unit_21_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_534_im = unit_21_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_535_re = unit_22_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_535_im = unit_22_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_536_re = unit_22_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_536_im = unit_22_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_537_re = unit_22_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_537_im = unit_22_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_538_re = unit_22_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_538_im = unit_22_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_539_re = unit_22_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_539_im = unit_22_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_540_re = unit_23_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_540_im = unit_23_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_541_re = unit_23_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_541_im = unit_23_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_542_re = unit_23_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_542_im = unit_23_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_543_re = unit_23_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_543_im = unit_23_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_544_re = unit_23_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_544_im = unit_23_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_545_re = unit_24_io_matrixOut_5_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_545_im = unit_24_io_matrixOut_5_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_546_re = unit_24_io_matrixOut_6_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_546_im = unit_24_io_matrixOut_6_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_547_re = unit_24_io_matrixOut_7_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_547_im = unit_24_io_matrixOut_7_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_548_re = unit_24_io_matrixOut_8_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_548_im = unit_24_io_matrixOut_8_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_549_re = unit_24_io_matrixOut_9_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_549_im = unit_24_io_matrixOut_9_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_550_re = unit_20_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_550_im = unit_20_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_551_re = unit_20_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_551_im = unit_20_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_552_re = unit_20_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_552_im = unit_20_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_553_re = unit_20_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_553_im = unit_20_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_554_re = unit_20_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_554_im = unit_20_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_555_re = unit_21_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_555_im = unit_21_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_556_re = unit_21_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_556_im = unit_21_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_557_re = unit_21_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_557_im = unit_21_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_558_re = unit_21_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_558_im = unit_21_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_559_re = unit_21_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_559_im = unit_21_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_560_re = unit_22_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_560_im = unit_22_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_561_re = unit_22_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_561_im = unit_22_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_562_re = unit_22_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_562_im = unit_22_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_563_re = unit_22_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_563_im = unit_22_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_564_re = unit_22_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_564_im = unit_22_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_565_re = unit_23_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_565_im = unit_23_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_566_re = unit_23_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_566_im = unit_23_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_567_re = unit_23_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_567_im = unit_23_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_568_re = unit_23_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_568_im = unit_23_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_569_re = unit_23_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_569_im = unit_23_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_570_re = unit_24_io_matrixOut_10_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_570_im = unit_24_io_matrixOut_10_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_571_re = unit_24_io_matrixOut_11_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_571_im = unit_24_io_matrixOut_11_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_572_re = unit_24_io_matrixOut_12_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_572_im = unit_24_io_matrixOut_12_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_573_re = unit_24_io_matrixOut_13_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_573_im = unit_24_io_matrixOut_13_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_574_re = unit_24_io_matrixOut_14_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_574_im = unit_24_io_matrixOut_14_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_575_re = unit_20_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_575_im = unit_20_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_576_re = unit_20_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_576_im = unit_20_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_577_re = unit_20_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_577_im = unit_20_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_578_re = unit_20_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_578_im = unit_20_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_579_re = unit_20_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_579_im = unit_20_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_580_re = unit_21_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_580_im = unit_21_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_581_re = unit_21_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_581_im = unit_21_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_582_re = unit_21_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_582_im = unit_21_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_583_re = unit_21_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_583_im = unit_21_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_584_re = unit_21_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_584_im = unit_21_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_585_re = unit_22_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_585_im = unit_22_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_586_re = unit_22_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_586_im = unit_22_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_587_re = unit_22_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_587_im = unit_22_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_588_re = unit_22_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_588_im = unit_22_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_589_re = unit_22_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_589_im = unit_22_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_590_re = unit_23_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_590_im = unit_23_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_591_re = unit_23_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_591_im = unit_23_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_592_re = unit_23_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_592_im = unit_23_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_593_re = unit_23_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_593_im = unit_23_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_594_re = unit_23_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_594_im = unit_23_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_595_re = unit_24_io_matrixOut_15_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_595_im = unit_24_io_matrixOut_15_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_596_re = unit_24_io_matrixOut_16_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_596_im = unit_24_io_matrixOut_16_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_597_re = unit_24_io_matrixOut_17_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_597_im = unit_24_io_matrixOut_17_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_598_re = unit_24_io_matrixOut_18_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_598_im = unit_24_io_matrixOut_18_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_599_re = unit_24_io_matrixOut_19_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_599_im = unit_24_io_matrixOut_19_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_600_re = unit_20_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_600_im = unit_20_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_601_re = unit_20_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_601_im = unit_20_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_602_re = unit_20_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_602_im = unit_20_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_603_re = unit_20_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_603_im = unit_20_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_604_re = unit_20_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_604_im = unit_20_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_605_re = unit_21_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_605_im = unit_21_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_606_re = unit_21_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_606_im = unit_21_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_607_re = unit_21_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_607_im = unit_21_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_608_re = unit_21_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_608_im = unit_21_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_609_re = unit_21_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_609_im = unit_21_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_610_re = unit_22_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_610_im = unit_22_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_611_re = unit_22_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_611_im = unit_22_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_612_re = unit_22_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_612_im = unit_22_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_613_re = unit_22_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_613_im = unit_22_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_614_re = unit_22_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_614_im = unit_22_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_615_re = unit_23_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_615_im = unit_23_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_616_re = unit_23_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_616_im = unit_23_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_617_re = unit_23_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_617_im = unit_23_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_618_re = unit_23_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_618_im = unit_23_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_619_re = unit_23_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_619_im = unit_23_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_620_re = unit_24_io_matrixOut_20_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_620_im = unit_24_io_matrixOut_20_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_621_re = unit_24_io_matrixOut_21_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_621_im = unit_24_io_matrixOut_21_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_622_re = unit_24_io_matrixOut_22_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_622_im = unit_24_io_matrixOut_22_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_623_re = unit_24_io_matrixOut_23_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_623_im = unit_24_io_matrixOut_23_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_624_re = unit_24_io_matrixOut_24_re; // @[Kronecker_V1.scala 67:29 68:19]
  assign io_matrixOut_624_im = unit_24_io_matrixOut_24_im; // @[Kronecker_V1.scala 67:29 68:19]
  assign unit_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_io_valueIn_re = io_matrixA_0_re; // @[Kronecker_V1.scala 41:21]
  assign unit_io_valueIn_im = io_matrixA_0_im; // @[Kronecker_V1.scala 41:21]
  assign unit_1_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_1_io_valueIn_re = io_matrixA_1_re; // @[Kronecker_V1.scala 41:21]
  assign unit_1_io_valueIn_im = io_matrixA_1_im; // @[Kronecker_V1.scala 41:21]
  assign unit_2_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_2_io_valueIn_re = io_matrixA_2_re; // @[Kronecker_V1.scala 41:21]
  assign unit_2_io_valueIn_im = io_matrixA_2_im; // @[Kronecker_V1.scala 41:21]
  assign unit_3_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_3_io_valueIn_re = io_matrixA_3_re; // @[Kronecker_V1.scala 41:21]
  assign unit_3_io_valueIn_im = io_matrixA_3_im; // @[Kronecker_V1.scala 41:21]
  assign unit_4_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_4_io_valueIn_re = io_matrixA_4_re; // @[Kronecker_V1.scala 41:21]
  assign unit_4_io_valueIn_im = io_matrixA_4_im; // @[Kronecker_V1.scala 41:21]
  assign unit_5_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_5_io_valueIn_re = io_matrixA_5_re; // @[Kronecker_V1.scala 41:21]
  assign unit_5_io_valueIn_im = io_matrixA_5_im; // @[Kronecker_V1.scala 41:21]
  assign unit_6_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_6_io_valueIn_re = io_matrixA_6_re; // @[Kronecker_V1.scala 41:21]
  assign unit_6_io_valueIn_im = io_matrixA_6_im; // @[Kronecker_V1.scala 41:21]
  assign unit_7_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_7_io_valueIn_re = io_matrixA_7_re; // @[Kronecker_V1.scala 41:21]
  assign unit_7_io_valueIn_im = io_matrixA_7_im; // @[Kronecker_V1.scala 41:21]
  assign unit_8_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_8_io_valueIn_re = io_matrixA_8_re; // @[Kronecker_V1.scala 41:21]
  assign unit_8_io_valueIn_im = io_matrixA_8_im; // @[Kronecker_V1.scala 41:21]
  assign unit_9_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_9_io_valueIn_re = io_matrixA_9_re; // @[Kronecker_V1.scala 41:21]
  assign unit_9_io_valueIn_im = io_matrixA_9_im; // @[Kronecker_V1.scala 41:21]
  assign unit_10_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_10_io_valueIn_re = io_matrixA_10_re; // @[Kronecker_V1.scala 41:21]
  assign unit_10_io_valueIn_im = io_matrixA_10_im; // @[Kronecker_V1.scala 41:21]
  assign unit_11_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_11_io_valueIn_re = io_matrixA_11_re; // @[Kronecker_V1.scala 41:21]
  assign unit_11_io_valueIn_im = io_matrixA_11_im; // @[Kronecker_V1.scala 41:21]
  assign unit_12_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_12_io_valueIn_re = io_matrixA_12_re; // @[Kronecker_V1.scala 41:21]
  assign unit_12_io_valueIn_im = io_matrixA_12_im; // @[Kronecker_V1.scala 41:21]
  assign unit_13_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_13_io_valueIn_re = io_matrixA_13_re; // @[Kronecker_V1.scala 41:21]
  assign unit_13_io_valueIn_im = io_matrixA_13_im; // @[Kronecker_V1.scala 41:21]
  assign unit_14_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_14_io_valueIn_re = io_matrixA_14_re; // @[Kronecker_V1.scala 41:21]
  assign unit_14_io_valueIn_im = io_matrixA_14_im; // @[Kronecker_V1.scala 41:21]
  assign unit_15_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_15_io_valueIn_re = io_matrixA_15_re; // @[Kronecker_V1.scala 41:21]
  assign unit_15_io_valueIn_im = io_matrixA_15_im; // @[Kronecker_V1.scala 41:21]
  assign unit_16_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_16_io_valueIn_re = io_matrixA_16_re; // @[Kronecker_V1.scala 41:21]
  assign unit_16_io_valueIn_im = io_matrixA_16_im; // @[Kronecker_V1.scala 41:21]
  assign unit_17_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_17_io_valueIn_re = io_matrixA_17_re; // @[Kronecker_V1.scala 41:21]
  assign unit_17_io_valueIn_im = io_matrixA_17_im; // @[Kronecker_V1.scala 41:21]
  assign unit_18_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_18_io_valueIn_re = io_matrixA_18_re; // @[Kronecker_V1.scala 41:21]
  assign unit_18_io_valueIn_im = io_matrixA_18_im; // @[Kronecker_V1.scala 41:21]
  assign unit_19_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_19_io_valueIn_re = io_matrixA_19_re; // @[Kronecker_V1.scala 41:21]
  assign unit_19_io_valueIn_im = io_matrixA_19_im; // @[Kronecker_V1.scala 41:21]
  assign unit_20_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_20_io_valueIn_re = io_matrixA_20_re; // @[Kronecker_V1.scala 41:21]
  assign unit_20_io_valueIn_im = io_matrixA_20_im; // @[Kronecker_V1.scala 41:21]
  assign unit_21_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_21_io_valueIn_re = io_matrixA_21_re; // @[Kronecker_V1.scala 41:21]
  assign unit_21_io_valueIn_im = io_matrixA_21_im; // @[Kronecker_V1.scala 41:21]
  assign unit_22_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_22_io_valueIn_re = io_matrixA_22_re; // @[Kronecker_V1.scala 41:21]
  assign unit_22_io_valueIn_im = io_matrixA_22_im; // @[Kronecker_V1.scala 41:21]
  assign unit_23_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_23_io_valueIn_re = io_matrixA_23_re; // @[Kronecker_V1.scala 41:21]
  assign unit_23_io_valueIn_im = io_matrixA_23_im; // @[Kronecker_V1.scala 41:21]
  assign unit_24_io_matrixIn_0_re = io_matrixB_0_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_0_im = io_matrixB_0_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_1_re = io_matrixB_1_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_1_im = io_matrixB_1_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_2_re = io_matrixB_2_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_2_im = io_matrixB_2_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_3_re = io_matrixB_3_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_3_im = io_matrixB_3_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_4_re = io_matrixB_4_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_4_im = io_matrixB_4_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_5_re = io_matrixB_5_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_5_im = io_matrixB_5_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_6_re = io_matrixB_6_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_6_im = io_matrixB_6_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_7_re = io_matrixB_7_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_7_im = io_matrixB_7_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_8_re = io_matrixB_8_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_8_im = io_matrixB_8_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_9_re = io_matrixB_9_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_9_im = io_matrixB_9_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_10_re = io_matrixB_10_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_10_im = io_matrixB_10_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_11_re = io_matrixB_11_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_11_im = io_matrixB_11_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_12_re = io_matrixB_12_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_12_im = io_matrixB_12_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_13_re = io_matrixB_13_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_13_im = io_matrixB_13_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_14_re = io_matrixB_14_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_14_im = io_matrixB_14_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_15_re = io_matrixB_15_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_15_im = io_matrixB_15_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_16_re = io_matrixB_16_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_16_im = io_matrixB_16_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_17_re = io_matrixB_17_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_17_im = io_matrixB_17_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_18_re = io_matrixB_18_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_18_im = io_matrixB_18_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_19_re = io_matrixB_19_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_19_im = io_matrixB_19_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_20_re = io_matrixB_20_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_20_im = io_matrixB_20_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_21_re = io_matrixB_21_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_21_im = io_matrixB_21_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_22_re = io_matrixB_22_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_22_im = io_matrixB_22_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_23_re = io_matrixB_23_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_23_im = io_matrixB_23_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_24_re = io_matrixB_24_re; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_matrixIn_24_im = io_matrixB_24_im; // @[Kronecker_V1.scala 40:22]
  assign unit_24_io_valueIn_re = io_matrixA_24_re; // @[Kronecker_V1.scala 41:21]
  assign unit_24_io_valueIn_im = io_matrixA_24_im; // @[Kronecker_V1.scala 41:21]
endmodule
