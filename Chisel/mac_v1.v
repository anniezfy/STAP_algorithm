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
module ComplexAdd(
  input  [63:0] io_op1_re,
  input  [63:0] io_op1_im,
  input  [63:0] io_op2_re,
  input  [63:0] io_op2_im,
  output [63:0] io_res_re,
  output [63:0] io_res_im
);
  assign io_res_re = $signed(io_op1_re) + $signed(io_op2_re); // @[Complex_Operater.scala 7:26]
  assign io_res_im = $signed(io_op1_im) + $signed(io_op2_im); // @[Complex_Operater.scala 8:26]
endmodule
module mac_v1(
  input         clock,
  input         reset,
  input  [63:0] io_vectorA_0_re,
  input  [63:0] io_vectorA_0_im,
  input  [63:0] io_vectorA_1_re,
  input  [63:0] io_vectorA_1_im,
  input  [63:0] io_vectorA_2_re,
  input  [63:0] io_vectorA_2_im,
  input  [63:0] io_vectorA_3_re,
  input  [63:0] io_vectorA_3_im,
  input  [63:0] io_vectorA_4_re,
  input  [63:0] io_vectorA_4_im,
  input  [63:0] io_vectorA_5_re,
  input  [63:0] io_vectorA_5_im,
  input  [63:0] io_vectorA_6_re,
  input  [63:0] io_vectorA_6_im,
  input  [63:0] io_vectorA_7_re,
  input  [63:0] io_vectorA_7_im,
  input  [63:0] io_vectorA_8_re,
  input  [63:0] io_vectorA_8_im,
  input  [63:0] io_vectorA_9_re,
  input  [63:0] io_vectorA_9_im,
  input  [63:0] io_vectorB_0_re,
  input  [63:0] io_vectorB_0_im,
  input  [63:0] io_vectorB_1_re,
  input  [63:0] io_vectorB_1_im,
  input  [63:0] io_vectorB_2_re,
  input  [63:0] io_vectorB_2_im,
  input  [63:0] io_vectorB_3_re,
  input  [63:0] io_vectorB_3_im,
  input  [63:0] io_vectorB_4_re,
  input  [63:0] io_vectorB_4_im,
  input  [63:0] io_vectorB_5_re,
  input  [63:0] io_vectorB_5_im,
  input  [63:0] io_vectorB_6_re,
  input  [63:0] io_vectorB_6_im,
  input  [63:0] io_vectorB_7_re,
  input  [63:0] io_vectorB_7_im,
  input  [63:0] io_vectorB_8_re,
  input  [63:0] io_vectorB_8_im,
  input  [63:0] io_vectorB_9_re,
  input  [63:0] io_vectorB_9_im,
  output [63:0] io_result_re,
  output [63:0] io_result_im
);
  wire [63:0] res_0_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_0_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_0_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_0_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_0_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_0_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_1_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_1_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_1_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_1_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_1_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_1_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_1_add_io_op1_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_1_add_io_op1_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_1_add_io_op2_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_1_add_io_op2_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_1_add_io_res_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_1_add_io_res_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_2_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_2_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_2_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_2_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_2_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_2_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_2_add_io_op1_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_2_add_io_op1_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_2_add_io_op2_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_2_add_io_op2_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_2_add_io_res_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_2_add_io_res_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_3_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_3_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_3_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_3_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_3_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_3_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_3_add_io_op1_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_3_add_io_op1_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_3_add_io_op2_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_3_add_io_op2_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_3_add_io_res_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_3_add_io_res_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_4_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_4_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_4_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_4_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_4_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_4_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_4_add_io_op1_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_4_add_io_op1_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_4_add_io_op2_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_4_add_io_op2_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_4_add_io_res_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_4_add_io_res_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_5_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_5_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_5_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_5_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_5_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_5_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_5_add_io_op1_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_5_add_io_op1_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_5_add_io_op2_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_5_add_io_op2_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_5_add_io_res_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_5_add_io_res_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_6_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_6_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_6_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_6_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_6_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_6_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_6_add_io_op1_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_6_add_io_op1_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_6_add_io_op2_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_6_add_io_op2_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_6_add_io_res_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_6_add_io_res_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_7_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_7_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_7_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_7_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_7_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_7_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_7_add_io_op1_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_7_add_io_op1_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_7_add_io_op2_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_7_add_io_op2_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_7_add_io_res_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_7_add_io_res_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_8_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_8_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_8_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_8_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_8_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_8_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_8_add_io_op1_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_8_add_io_op1_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_8_add_io_op2_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_8_add_io_op2_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_8_add_io_res_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_8_add_io_res_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_9_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_9_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_9_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_9_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_9_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_9_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] res_9_add_io_op1_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_9_add_io_op1_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_9_add_io_op2_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_9_add_io_op2_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_9_add_io_res_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] res_9_add_io_res_im; // @[Complex_Operater.scala 13:21]
  ComplexMul res_0_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(res_0_mul_io_op1_re),
    .io_op1_im(res_0_mul_io_op1_im),
    .io_op2_re(res_0_mul_io_op2_re),
    .io_op2_im(res_0_mul_io_op2_im),
    .io_res_re(res_0_mul_io_res_re),
    .io_res_im(res_0_mul_io_res_im)
  );
  ComplexMul res_1_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(res_1_mul_io_op1_re),
    .io_op1_im(res_1_mul_io_op1_im),
    .io_op2_re(res_1_mul_io_op2_re),
    .io_op2_im(res_1_mul_io_op2_im),
    .io_res_re(res_1_mul_io_res_re),
    .io_res_im(res_1_mul_io_res_im)
  );
  ComplexAdd res_1_add ( // @[Complex_Operater.scala 13:21]
    .io_op1_re(res_1_add_io_op1_re),
    .io_op1_im(res_1_add_io_op1_im),
    .io_op2_re(res_1_add_io_op2_re),
    .io_op2_im(res_1_add_io_op2_im),
    .io_res_re(res_1_add_io_res_re),
    .io_res_im(res_1_add_io_res_im)
  );
  ComplexMul res_2_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(res_2_mul_io_op1_re),
    .io_op1_im(res_2_mul_io_op1_im),
    .io_op2_re(res_2_mul_io_op2_re),
    .io_op2_im(res_2_mul_io_op2_im),
    .io_res_re(res_2_mul_io_res_re),
    .io_res_im(res_2_mul_io_res_im)
  );
  ComplexAdd res_2_add ( // @[Complex_Operater.scala 13:21]
    .io_op1_re(res_2_add_io_op1_re),
    .io_op1_im(res_2_add_io_op1_im),
    .io_op2_re(res_2_add_io_op2_re),
    .io_op2_im(res_2_add_io_op2_im),
    .io_res_re(res_2_add_io_res_re),
    .io_res_im(res_2_add_io_res_im)
  );
  ComplexMul res_3_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(res_3_mul_io_op1_re),
    .io_op1_im(res_3_mul_io_op1_im),
    .io_op2_re(res_3_mul_io_op2_re),
    .io_op2_im(res_3_mul_io_op2_im),
    .io_res_re(res_3_mul_io_res_re),
    .io_res_im(res_3_mul_io_res_im)
  );
  ComplexAdd res_3_add ( // @[Complex_Operater.scala 13:21]
    .io_op1_re(res_3_add_io_op1_re),
    .io_op1_im(res_3_add_io_op1_im),
    .io_op2_re(res_3_add_io_op2_re),
    .io_op2_im(res_3_add_io_op2_im),
    .io_res_re(res_3_add_io_res_re),
    .io_res_im(res_3_add_io_res_im)
  );
  ComplexMul res_4_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(res_4_mul_io_op1_re),
    .io_op1_im(res_4_mul_io_op1_im),
    .io_op2_re(res_4_mul_io_op2_re),
    .io_op2_im(res_4_mul_io_op2_im),
    .io_res_re(res_4_mul_io_res_re),
    .io_res_im(res_4_mul_io_res_im)
  );
  ComplexAdd res_4_add ( // @[Complex_Operater.scala 13:21]
    .io_op1_re(res_4_add_io_op1_re),
    .io_op1_im(res_4_add_io_op1_im),
    .io_op2_re(res_4_add_io_op2_re),
    .io_op2_im(res_4_add_io_op2_im),
    .io_res_re(res_4_add_io_res_re),
    .io_res_im(res_4_add_io_res_im)
  );
  ComplexMul res_5_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(res_5_mul_io_op1_re),
    .io_op1_im(res_5_mul_io_op1_im),
    .io_op2_re(res_5_mul_io_op2_re),
    .io_op2_im(res_5_mul_io_op2_im),
    .io_res_re(res_5_mul_io_res_re),
    .io_res_im(res_5_mul_io_res_im)
  );
  ComplexAdd res_5_add ( // @[Complex_Operater.scala 13:21]
    .io_op1_re(res_5_add_io_op1_re),
    .io_op1_im(res_5_add_io_op1_im),
    .io_op2_re(res_5_add_io_op2_re),
    .io_op2_im(res_5_add_io_op2_im),
    .io_res_re(res_5_add_io_res_re),
    .io_res_im(res_5_add_io_res_im)
  );
  ComplexMul res_6_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(res_6_mul_io_op1_re),
    .io_op1_im(res_6_mul_io_op1_im),
    .io_op2_re(res_6_mul_io_op2_re),
    .io_op2_im(res_6_mul_io_op2_im),
    .io_res_re(res_6_mul_io_res_re),
    .io_res_im(res_6_mul_io_res_im)
  );
  ComplexAdd res_6_add ( // @[Complex_Operater.scala 13:21]
    .io_op1_re(res_6_add_io_op1_re),
    .io_op1_im(res_6_add_io_op1_im),
    .io_op2_re(res_6_add_io_op2_re),
    .io_op2_im(res_6_add_io_op2_im),
    .io_res_re(res_6_add_io_res_re),
    .io_res_im(res_6_add_io_res_im)
  );
  ComplexMul res_7_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(res_7_mul_io_op1_re),
    .io_op1_im(res_7_mul_io_op1_im),
    .io_op2_re(res_7_mul_io_op2_re),
    .io_op2_im(res_7_mul_io_op2_im),
    .io_res_re(res_7_mul_io_res_re),
    .io_res_im(res_7_mul_io_res_im)
  );
  ComplexAdd res_7_add ( // @[Complex_Operater.scala 13:21]
    .io_op1_re(res_7_add_io_op1_re),
    .io_op1_im(res_7_add_io_op1_im),
    .io_op2_re(res_7_add_io_op2_re),
    .io_op2_im(res_7_add_io_op2_im),
    .io_res_re(res_7_add_io_res_re),
    .io_res_im(res_7_add_io_res_im)
  );
  ComplexMul res_8_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(res_8_mul_io_op1_re),
    .io_op1_im(res_8_mul_io_op1_im),
    .io_op2_re(res_8_mul_io_op2_re),
    .io_op2_im(res_8_mul_io_op2_im),
    .io_res_re(res_8_mul_io_res_re),
    .io_res_im(res_8_mul_io_res_im)
  );
  ComplexAdd res_8_add ( // @[Complex_Operater.scala 13:21]
    .io_op1_re(res_8_add_io_op1_re),
    .io_op1_im(res_8_add_io_op1_im),
    .io_op2_re(res_8_add_io_op2_re),
    .io_op2_im(res_8_add_io_op2_im),
    .io_res_re(res_8_add_io_res_re),
    .io_res_im(res_8_add_io_res_im)
  );
  ComplexMul res_9_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(res_9_mul_io_op1_re),
    .io_op1_im(res_9_mul_io_op1_im),
    .io_op2_re(res_9_mul_io_op2_re),
    .io_op2_im(res_9_mul_io_op2_im),
    .io_res_re(res_9_mul_io_res_re),
    .io_res_im(res_9_mul_io_res_im)
  );
  ComplexAdd res_9_add ( // @[Complex_Operater.scala 13:21]
    .io_op1_re(res_9_add_io_op1_re),
    .io_op1_im(res_9_add_io_op1_im),
    .io_op2_re(res_9_add_io_op2_re),
    .io_op2_im(res_9_add_io_op2_im),
    .io_res_re(res_9_add_io_res_re),
    .io_res_im(res_9_add_io_res_im)
  );
  assign io_result_re = res_9_add_io_res_re; // @[Mac_V1.scala 21:17 29:14]
  assign io_result_im = res_9_add_io_res_im; // @[Mac_V1.scala 21:17 29:14]
  assign res_0_mul_io_op1_re = io_vectorA_0_re; // @[Complex_Operater.scala 48:16]
  assign res_0_mul_io_op1_im = io_vectorA_0_im; // @[Complex_Operater.scala 48:16]
  assign res_0_mul_io_op2_re = io_vectorB_0_re; // @[Complex_Operater.scala 49:16]
  assign res_0_mul_io_op2_im = io_vectorB_0_im; // @[Complex_Operater.scala 49:16]
  assign res_1_mul_io_op1_re = io_vectorA_1_re; // @[Complex_Operater.scala 48:16]
  assign res_1_mul_io_op1_im = io_vectorA_1_im; // @[Complex_Operater.scala 48:16]
  assign res_1_mul_io_op2_re = io_vectorB_1_re; // @[Complex_Operater.scala 49:16]
  assign res_1_mul_io_op2_im = io_vectorB_1_im; // @[Complex_Operater.scala 49:16]
  assign res_1_add_io_op1_re = res_0_mul_io_res_re; // @[Mac_V1.scala 21:17 27:14]
  assign res_1_add_io_op1_im = res_0_mul_io_res_im; // @[Mac_V1.scala 21:17 27:14]
  assign res_1_add_io_op2_re = res_1_mul_io_res_re; // @[Complex_Operater.scala 15:16]
  assign res_1_add_io_op2_im = res_1_mul_io_res_im; // @[Complex_Operater.scala 15:16]
  assign res_2_mul_io_op1_re = io_vectorA_2_re; // @[Complex_Operater.scala 48:16]
  assign res_2_mul_io_op1_im = io_vectorA_2_im; // @[Complex_Operater.scala 48:16]
  assign res_2_mul_io_op2_re = io_vectorB_2_re; // @[Complex_Operater.scala 49:16]
  assign res_2_mul_io_op2_im = io_vectorB_2_im; // @[Complex_Operater.scala 49:16]
  assign res_2_add_io_op1_re = res_1_add_io_res_re; // @[Mac_V1.scala 21:17 29:14]
  assign res_2_add_io_op1_im = res_1_add_io_res_im; // @[Mac_V1.scala 21:17 29:14]
  assign res_2_add_io_op2_re = res_2_mul_io_res_re; // @[Complex_Operater.scala 15:16]
  assign res_2_add_io_op2_im = res_2_mul_io_res_im; // @[Complex_Operater.scala 15:16]
  assign res_3_mul_io_op1_re = io_vectorA_3_re; // @[Complex_Operater.scala 48:16]
  assign res_3_mul_io_op1_im = io_vectorA_3_im; // @[Complex_Operater.scala 48:16]
  assign res_3_mul_io_op2_re = io_vectorB_3_re; // @[Complex_Operater.scala 49:16]
  assign res_3_mul_io_op2_im = io_vectorB_3_im; // @[Complex_Operater.scala 49:16]
  assign res_3_add_io_op1_re = res_2_add_io_res_re; // @[Mac_V1.scala 21:17 29:14]
  assign res_3_add_io_op1_im = res_2_add_io_res_im; // @[Mac_V1.scala 21:17 29:14]
  assign res_3_add_io_op2_re = res_3_mul_io_res_re; // @[Complex_Operater.scala 15:16]
  assign res_3_add_io_op2_im = res_3_mul_io_res_im; // @[Complex_Operater.scala 15:16]
  assign res_4_mul_io_op1_re = io_vectorA_4_re; // @[Complex_Operater.scala 48:16]
  assign res_4_mul_io_op1_im = io_vectorA_4_im; // @[Complex_Operater.scala 48:16]
  assign res_4_mul_io_op2_re = io_vectorB_4_re; // @[Complex_Operater.scala 49:16]
  assign res_4_mul_io_op2_im = io_vectorB_4_im; // @[Complex_Operater.scala 49:16]
  assign res_4_add_io_op1_re = res_3_add_io_res_re; // @[Mac_V1.scala 21:17 29:14]
  assign res_4_add_io_op1_im = res_3_add_io_res_im; // @[Mac_V1.scala 21:17 29:14]
  assign res_4_add_io_op2_re = res_4_mul_io_res_re; // @[Complex_Operater.scala 15:16]
  assign res_4_add_io_op2_im = res_4_mul_io_res_im; // @[Complex_Operater.scala 15:16]
  assign res_5_mul_io_op1_re = io_vectorA_5_re; // @[Complex_Operater.scala 48:16]
  assign res_5_mul_io_op1_im = io_vectorA_5_im; // @[Complex_Operater.scala 48:16]
  assign res_5_mul_io_op2_re = io_vectorB_5_re; // @[Complex_Operater.scala 49:16]
  assign res_5_mul_io_op2_im = io_vectorB_5_im; // @[Complex_Operater.scala 49:16]
  assign res_5_add_io_op1_re = res_4_add_io_res_re; // @[Mac_V1.scala 21:17 29:14]
  assign res_5_add_io_op1_im = res_4_add_io_res_im; // @[Mac_V1.scala 21:17 29:14]
  assign res_5_add_io_op2_re = res_5_mul_io_res_re; // @[Complex_Operater.scala 15:16]
  assign res_5_add_io_op2_im = res_5_mul_io_res_im; // @[Complex_Operater.scala 15:16]
  assign res_6_mul_io_op1_re = io_vectorA_6_re; // @[Complex_Operater.scala 48:16]
  assign res_6_mul_io_op1_im = io_vectorA_6_im; // @[Complex_Operater.scala 48:16]
  assign res_6_mul_io_op2_re = io_vectorB_6_re; // @[Complex_Operater.scala 49:16]
  assign res_6_mul_io_op2_im = io_vectorB_6_im; // @[Complex_Operater.scala 49:16]
  assign res_6_add_io_op1_re = res_5_add_io_res_re; // @[Mac_V1.scala 21:17 29:14]
  assign res_6_add_io_op1_im = res_5_add_io_res_im; // @[Mac_V1.scala 21:17 29:14]
  assign res_6_add_io_op2_re = res_6_mul_io_res_re; // @[Complex_Operater.scala 15:16]
  assign res_6_add_io_op2_im = res_6_mul_io_res_im; // @[Complex_Operater.scala 15:16]
  assign res_7_mul_io_op1_re = io_vectorA_7_re; // @[Complex_Operater.scala 48:16]
  assign res_7_mul_io_op1_im = io_vectorA_7_im; // @[Complex_Operater.scala 48:16]
  assign res_7_mul_io_op2_re = io_vectorB_7_re; // @[Complex_Operater.scala 49:16]
  assign res_7_mul_io_op2_im = io_vectorB_7_im; // @[Complex_Operater.scala 49:16]
  assign res_7_add_io_op1_re = res_6_add_io_res_re; // @[Mac_V1.scala 21:17 29:14]
  assign res_7_add_io_op1_im = res_6_add_io_res_im; // @[Mac_V1.scala 21:17 29:14]
  assign res_7_add_io_op2_re = res_7_mul_io_res_re; // @[Complex_Operater.scala 15:16]
  assign res_7_add_io_op2_im = res_7_mul_io_res_im; // @[Complex_Operater.scala 15:16]
  assign res_8_mul_io_op1_re = io_vectorA_8_re; // @[Complex_Operater.scala 48:16]
  assign res_8_mul_io_op1_im = io_vectorA_8_im; // @[Complex_Operater.scala 48:16]
  assign res_8_mul_io_op2_re = io_vectorB_8_re; // @[Complex_Operater.scala 49:16]
  assign res_8_mul_io_op2_im = io_vectorB_8_im; // @[Complex_Operater.scala 49:16]
  assign res_8_add_io_op1_re = res_7_add_io_res_re; // @[Mac_V1.scala 21:17 29:14]
  assign res_8_add_io_op1_im = res_7_add_io_res_im; // @[Mac_V1.scala 21:17 29:14]
  assign res_8_add_io_op2_re = res_8_mul_io_res_re; // @[Complex_Operater.scala 15:16]
  assign res_8_add_io_op2_im = res_8_mul_io_res_im; // @[Complex_Operater.scala 15:16]
  assign res_9_mul_io_op1_re = io_vectorA_9_re; // @[Complex_Operater.scala 48:16]
  assign res_9_mul_io_op1_im = io_vectorA_9_im; // @[Complex_Operater.scala 48:16]
  assign res_9_mul_io_op2_re = io_vectorB_9_re; // @[Complex_Operater.scala 49:16]
  assign res_9_mul_io_op2_im = io_vectorB_9_im; // @[Complex_Operater.scala 49:16]
  assign res_9_add_io_op1_re = res_8_add_io_res_re; // @[Mac_V1.scala 21:17 29:14]
  assign res_9_add_io_op1_im = res_8_add_io_res_im; // @[Mac_V1.scala 21:17 29:14]
  assign res_9_add_io_op2_re = res_9_mul_io_res_re; // @[Complex_Operater.scala 15:16]
  assign res_9_add_io_op2_im = res_9_mul_io_res_im; // @[Complex_Operater.scala 15:16]
endmodule
