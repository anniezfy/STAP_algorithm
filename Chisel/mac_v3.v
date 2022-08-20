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
module mac_v3(
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
  input  [63:0] io_matrixA_25_re,
  input  [63:0] io_matrixA_25_im,
  input  [63:0] io_matrixA_26_re,
  input  [63:0] io_matrixA_26_im,
  input  [63:0] io_matrixA_27_re,
  input  [63:0] io_matrixA_27_im,
  input  [63:0] io_matrixA_28_re,
  input  [63:0] io_matrixA_28_im,
  input  [63:0] io_matrixA_29_re,
  input  [63:0] io_matrixA_29_im,
  input  [63:0] io_matrixA_30_re,
  input  [63:0] io_matrixA_30_im,
  input  [63:0] io_matrixA_31_re,
  input  [63:0] io_matrixA_31_im,
  input  [63:0] io_matrixA_32_re,
  input  [63:0] io_matrixA_32_im,
  input  [63:0] io_matrixA_33_re,
  input  [63:0] io_matrixA_33_im,
  input  [63:0] io_matrixA_34_re,
  input  [63:0] io_matrixA_34_im,
  input  [63:0] io_matrixA_35_re,
  input  [63:0] io_matrixA_35_im,
  input  [63:0] io_matrixA_36_re,
  input  [63:0] io_matrixA_36_im,
  input  [63:0] io_matrixA_37_re,
  input  [63:0] io_matrixA_37_im,
  input  [63:0] io_matrixA_38_re,
  input  [63:0] io_matrixA_38_im,
  input  [63:0] io_matrixA_39_re,
  input  [63:0] io_matrixA_39_im,
  input  [63:0] io_matrixA_40_re,
  input  [63:0] io_matrixA_40_im,
  input  [63:0] io_matrixA_41_re,
  input  [63:0] io_matrixA_41_im,
  input  [63:0] io_matrixA_42_re,
  input  [63:0] io_matrixA_42_im,
  input  [63:0] io_matrixA_43_re,
  input  [63:0] io_matrixA_43_im,
  input  [63:0] io_matrixA_44_re,
  input  [63:0] io_matrixA_44_im,
  input  [63:0] io_matrixA_45_re,
  input  [63:0] io_matrixA_45_im,
  input  [63:0] io_matrixA_46_re,
  input  [63:0] io_matrixA_46_im,
  input  [63:0] io_matrixA_47_re,
  input  [63:0] io_matrixA_47_im,
  input  [63:0] io_matrixA_48_re,
  input  [63:0] io_matrixA_48_im,
  input  [63:0] io_matrixA_49_re,
  input  [63:0] io_matrixA_49_im,
  input  [63:0] io_matrixA_50_re,
  input  [63:0] io_matrixA_50_im,
  input  [63:0] io_matrixA_51_re,
  input  [63:0] io_matrixA_51_im,
  input  [63:0] io_matrixA_52_re,
  input  [63:0] io_matrixA_52_im,
  input  [63:0] io_matrixA_53_re,
  input  [63:0] io_matrixA_53_im,
  input  [63:0] io_matrixA_54_re,
  input  [63:0] io_matrixA_54_im,
  input  [63:0] io_matrixA_55_re,
  input  [63:0] io_matrixA_55_im,
  input  [63:0] io_matrixA_56_re,
  input  [63:0] io_matrixA_56_im,
  input  [63:0] io_matrixA_57_re,
  input  [63:0] io_matrixA_57_im,
  input  [63:0] io_matrixA_58_re,
  input  [63:0] io_matrixA_58_im,
  input  [63:0] io_matrixA_59_re,
  input  [63:0] io_matrixA_59_im,
  input  [63:0] io_matrixA_60_re,
  input  [63:0] io_matrixA_60_im,
  input  [63:0] io_matrixA_61_re,
  input  [63:0] io_matrixA_61_im,
  input  [63:0] io_matrixA_62_re,
  input  [63:0] io_matrixA_62_im,
  input  [63:0] io_matrixA_63_re,
  input  [63:0] io_matrixA_63_im,
  input  [63:0] io_matrixA_64_re,
  input  [63:0] io_matrixA_64_im,
  input  [63:0] io_matrixA_65_re,
  input  [63:0] io_matrixA_65_im,
  input  [63:0] io_matrixA_66_re,
  input  [63:0] io_matrixA_66_im,
  input  [63:0] io_matrixA_67_re,
  input  [63:0] io_matrixA_67_im,
  input  [63:0] io_matrixA_68_re,
  input  [63:0] io_matrixA_68_im,
  input  [63:0] io_matrixA_69_re,
  input  [63:0] io_matrixA_69_im,
  input  [63:0] io_matrixA_70_re,
  input  [63:0] io_matrixA_70_im,
  input  [63:0] io_matrixA_71_re,
  input  [63:0] io_matrixA_71_im,
  input  [63:0] io_matrixA_72_re,
  input  [63:0] io_matrixA_72_im,
  input  [63:0] io_matrixA_73_re,
  input  [63:0] io_matrixA_73_im,
  input  [63:0] io_matrixA_74_re,
  input  [63:0] io_matrixA_74_im,
  input  [63:0] io_matrixA_75_re,
  input  [63:0] io_matrixA_75_im,
  input  [63:0] io_matrixA_76_re,
  input  [63:0] io_matrixA_76_im,
  input  [63:0] io_matrixA_77_re,
  input  [63:0] io_matrixA_77_im,
  input  [63:0] io_matrixA_78_re,
  input  [63:0] io_matrixA_78_im,
  input  [63:0] io_matrixA_79_re,
  input  [63:0] io_matrixA_79_im,
  input  [63:0] io_matrixA_80_re,
  input  [63:0] io_matrixA_80_im,
  input  [63:0] io_matrixA_81_re,
  input  [63:0] io_matrixA_81_im,
  input  [63:0] io_matrixA_82_re,
  input  [63:0] io_matrixA_82_im,
  input  [63:0] io_matrixA_83_re,
  input  [63:0] io_matrixA_83_im,
  input  [63:0] io_matrixA_84_re,
  input  [63:0] io_matrixA_84_im,
  input  [63:0] io_matrixA_85_re,
  input  [63:0] io_matrixA_85_im,
  input  [63:0] io_matrixA_86_re,
  input  [63:0] io_matrixA_86_im,
  input  [63:0] io_matrixA_87_re,
  input  [63:0] io_matrixA_87_im,
  input  [63:0] io_matrixA_88_re,
  input  [63:0] io_matrixA_88_im,
  input  [63:0] io_matrixA_89_re,
  input  [63:0] io_matrixA_89_im,
  input  [63:0] io_matrixA_90_re,
  input  [63:0] io_matrixA_90_im,
  input  [63:0] io_matrixA_91_re,
  input  [63:0] io_matrixA_91_im,
  input  [63:0] io_matrixA_92_re,
  input  [63:0] io_matrixA_92_im,
  input  [63:0] io_matrixA_93_re,
  input  [63:0] io_matrixA_93_im,
  input  [63:0] io_matrixA_94_re,
  input  [63:0] io_matrixA_94_im,
  input  [63:0] io_matrixA_95_re,
  input  [63:0] io_matrixA_95_im,
  input  [63:0] io_matrixA_96_re,
  input  [63:0] io_matrixA_96_im,
  input  [63:0] io_matrixA_97_re,
  input  [63:0] io_matrixA_97_im,
  input  [63:0] io_matrixA_98_re,
  input  [63:0] io_matrixA_98_im,
  input  [63:0] io_matrixA_99_re,
  input  [63:0] io_matrixA_99_im,
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
  output [63:0] io_vectorC_0_re,
  output [63:0] io_vectorC_0_im,
  output [63:0] io_vectorC_1_re,
  output [63:0] io_vectorC_1_im,
  output [63:0] io_vectorC_2_re,
  output [63:0] io_vectorC_2_im,
  output [63:0] io_vectorC_3_re,
  output [63:0] io_vectorC_3_im,
  output [63:0] io_vectorC_4_re,
  output [63:0] io_vectorC_4_im,
  output [63:0] io_vectorC_5_re,
  output [63:0] io_vectorC_5_im,
  output [63:0] io_vectorC_6_re,
  output [63:0] io_vectorC_6_im,
  output [63:0] io_vectorC_7_re,
  output [63:0] io_vectorC_7_im,
  output [63:0] io_vectorC_8_re,
  output [63:0] io_vectorC_8_im,
  output [63:0] io_vectorC_9_re,
  output [63:0] io_vectorC_9_im
);
  wire [63:0] io_vectorC_0_unit_io_vectorA_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorA_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_vectorB_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_result_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_0_unit_io_result_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorA_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_vectorB_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_result_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_1_unit_io_result_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorA_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_vectorB_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_result_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_2_unit_io_result_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorA_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_vectorB_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_result_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_3_unit_io_result_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorA_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_vectorB_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_result_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_4_unit_io_result_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorA_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_vectorB_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_result_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_5_unit_io_result_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorA_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_vectorB_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_result_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_6_unit_io_result_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorA_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_vectorB_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_result_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_7_unit_io_result_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorA_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_vectorB_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_result_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_8_unit_io_result_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorA_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_0_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_0_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_1_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_1_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_2_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_2_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_3_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_3_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_4_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_4_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_5_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_5_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_6_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_6_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_7_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_7_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_8_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_8_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_9_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_vectorB_9_im; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_result_re; // @[Mac_V1.scala 45:22]
  wire [63:0] io_vectorC_9_unit_io_result_im; // @[Mac_V1.scala 45:22]
  mac_v1 io_vectorC_0_unit ( // @[Mac_V1.scala 45:22]
    .io_vectorA_0_re(io_vectorC_0_unit_io_vectorA_0_re),
    .io_vectorA_0_im(io_vectorC_0_unit_io_vectorA_0_im),
    .io_vectorA_1_re(io_vectorC_0_unit_io_vectorA_1_re),
    .io_vectorA_1_im(io_vectorC_0_unit_io_vectorA_1_im),
    .io_vectorA_2_re(io_vectorC_0_unit_io_vectorA_2_re),
    .io_vectorA_2_im(io_vectorC_0_unit_io_vectorA_2_im),
    .io_vectorA_3_re(io_vectorC_0_unit_io_vectorA_3_re),
    .io_vectorA_3_im(io_vectorC_0_unit_io_vectorA_3_im),
    .io_vectorA_4_re(io_vectorC_0_unit_io_vectorA_4_re),
    .io_vectorA_4_im(io_vectorC_0_unit_io_vectorA_4_im),
    .io_vectorA_5_re(io_vectorC_0_unit_io_vectorA_5_re),
    .io_vectorA_5_im(io_vectorC_0_unit_io_vectorA_5_im),
    .io_vectorA_6_re(io_vectorC_0_unit_io_vectorA_6_re),
    .io_vectorA_6_im(io_vectorC_0_unit_io_vectorA_6_im),
    .io_vectorA_7_re(io_vectorC_0_unit_io_vectorA_7_re),
    .io_vectorA_7_im(io_vectorC_0_unit_io_vectorA_7_im),
    .io_vectorA_8_re(io_vectorC_0_unit_io_vectorA_8_re),
    .io_vectorA_8_im(io_vectorC_0_unit_io_vectorA_8_im),
    .io_vectorA_9_re(io_vectorC_0_unit_io_vectorA_9_re),
    .io_vectorA_9_im(io_vectorC_0_unit_io_vectorA_9_im),
    .io_vectorB_0_re(io_vectorC_0_unit_io_vectorB_0_re),
    .io_vectorB_0_im(io_vectorC_0_unit_io_vectorB_0_im),
    .io_vectorB_1_re(io_vectorC_0_unit_io_vectorB_1_re),
    .io_vectorB_1_im(io_vectorC_0_unit_io_vectorB_1_im),
    .io_vectorB_2_re(io_vectorC_0_unit_io_vectorB_2_re),
    .io_vectorB_2_im(io_vectorC_0_unit_io_vectorB_2_im),
    .io_vectorB_3_re(io_vectorC_0_unit_io_vectorB_3_re),
    .io_vectorB_3_im(io_vectorC_0_unit_io_vectorB_3_im),
    .io_vectorB_4_re(io_vectorC_0_unit_io_vectorB_4_re),
    .io_vectorB_4_im(io_vectorC_0_unit_io_vectorB_4_im),
    .io_vectorB_5_re(io_vectorC_0_unit_io_vectorB_5_re),
    .io_vectorB_5_im(io_vectorC_0_unit_io_vectorB_5_im),
    .io_vectorB_6_re(io_vectorC_0_unit_io_vectorB_6_re),
    .io_vectorB_6_im(io_vectorC_0_unit_io_vectorB_6_im),
    .io_vectorB_7_re(io_vectorC_0_unit_io_vectorB_7_re),
    .io_vectorB_7_im(io_vectorC_0_unit_io_vectorB_7_im),
    .io_vectorB_8_re(io_vectorC_0_unit_io_vectorB_8_re),
    .io_vectorB_8_im(io_vectorC_0_unit_io_vectorB_8_im),
    .io_vectorB_9_re(io_vectorC_0_unit_io_vectorB_9_re),
    .io_vectorB_9_im(io_vectorC_0_unit_io_vectorB_9_im),
    .io_result_re(io_vectorC_0_unit_io_result_re),
    .io_result_im(io_vectorC_0_unit_io_result_im)
  );
  mac_v1 io_vectorC_1_unit ( // @[Mac_V1.scala 45:22]
    .io_vectorA_0_re(io_vectorC_1_unit_io_vectorA_0_re),
    .io_vectorA_0_im(io_vectorC_1_unit_io_vectorA_0_im),
    .io_vectorA_1_re(io_vectorC_1_unit_io_vectorA_1_re),
    .io_vectorA_1_im(io_vectorC_1_unit_io_vectorA_1_im),
    .io_vectorA_2_re(io_vectorC_1_unit_io_vectorA_2_re),
    .io_vectorA_2_im(io_vectorC_1_unit_io_vectorA_2_im),
    .io_vectorA_3_re(io_vectorC_1_unit_io_vectorA_3_re),
    .io_vectorA_3_im(io_vectorC_1_unit_io_vectorA_3_im),
    .io_vectorA_4_re(io_vectorC_1_unit_io_vectorA_4_re),
    .io_vectorA_4_im(io_vectorC_1_unit_io_vectorA_4_im),
    .io_vectorA_5_re(io_vectorC_1_unit_io_vectorA_5_re),
    .io_vectorA_5_im(io_vectorC_1_unit_io_vectorA_5_im),
    .io_vectorA_6_re(io_vectorC_1_unit_io_vectorA_6_re),
    .io_vectorA_6_im(io_vectorC_1_unit_io_vectorA_6_im),
    .io_vectorA_7_re(io_vectorC_1_unit_io_vectorA_7_re),
    .io_vectorA_7_im(io_vectorC_1_unit_io_vectorA_7_im),
    .io_vectorA_8_re(io_vectorC_1_unit_io_vectorA_8_re),
    .io_vectorA_8_im(io_vectorC_1_unit_io_vectorA_8_im),
    .io_vectorA_9_re(io_vectorC_1_unit_io_vectorA_9_re),
    .io_vectorA_9_im(io_vectorC_1_unit_io_vectorA_9_im),
    .io_vectorB_0_re(io_vectorC_1_unit_io_vectorB_0_re),
    .io_vectorB_0_im(io_vectorC_1_unit_io_vectorB_0_im),
    .io_vectorB_1_re(io_vectorC_1_unit_io_vectorB_1_re),
    .io_vectorB_1_im(io_vectorC_1_unit_io_vectorB_1_im),
    .io_vectorB_2_re(io_vectorC_1_unit_io_vectorB_2_re),
    .io_vectorB_2_im(io_vectorC_1_unit_io_vectorB_2_im),
    .io_vectorB_3_re(io_vectorC_1_unit_io_vectorB_3_re),
    .io_vectorB_3_im(io_vectorC_1_unit_io_vectorB_3_im),
    .io_vectorB_4_re(io_vectorC_1_unit_io_vectorB_4_re),
    .io_vectorB_4_im(io_vectorC_1_unit_io_vectorB_4_im),
    .io_vectorB_5_re(io_vectorC_1_unit_io_vectorB_5_re),
    .io_vectorB_5_im(io_vectorC_1_unit_io_vectorB_5_im),
    .io_vectorB_6_re(io_vectorC_1_unit_io_vectorB_6_re),
    .io_vectorB_6_im(io_vectorC_1_unit_io_vectorB_6_im),
    .io_vectorB_7_re(io_vectorC_1_unit_io_vectorB_7_re),
    .io_vectorB_7_im(io_vectorC_1_unit_io_vectorB_7_im),
    .io_vectorB_8_re(io_vectorC_1_unit_io_vectorB_8_re),
    .io_vectorB_8_im(io_vectorC_1_unit_io_vectorB_8_im),
    .io_vectorB_9_re(io_vectorC_1_unit_io_vectorB_9_re),
    .io_vectorB_9_im(io_vectorC_1_unit_io_vectorB_9_im),
    .io_result_re(io_vectorC_1_unit_io_result_re),
    .io_result_im(io_vectorC_1_unit_io_result_im)
  );
  mac_v1 io_vectorC_2_unit ( // @[Mac_V1.scala 45:22]
    .io_vectorA_0_re(io_vectorC_2_unit_io_vectorA_0_re),
    .io_vectorA_0_im(io_vectorC_2_unit_io_vectorA_0_im),
    .io_vectorA_1_re(io_vectorC_2_unit_io_vectorA_1_re),
    .io_vectorA_1_im(io_vectorC_2_unit_io_vectorA_1_im),
    .io_vectorA_2_re(io_vectorC_2_unit_io_vectorA_2_re),
    .io_vectorA_2_im(io_vectorC_2_unit_io_vectorA_2_im),
    .io_vectorA_3_re(io_vectorC_2_unit_io_vectorA_3_re),
    .io_vectorA_3_im(io_vectorC_2_unit_io_vectorA_3_im),
    .io_vectorA_4_re(io_vectorC_2_unit_io_vectorA_4_re),
    .io_vectorA_4_im(io_vectorC_2_unit_io_vectorA_4_im),
    .io_vectorA_5_re(io_vectorC_2_unit_io_vectorA_5_re),
    .io_vectorA_5_im(io_vectorC_2_unit_io_vectorA_5_im),
    .io_vectorA_6_re(io_vectorC_2_unit_io_vectorA_6_re),
    .io_vectorA_6_im(io_vectorC_2_unit_io_vectorA_6_im),
    .io_vectorA_7_re(io_vectorC_2_unit_io_vectorA_7_re),
    .io_vectorA_7_im(io_vectorC_2_unit_io_vectorA_7_im),
    .io_vectorA_8_re(io_vectorC_2_unit_io_vectorA_8_re),
    .io_vectorA_8_im(io_vectorC_2_unit_io_vectorA_8_im),
    .io_vectorA_9_re(io_vectorC_2_unit_io_vectorA_9_re),
    .io_vectorA_9_im(io_vectorC_2_unit_io_vectorA_9_im),
    .io_vectorB_0_re(io_vectorC_2_unit_io_vectorB_0_re),
    .io_vectorB_0_im(io_vectorC_2_unit_io_vectorB_0_im),
    .io_vectorB_1_re(io_vectorC_2_unit_io_vectorB_1_re),
    .io_vectorB_1_im(io_vectorC_2_unit_io_vectorB_1_im),
    .io_vectorB_2_re(io_vectorC_2_unit_io_vectorB_2_re),
    .io_vectorB_2_im(io_vectorC_2_unit_io_vectorB_2_im),
    .io_vectorB_3_re(io_vectorC_2_unit_io_vectorB_3_re),
    .io_vectorB_3_im(io_vectorC_2_unit_io_vectorB_3_im),
    .io_vectorB_4_re(io_vectorC_2_unit_io_vectorB_4_re),
    .io_vectorB_4_im(io_vectorC_2_unit_io_vectorB_4_im),
    .io_vectorB_5_re(io_vectorC_2_unit_io_vectorB_5_re),
    .io_vectorB_5_im(io_vectorC_2_unit_io_vectorB_5_im),
    .io_vectorB_6_re(io_vectorC_2_unit_io_vectorB_6_re),
    .io_vectorB_6_im(io_vectorC_2_unit_io_vectorB_6_im),
    .io_vectorB_7_re(io_vectorC_2_unit_io_vectorB_7_re),
    .io_vectorB_7_im(io_vectorC_2_unit_io_vectorB_7_im),
    .io_vectorB_8_re(io_vectorC_2_unit_io_vectorB_8_re),
    .io_vectorB_8_im(io_vectorC_2_unit_io_vectorB_8_im),
    .io_vectorB_9_re(io_vectorC_2_unit_io_vectorB_9_re),
    .io_vectorB_9_im(io_vectorC_2_unit_io_vectorB_9_im),
    .io_result_re(io_vectorC_2_unit_io_result_re),
    .io_result_im(io_vectorC_2_unit_io_result_im)
  );
  mac_v1 io_vectorC_3_unit ( // @[Mac_V1.scala 45:22]
    .io_vectorA_0_re(io_vectorC_3_unit_io_vectorA_0_re),
    .io_vectorA_0_im(io_vectorC_3_unit_io_vectorA_0_im),
    .io_vectorA_1_re(io_vectorC_3_unit_io_vectorA_1_re),
    .io_vectorA_1_im(io_vectorC_3_unit_io_vectorA_1_im),
    .io_vectorA_2_re(io_vectorC_3_unit_io_vectorA_2_re),
    .io_vectorA_2_im(io_vectorC_3_unit_io_vectorA_2_im),
    .io_vectorA_3_re(io_vectorC_3_unit_io_vectorA_3_re),
    .io_vectorA_3_im(io_vectorC_3_unit_io_vectorA_3_im),
    .io_vectorA_4_re(io_vectorC_3_unit_io_vectorA_4_re),
    .io_vectorA_4_im(io_vectorC_3_unit_io_vectorA_4_im),
    .io_vectorA_5_re(io_vectorC_3_unit_io_vectorA_5_re),
    .io_vectorA_5_im(io_vectorC_3_unit_io_vectorA_5_im),
    .io_vectorA_6_re(io_vectorC_3_unit_io_vectorA_6_re),
    .io_vectorA_6_im(io_vectorC_3_unit_io_vectorA_6_im),
    .io_vectorA_7_re(io_vectorC_3_unit_io_vectorA_7_re),
    .io_vectorA_7_im(io_vectorC_3_unit_io_vectorA_7_im),
    .io_vectorA_8_re(io_vectorC_3_unit_io_vectorA_8_re),
    .io_vectorA_8_im(io_vectorC_3_unit_io_vectorA_8_im),
    .io_vectorA_9_re(io_vectorC_3_unit_io_vectorA_9_re),
    .io_vectorA_9_im(io_vectorC_3_unit_io_vectorA_9_im),
    .io_vectorB_0_re(io_vectorC_3_unit_io_vectorB_0_re),
    .io_vectorB_0_im(io_vectorC_3_unit_io_vectorB_0_im),
    .io_vectorB_1_re(io_vectorC_3_unit_io_vectorB_1_re),
    .io_vectorB_1_im(io_vectorC_3_unit_io_vectorB_1_im),
    .io_vectorB_2_re(io_vectorC_3_unit_io_vectorB_2_re),
    .io_vectorB_2_im(io_vectorC_3_unit_io_vectorB_2_im),
    .io_vectorB_3_re(io_vectorC_3_unit_io_vectorB_3_re),
    .io_vectorB_3_im(io_vectorC_3_unit_io_vectorB_3_im),
    .io_vectorB_4_re(io_vectorC_3_unit_io_vectorB_4_re),
    .io_vectorB_4_im(io_vectorC_3_unit_io_vectorB_4_im),
    .io_vectorB_5_re(io_vectorC_3_unit_io_vectorB_5_re),
    .io_vectorB_5_im(io_vectorC_3_unit_io_vectorB_5_im),
    .io_vectorB_6_re(io_vectorC_3_unit_io_vectorB_6_re),
    .io_vectorB_6_im(io_vectorC_3_unit_io_vectorB_6_im),
    .io_vectorB_7_re(io_vectorC_3_unit_io_vectorB_7_re),
    .io_vectorB_7_im(io_vectorC_3_unit_io_vectorB_7_im),
    .io_vectorB_8_re(io_vectorC_3_unit_io_vectorB_8_re),
    .io_vectorB_8_im(io_vectorC_3_unit_io_vectorB_8_im),
    .io_vectorB_9_re(io_vectorC_3_unit_io_vectorB_9_re),
    .io_vectorB_9_im(io_vectorC_3_unit_io_vectorB_9_im),
    .io_result_re(io_vectorC_3_unit_io_result_re),
    .io_result_im(io_vectorC_3_unit_io_result_im)
  );
  mac_v1 io_vectorC_4_unit ( // @[Mac_V1.scala 45:22]
    .io_vectorA_0_re(io_vectorC_4_unit_io_vectorA_0_re),
    .io_vectorA_0_im(io_vectorC_4_unit_io_vectorA_0_im),
    .io_vectorA_1_re(io_vectorC_4_unit_io_vectorA_1_re),
    .io_vectorA_1_im(io_vectorC_4_unit_io_vectorA_1_im),
    .io_vectorA_2_re(io_vectorC_4_unit_io_vectorA_2_re),
    .io_vectorA_2_im(io_vectorC_4_unit_io_vectorA_2_im),
    .io_vectorA_3_re(io_vectorC_4_unit_io_vectorA_3_re),
    .io_vectorA_3_im(io_vectorC_4_unit_io_vectorA_3_im),
    .io_vectorA_4_re(io_vectorC_4_unit_io_vectorA_4_re),
    .io_vectorA_4_im(io_vectorC_4_unit_io_vectorA_4_im),
    .io_vectorA_5_re(io_vectorC_4_unit_io_vectorA_5_re),
    .io_vectorA_5_im(io_vectorC_4_unit_io_vectorA_5_im),
    .io_vectorA_6_re(io_vectorC_4_unit_io_vectorA_6_re),
    .io_vectorA_6_im(io_vectorC_4_unit_io_vectorA_6_im),
    .io_vectorA_7_re(io_vectorC_4_unit_io_vectorA_7_re),
    .io_vectorA_7_im(io_vectorC_4_unit_io_vectorA_7_im),
    .io_vectorA_8_re(io_vectorC_4_unit_io_vectorA_8_re),
    .io_vectorA_8_im(io_vectorC_4_unit_io_vectorA_8_im),
    .io_vectorA_9_re(io_vectorC_4_unit_io_vectorA_9_re),
    .io_vectorA_9_im(io_vectorC_4_unit_io_vectorA_9_im),
    .io_vectorB_0_re(io_vectorC_4_unit_io_vectorB_0_re),
    .io_vectorB_0_im(io_vectorC_4_unit_io_vectorB_0_im),
    .io_vectorB_1_re(io_vectorC_4_unit_io_vectorB_1_re),
    .io_vectorB_1_im(io_vectorC_4_unit_io_vectorB_1_im),
    .io_vectorB_2_re(io_vectorC_4_unit_io_vectorB_2_re),
    .io_vectorB_2_im(io_vectorC_4_unit_io_vectorB_2_im),
    .io_vectorB_3_re(io_vectorC_4_unit_io_vectorB_3_re),
    .io_vectorB_3_im(io_vectorC_4_unit_io_vectorB_3_im),
    .io_vectorB_4_re(io_vectorC_4_unit_io_vectorB_4_re),
    .io_vectorB_4_im(io_vectorC_4_unit_io_vectorB_4_im),
    .io_vectorB_5_re(io_vectorC_4_unit_io_vectorB_5_re),
    .io_vectorB_5_im(io_vectorC_4_unit_io_vectorB_5_im),
    .io_vectorB_6_re(io_vectorC_4_unit_io_vectorB_6_re),
    .io_vectorB_6_im(io_vectorC_4_unit_io_vectorB_6_im),
    .io_vectorB_7_re(io_vectorC_4_unit_io_vectorB_7_re),
    .io_vectorB_7_im(io_vectorC_4_unit_io_vectorB_7_im),
    .io_vectorB_8_re(io_vectorC_4_unit_io_vectorB_8_re),
    .io_vectorB_8_im(io_vectorC_4_unit_io_vectorB_8_im),
    .io_vectorB_9_re(io_vectorC_4_unit_io_vectorB_9_re),
    .io_vectorB_9_im(io_vectorC_4_unit_io_vectorB_9_im),
    .io_result_re(io_vectorC_4_unit_io_result_re),
    .io_result_im(io_vectorC_4_unit_io_result_im)
  );
  mac_v1 io_vectorC_5_unit ( // @[Mac_V1.scala 45:22]
    .io_vectorA_0_re(io_vectorC_5_unit_io_vectorA_0_re),
    .io_vectorA_0_im(io_vectorC_5_unit_io_vectorA_0_im),
    .io_vectorA_1_re(io_vectorC_5_unit_io_vectorA_1_re),
    .io_vectorA_1_im(io_vectorC_5_unit_io_vectorA_1_im),
    .io_vectorA_2_re(io_vectorC_5_unit_io_vectorA_2_re),
    .io_vectorA_2_im(io_vectorC_5_unit_io_vectorA_2_im),
    .io_vectorA_3_re(io_vectorC_5_unit_io_vectorA_3_re),
    .io_vectorA_3_im(io_vectorC_5_unit_io_vectorA_3_im),
    .io_vectorA_4_re(io_vectorC_5_unit_io_vectorA_4_re),
    .io_vectorA_4_im(io_vectorC_5_unit_io_vectorA_4_im),
    .io_vectorA_5_re(io_vectorC_5_unit_io_vectorA_5_re),
    .io_vectorA_5_im(io_vectorC_5_unit_io_vectorA_5_im),
    .io_vectorA_6_re(io_vectorC_5_unit_io_vectorA_6_re),
    .io_vectorA_6_im(io_vectorC_5_unit_io_vectorA_6_im),
    .io_vectorA_7_re(io_vectorC_5_unit_io_vectorA_7_re),
    .io_vectorA_7_im(io_vectorC_5_unit_io_vectorA_7_im),
    .io_vectorA_8_re(io_vectorC_5_unit_io_vectorA_8_re),
    .io_vectorA_8_im(io_vectorC_5_unit_io_vectorA_8_im),
    .io_vectorA_9_re(io_vectorC_5_unit_io_vectorA_9_re),
    .io_vectorA_9_im(io_vectorC_5_unit_io_vectorA_9_im),
    .io_vectorB_0_re(io_vectorC_5_unit_io_vectorB_0_re),
    .io_vectorB_0_im(io_vectorC_5_unit_io_vectorB_0_im),
    .io_vectorB_1_re(io_vectorC_5_unit_io_vectorB_1_re),
    .io_vectorB_1_im(io_vectorC_5_unit_io_vectorB_1_im),
    .io_vectorB_2_re(io_vectorC_5_unit_io_vectorB_2_re),
    .io_vectorB_2_im(io_vectorC_5_unit_io_vectorB_2_im),
    .io_vectorB_3_re(io_vectorC_5_unit_io_vectorB_3_re),
    .io_vectorB_3_im(io_vectorC_5_unit_io_vectorB_3_im),
    .io_vectorB_4_re(io_vectorC_5_unit_io_vectorB_4_re),
    .io_vectorB_4_im(io_vectorC_5_unit_io_vectorB_4_im),
    .io_vectorB_5_re(io_vectorC_5_unit_io_vectorB_5_re),
    .io_vectorB_5_im(io_vectorC_5_unit_io_vectorB_5_im),
    .io_vectorB_6_re(io_vectorC_5_unit_io_vectorB_6_re),
    .io_vectorB_6_im(io_vectorC_5_unit_io_vectorB_6_im),
    .io_vectorB_7_re(io_vectorC_5_unit_io_vectorB_7_re),
    .io_vectorB_7_im(io_vectorC_5_unit_io_vectorB_7_im),
    .io_vectorB_8_re(io_vectorC_5_unit_io_vectorB_8_re),
    .io_vectorB_8_im(io_vectorC_5_unit_io_vectorB_8_im),
    .io_vectorB_9_re(io_vectorC_5_unit_io_vectorB_9_re),
    .io_vectorB_9_im(io_vectorC_5_unit_io_vectorB_9_im),
    .io_result_re(io_vectorC_5_unit_io_result_re),
    .io_result_im(io_vectorC_5_unit_io_result_im)
  );
  mac_v1 io_vectorC_6_unit ( // @[Mac_V1.scala 45:22]
    .io_vectorA_0_re(io_vectorC_6_unit_io_vectorA_0_re),
    .io_vectorA_0_im(io_vectorC_6_unit_io_vectorA_0_im),
    .io_vectorA_1_re(io_vectorC_6_unit_io_vectorA_1_re),
    .io_vectorA_1_im(io_vectorC_6_unit_io_vectorA_1_im),
    .io_vectorA_2_re(io_vectorC_6_unit_io_vectorA_2_re),
    .io_vectorA_2_im(io_vectorC_6_unit_io_vectorA_2_im),
    .io_vectorA_3_re(io_vectorC_6_unit_io_vectorA_3_re),
    .io_vectorA_3_im(io_vectorC_6_unit_io_vectorA_3_im),
    .io_vectorA_4_re(io_vectorC_6_unit_io_vectorA_4_re),
    .io_vectorA_4_im(io_vectorC_6_unit_io_vectorA_4_im),
    .io_vectorA_5_re(io_vectorC_6_unit_io_vectorA_5_re),
    .io_vectorA_5_im(io_vectorC_6_unit_io_vectorA_5_im),
    .io_vectorA_6_re(io_vectorC_6_unit_io_vectorA_6_re),
    .io_vectorA_6_im(io_vectorC_6_unit_io_vectorA_6_im),
    .io_vectorA_7_re(io_vectorC_6_unit_io_vectorA_7_re),
    .io_vectorA_7_im(io_vectorC_6_unit_io_vectorA_7_im),
    .io_vectorA_8_re(io_vectorC_6_unit_io_vectorA_8_re),
    .io_vectorA_8_im(io_vectorC_6_unit_io_vectorA_8_im),
    .io_vectorA_9_re(io_vectorC_6_unit_io_vectorA_9_re),
    .io_vectorA_9_im(io_vectorC_6_unit_io_vectorA_9_im),
    .io_vectorB_0_re(io_vectorC_6_unit_io_vectorB_0_re),
    .io_vectorB_0_im(io_vectorC_6_unit_io_vectorB_0_im),
    .io_vectorB_1_re(io_vectorC_6_unit_io_vectorB_1_re),
    .io_vectorB_1_im(io_vectorC_6_unit_io_vectorB_1_im),
    .io_vectorB_2_re(io_vectorC_6_unit_io_vectorB_2_re),
    .io_vectorB_2_im(io_vectorC_6_unit_io_vectorB_2_im),
    .io_vectorB_3_re(io_vectorC_6_unit_io_vectorB_3_re),
    .io_vectorB_3_im(io_vectorC_6_unit_io_vectorB_3_im),
    .io_vectorB_4_re(io_vectorC_6_unit_io_vectorB_4_re),
    .io_vectorB_4_im(io_vectorC_6_unit_io_vectorB_4_im),
    .io_vectorB_5_re(io_vectorC_6_unit_io_vectorB_5_re),
    .io_vectorB_5_im(io_vectorC_6_unit_io_vectorB_5_im),
    .io_vectorB_6_re(io_vectorC_6_unit_io_vectorB_6_re),
    .io_vectorB_6_im(io_vectorC_6_unit_io_vectorB_6_im),
    .io_vectorB_7_re(io_vectorC_6_unit_io_vectorB_7_re),
    .io_vectorB_7_im(io_vectorC_6_unit_io_vectorB_7_im),
    .io_vectorB_8_re(io_vectorC_6_unit_io_vectorB_8_re),
    .io_vectorB_8_im(io_vectorC_6_unit_io_vectorB_8_im),
    .io_vectorB_9_re(io_vectorC_6_unit_io_vectorB_9_re),
    .io_vectorB_9_im(io_vectorC_6_unit_io_vectorB_9_im),
    .io_result_re(io_vectorC_6_unit_io_result_re),
    .io_result_im(io_vectorC_6_unit_io_result_im)
  );
  mac_v1 io_vectorC_7_unit ( // @[Mac_V1.scala 45:22]
    .io_vectorA_0_re(io_vectorC_7_unit_io_vectorA_0_re),
    .io_vectorA_0_im(io_vectorC_7_unit_io_vectorA_0_im),
    .io_vectorA_1_re(io_vectorC_7_unit_io_vectorA_1_re),
    .io_vectorA_1_im(io_vectorC_7_unit_io_vectorA_1_im),
    .io_vectorA_2_re(io_vectorC_7_unit_io_vectorA_2_re),
    .io_vectorA_2_im(io_vectorC_7_unit_io_vectorA_2_im),
    .io_vectorA_3_re(io_vectorC_7_unit_io_vectorA_3_re),
    .io_vectorA_3_im(io_vectorC_7_unit_io_vectorA_3_im),
    .io_vectorA_4_re(io_vectorC_7_unit_io_vectorA_4_re),
    .io_vectorA_4_im(io_vectorC_7_unit_io_vectorA_4_im),
    .io_vectorA_5_re(io_vectorC_7_unit_io_vectorA_5_re),
    .io_vectorA_5_im(io_vectorC_7_unit_io_vectorA_5_im),
    .io_vectorA_6_re(io_vectorC_7_unit_io_vectorA_6_re),
    .io_vectorA_6_im(io_vectorC_7_unit_io_vectorA_6_im),
    .io_vectorA_7_re(io_vectorC_7_unit_io_vectorA_7_re),
    .io_vectorA_7_im(io_vectorC_7_unit_io_vectorA_7_im),
    .io_vectorA_8_re(io_vectorC_7_unit_io_vectorA_8_re),
    .io_vectorA_8_im(io_vectorC_7_unit_io_vectorA_8_im),
    .io_vectorA_9_re(io_vectorC_7_unit_io_vectorA_9_re),
    .io_vectorA_9_im(io_vectorC_7_unit_io_vectorA_9_im),
    .io_vectorB_0_re(io_vectorC_7_unit_io_vectorB_0_re),
    .io_vectorB_0_im(io_vectorC_7_unit_io_vectorB_0_im),
    .io_vectorB_1_re(io_vectorC_7_unit_io_vectorB_1_re),
    .io_vectorB_1_im(io_vectorC_7_unit_io_vectorB_1_im),
    .io_vectorB_2_re(io_vectorC_7_unit_io_vectorB_2_re),
    .io_vectorB_2_im(io_vectorC_7_unit_io_vectorB_2_im),
    .io_vectorB_3_re(io_vectorC_7_unit_io_vectorB_3_re),
    .io_vectorB_3_im(io_vectorC_7_unit_io_vectorB_3_im),
    .io_vectorB_4_re(io_vectorC_7_unit_io_vectorB_4_re),
    .io_vectorB_4_im(io_vectorC_7_unit_io_vectorB_4_im),
    .io_vectorB_5_re(io_vectorC_7_unit_io_vectorB_5_re),
    .io_vectorB_5_im(io_vectorC_7_unit_io_vectorB_5_im),
    .io_vectorB_6_re(io_vectorC_7_unit_io_vectorB_6_re),
    .io_vectorB_6_im(io_vectorC_7_unit_io_vectorB_6_im),
    .io_vectorB_7_re(io_vectorC_7_unit_io_vectorB_7_re),
    .io_vectorB_7_im(io_vectorC_7_unit_io_vectorB_7_im),
    .io_vectorB_8_re(io_vectorC_7_unit_io_vectorB_8_re),
    .io_vectorB_8_im(io_vectorC_7_unit_io_vectorB_8_im),
    .io_vectorB_9_re(io_vectorC_7_unit_io_vectorB_9_re),
    .io_vectorB_9_im(io_vectorC_7_unit_io_vectorB_9_im),
    .io_result_re(io_vectorC_7_unit_io_result_re),
    .io_result_im(io_vectorC_7_unit_io_result_im)
  );
  mac_v1 io_vectorC_8_unit ( // @[Mac_V1.scala 45:22]
    .io_vectorA_0_re(io_vectorC_8_unit_io_vectorA_0_re),
    .io_vectorA_0_im(io_vectorC_8_unit_io_vectorA_0_im),
    .io_vectorA_1_re(io_vectorC_8_unit_io_vectorA_1_re),
    .io_vectorA_1_im(io_vectorC_8_unit_io_vectorA_1_im),
    .io_vectorA_2_re(io_vectorC_8_unit_io_vectorA_2_re),
    .io_vectorA_2_im(io_vectorC_8_unit_io_vectorA_2_im),
    .io_vectorA_3_re(io_vectorC_8_unit_io_vectorA_3_re),
    .io_vectorA_3_im(io_vectorC_8_unit_io_vectorA_3_im),
    .io_vectorA_4_re(io_vectorC_8_unit_io_vectorA_4_re),
    .io_vectorA_4_im(io_vectorC_8_unit_io_vectorA_4_im),
    .io_vectorA_5_re(io_vectorC_8_unit_io_vectorA_5_re),
    .io_vectorA_5_im(io_vectorC_8_unit_io_vectorA_5_im),
    .io_vectorA_6_re(io_vectorC_8_unit_io_vectorA_6_re),
    .io_vectorA_6_im(io_vectorC_8_unit_io_vectorA_6_im),
    .io_vectorA_7_re(io_vectorC_8_unit_io_vectorA_7_re),
    .io_vectorA_7_im(io_vectorC_8_unit_io_vectorA_7_im),
    .io_vectorA_8_re(io_vectorC_8_unit_io_vectorA_8_re),
    .io_vectorA_8_im(io_vectorC_8_unit_io_vectorA_8_im),
    .io_vectorA_9_re(io_vectorC_8_unit_io_vectorA_9_re),
    .io_vectorA_9_im(io_vectorC_8_unit_io_vectorA_9_im),
    .io_vectorB_0_re(io_vectorC_8_unit_io_vectorB_0_re),
    .io_vectorB_0_im(io_vectorC_8_unit_io_vectorB_0_im),
    .io_vectorB_1_re(io_vectorC_8_unit_io_vectorB_1_re),
    .io_vectorB_1_im(io_vectorC_8_unit_io_vectorB_1_im),
    .io_vectorB_2_re(io_vectorC_8_unit_io_vectorB_2_re),
    .io_vectorB_2_im(io_vectorC_8_unit_io_vectorB_2_im),
    .io_vectorB_3_re(io_vectorC_8_unit_io_vectorB_3_re),
    .io_vectorB_3_im(io_vectorC_8_unit_io_vectorB_3_im),
    .io_vectorB_4_re(io_vectorC_8_unit_io_vectorB_4_re),
    .io_vectorB_4_im(io_vectorC_8_unit_io_vectorB_4_im),
    .io_vectorB_5_re(io_vectorC_8_unit_io_vectorB_5_re),
    .io_vectorB_5_im(io_vectorC_8_unit_io_vectorB_5_im),
    .io_vectorB_6_re(io_vectorC_8_unit_io_vectorB_6_re),
    .io_vectorB_6_im(io_vectorC_8_unit_io_vectorB_6_im),
    .io_vectorB_7_re(io_vectorC_8_unit_io_vectorB_7_re),
    .io_vectorB_7_im(io_vectorC_8_unit_io_vectorB_7_im),
    .io_vectorB_8_re(io_vectorC_8_unit_io_vectorB_8_re),
    .io_vectorB_8_im(io_vectorC_8_unit_io_vectorB_8_im),
    .io_vectorB_9_re(io_vectorC_8_unit_io_vectorB_9_re),
    .io_vectorB_9_im(io_vectorC_8_unit_io_vectorB_9_im),
    .io_result_re(io_vectorC_8_unit_io_result_re),
    .io_result_im(io_vectorC_8_unit_io_result_im)
  );
  mac_v1 io_vectorC_9_unit ( // @[Mac_V1.scala 45:22]
    .io_vectorA_0_re(io_vectorC_9_unit_io_vectorA_0_re),
    .io_vectorA_0_im(io_vectorC_9_unit_io_vectorA_0_im),
    .io_vectorA_1_re(io_vectorC_9_unit_io_vectorA_1_re),
    .io_vectorA_1_im(io_vectorC_9_unit_io_vectorA_1_im),
    .io_vectorA_2_re(io_vectorC_9_unit_io_vectorA_2_re),
    .io_vectorA_2_im(io_vectorC_9_unit_io_vectorA_2_im),
    .io_vectorA_3_re(io_vectorC_9_unit_io_vectorA_3_re),
    .io_vectorA_3_im(io_vectorC_9_unit_io_vectorA_3_im),
    .io_vectorA_4_re(io_vectorC_9_unit_io_vectorA_4_re),
    .io_vectorA_4_im(io_vectorC_9_unit_io_vectorA_4_im),
    .io_vectorA_5_re(io_vectorC_9_unit_io_vectorA_5_re),
    .io_vectorA_5_im(io_vectorC_9_unit_io_vectorA_5_im),
    .io_vectorA_6_re(io_vectorC_9_unit_io_vectorA_6_re),
    .io_vectorA_6_im(io_vectorC_9_unit_io_vectorA_6_im),
    .io_vectorA_7_re(io_vectorC_9_unit_io_vectorA_7_re),
    .io_vectorA_7_im(io_vectorC_9_unit_io_vectorA_7_im),
    .io_vectorA_8_re(io_vectorC_9_unit_io_vectorA_8_re),
    .io_vectorA_8_im(io_vectorC_9_unit_io_vectorA_8_im),
    .io_vectorA_9_re(io_vectorC_9_unit_io_vectorA_9_re),
    .io_vectorA_9_im(io_vectorC_9_unit_io_vectorA_9_im),
    .io_vectorB_0_re(io_vectorC_9_unit_io_vectorB_0_re),
    .io_vectorB_0_im(io_vectorC_9_unit_io_vectorB_0_im),
    .io_vectorB_1_re(io_vectorC_9_unit_io_vectorB_1_re),
    .io_vectorB_1_im(io_vectorC_9_unit_io_vectorB_1_im),
    .io_vectorB_2_re(io_vectorC_9_unit_io_vectorB_2_re),
    .io_vectorB_2_im(io_vectorC_9_unit_io_vectorB_2_im),
    .io_vectorB_3_re(io_vectorC_9_unit_io_vectorB_3_re),
    .io_vectorB_3_im(io_vectorC_9_unit_io_vectorB_3_im),
    .io_vectorB_4_re(io_vectorC_9_unit_io_vectorB_4_re),
    .io_vectorB_4_im(io_vectorC_9_unit_io_vectorB_4_im),
    .io_vectorB_5_re(io_vectorC_9_unit_io_vectorB_5_re),
    .io_vectorB_5_im(io_vectorC_9_unit_io_vectorB_5_im),
    .io_vectorB_6_re(io_vectorC_9_unit_io_vectorB_6_re),
    .io_vectorB_6_im(io_vectorC_9_unit_io_vectorB_6_im),
    .io_vectorB_7_re(io_vectorC_9_unit_io_vectorB_7_re),
    .io_vectorB_7_im(io_vectorC_9_unit_io_vectorB_7_im),
    .io_vectorB_8_re(io_vectorC_9_unit_io_vectorB_8_re),
    .io_vectorB_8_im(io_vectorC_9_unit_io_vectorB_8_im),
    .io_vectorB_9_re(io_vectorC_9_unit_io_vectorB_9_re),
    .io_vectorB_9_im(io_vectorC_9_unit_io_vectorB_9_im),
    .io_result_re(io_vectorC_9_unit_io_result_re),
    .io_result_im(io_vectorC_9_unit_io_result_im)
  );
  assign io_vectorC_0_re = io_vectorC_0_unit_io_result_re; // @[Mac_V3.scala 27:19]
  assign io_vectorC_0_im = io_vectorC_0_unit_io_result_im; // @[Mac_V3.scala 27:19]
  assign io_vectorC_1_re = io_vectorC_1_unit_io_result_re; // @[Mac_V3.scala 27:19]
  assign io_vectorC_1_im = io_vectorC_1_unit_io_result_im; // @[Mac_V3.scala 27:19]
  assign io_vectorC_2_re = io_vectorC_2_unit_io_result_re; // @[Mac_V3.scala 27:19]
  assign io_vectorC_2_im = io_vectorC_2_unit_io_result_im; // @[Mac_V3.scala 27:19]
  assign io_vectorC_3_re = io_vectorC_3_unit_io_result_re; // @[Mac_V3.scala 27:19]
  assign io_vectorC_3_im = io_vectorC_3_unit_io_result_im; // @[Mac_V3.scala 27:19]
  assign io_vectorC_4_re = io_vectorC_4_unit_io_result_re; // @[Mac_V3.scala 27:19]
  assign io_vectorC_4_im = io_vectorC_4_unit_io_result_im; // @[Mac_V3.scala 27:19]
  assign io_vectorC_5_re = io_vectorC_5_unit_io_result_re; // @[Mac_V3.scala 27:19]
  assign io_vectorC_5_im = io_vectorC_5_unit_io_result_im; // @[Mac_V3.scala 27:19]
  assign io_vectorC_6_re = io_vectorC_6_unit_io_result_re; // @[Mac_V3.scala 27:19]
  assign io_vectorC_6_im = io_vectorC_6_unit_io_result_im; // @[Mac_V3.scala 27:19]
  assign io_vectorC_7_re = io_vectorC_7_unit_io_result_re; // @[Mac_V3.scala 27:19]
  assign io_vectorC_7_im = io_vectorC_7_unit_io_result_im; // @[Mac_V3.scala 27:19]
  assign io_vectorC_8_re = io_vectorC_8_unit_io_result_re; // @[Mac_V3.scala 27:19]
  assign io_vectorC_8_im = io_vectorC_8_unit_io_result_im; // @[Mac_V3.scala 27:19]
  assign io_vectorC_9_re = io_vectorC_9_unit_io_result_re; // @[Mac_V3.scala 27:19]
  assign io_vectorC_9_im = io_vectorC_9_unit_io_result_im; // @[Mac_V3.scala 27:19]
  assign io_vectorC_0_unit_io_vectorA_0_re = io_matrixA_0_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_0_im = io_matrixA_0_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_1_re = io_matrixA_1_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_1_im = io_matrixA_1_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_2_re = io_matrixA_2_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_2_im = io_matrixA_2_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_3_re = io_matrixA_3_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_3_im = io_matrixA_3_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_4_re = io_matrixA_4_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_4_im = io_matrixA_4_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_5_re = io_matrixA_5_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_5_im = io_matrixA_5_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_6_re = io_matrixA_6_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_6_im = io_matrixA_6_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_7_re = io_matrixA_7_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_7_im = io_matrixA_7_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_8_re = io_matrixA_8_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_8_im = io_matrixA_8_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_9_re = io_matrixA_9_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorA_9_im = io_matrixA_9_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_0_unit_io_vectorB_0_re = io_vectorB_0_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_0_im = io_vectorB_0_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_1_re = io_vectorB_1_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_1_im = io_vectorB_1_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_2_re = io_vectorB_2_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_2_im = io_vectorB_2_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_3_re = io_vectorB_3_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_3_im = io_vectorB_3_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_4_re = io_vectorB_4_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_4_im = io_vectorB_4_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_5_re = io_vectorB_5_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_5_im = io_vectorB_5_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_6_re = io_vectorB_6_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_6_im = io_vectorB_6_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_7_re = io_vectorB_7_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_7_im = io_vectorB_7_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_8_re = io_vectorB_8_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_8_im = io_vectorB_8_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_9_re = io_vectorB_9_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_0_unit_io_vectorB_9_im = io_vectorB_9_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorA_0_re = io_matrixA_10_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_0_im = io_matrixA_10_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_1_re = io_matrixA_11_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_1_im = io_matrixA_11_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_2_re = io_matrixA_12_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_2_im = io_matrixA_12_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_3_re = io_matrixA_13_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_3_im = io_matrixA_13_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_4_re = io_matrixA_14_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_4_im = io_matrixA_14_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_5_re = io_matrixA_15_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_5_im = io_matrixA_15_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_6_re = io_matrixA_16_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_6_im = io_matrixA_16_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_7_re = io_matrixA_17_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_7_im = io_matrixA_17_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_8_re = io_matrixA_18_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_8_im = io_matrixA_18_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_9_re = io_matrixA_19_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorA_9_im = io_matrixA_19_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_1_unit_io_vectorB_0_re = io_vectorB_0_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_0_im = io_vectorB_0_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_1_re = io_vectorB_1_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_1_im = io_vectorB_1_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_2_re = io_vectorB_2_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_2_im = io_vectorB_2_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_3_re = io_vectorB_3_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_3_im = io_vectorB_3_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_4_re = io_vectorB_4_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_4_im = io_vectorB_4_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_5_re = io_vectorB_5_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_5_im = io_vectorB_5_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_6_re = io_vectorB_6_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_6_im = io_vectorB_6_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_7_re = io_vectorB_7_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_7_im = io_vectorB_7_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_8_re = io_vectorB_8_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_8_im = io_vectorB_8_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_9_re = io_vectorB_9_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_1_unit_io_vectorB_9_im = io_vectorB_9_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorA_0_re = io_matrixA_20_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_0_im = io_matrixA_20_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_1_re = io_matrixA_21_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_1_im = io_matrixA_21_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_2_re = io_matrixA_22_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_2_im = io_matrixA_22_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_3_re = io_matrixA_23_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_3_im = io_matrixA_23_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_4_re = io_matrixA_24_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_4_im = io_matrixA_24_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_5_re = io_matrixA_25_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_5_im = io_matrixA_25_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_6_re = io_matrixA_26_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_6_im = io_matrixA_26_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_7_re = io_matrixA_27_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_7_im = io_matrixA_27_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_8_re = io_matrixA_28_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_8_im = io_matrixA_28_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_9_re = io_matrixA_29_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorA_9_im = io_matrixA_29_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_2_unit_io_vectorB_0_re = io_vectorB_0_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_0_im = io_vectorB_0_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_1_re = io_vectorB_1_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_1_im = io_vectorB_1_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_2_re = io_vectorB_2_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_2_im = io_vectorB_2_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_3_re = io_vectorB_3_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_3_im = io_vectorB_3_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_4_re = io_vectorB_4_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_4_im = io_vectorB_4_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_5_re = io_vectorB_5_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_5_im = io_vectorB_5_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_6_re = io_vectorB_6_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_6_im = io_vectorB_6_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_7_re = io_vectorB_7_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_7_im = io_vectorB_7_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_8_re = io_vectorB_8_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_8_im = io_vectorB_8_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_9_re = io_vectorB_9_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_2_unit_io_vectorB_9_im = io_vectorB_9_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorA_0_re = io_matrixA_30_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_0_im = io_matrixA_30_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_1_re = io_matrixA_31_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_1_im = io_matrixA_31_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_2_re = io_matrixA_32_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_2_im = io_matrixA_32_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_3_re = io_matrixA_33_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_3_im = io_matrixA_33_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_4_re = io_matrixA_34_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_4_im = io_matrixA_34_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_5_re = io_matrixA_35_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_5_im = io_matrixA_35_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_6_re = io_matrixA_36_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_6_im = io_matrixA_36_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_7_re = io_matrixA_37_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_7_im = io_matrixA_37_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_8_re = io_matrixA_38_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_8_im = io_matrixA_38_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_9_re = io_matrixA_39_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorA_9_im = io_matrixA_39_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_3_unit_io_vectorB_0_re = io_vectorB_0_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_0_im = io_vectorB_0_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_1_re = io_vectorB_1_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_1_im = io_vectorB_1_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_2_re = io_vectorB_2_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_2_im = io_vectorB_2_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_3_re = io_vectorB_3_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_3_im = io_vectorB_3_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_4_re = io_vectorB_4_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_4_im = io_vectorB_4_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_5_re = io_vectorB_5_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_5_im = io_vectorB_5_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_6_re = io_vectorB_6_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_6_im = io_vectorB_6_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_7_re = io_vectorB_7_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_7_im = io_vectorB_7_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_8_re = io_vectorB_8_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_8_im = io_vectorB_8_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_9_re = io_vectorB_9_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_3_unit_io_vectorB_9_im = io_vectorB_9_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorA_0_re = io_matrixA_40_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_0_im = io_matrixA_40_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_1_re = io_matrixA_41_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_1_im = io_matrixA_41_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_2_re = io_matrixA_42_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_2_im = io_matrixA_42_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_3_re = io_matrixA_43_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_3_im = io_matrixA_43_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_4_re = io_matrixA_44_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_4_im = io_matrixA_44_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_5_re = io_matrixA_45_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_5_im = io_matrixA_45_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_6_re = io_matrixA_46_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_6_im = io_matrixA_46_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_7_re = io_matrixA_47_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_7_im = io_matrixA_47_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_8_re = io_matrixA_48_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_8_im = io_matrixA_48_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_9_re = io_matrixA_49_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorA_9_im = io_matrixA_49_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_4_unit_io_vectorB_0_re = io_vectorB_0_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_0_im = io_vectorB_0_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_1_re = io_vectorB_1_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_1_im = io_vectorB_1_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_2_re = io_vectorB_2_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_2_im = io_vectorB_2_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_3_re = io_vectorB_3_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_3_im = io_vectorB_3_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_4_re = io_vectorB_4_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_4_im = io_vectorB_4_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_5_re = io_vectorB_5_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_5_im = io_vectorB_5_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_6_re = io_vectorB_6_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_6_im = io_vectorB_6_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_7_re = io_vectorB_7_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_7_im = io_vectorB_7_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_8_re = io_vectorB_8_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_8_im = io_vectorB_8_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_9_re = io_vectorB_9_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_4_unit_io_vectorB_9_im = io_vectorB_9_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorA_0_re = io_matrixA_50_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_0_im = io_matrixA_50_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_1_re = io_matrixA_51_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_1_im = io_matrixA_51_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_2_re = io_matrixA_52_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_2_im = io_matrixA_52_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_3_re = io_matrixA_53_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_3_im = io_matrixA_53_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_4_re = io_matrixA_54_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_4_im = io_matrixA_54_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_5_re = io_matrixA_55_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_5_im = io_matrixA_55_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_6_re = io_matrixA_56_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_6_im = io_matrixA_56_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_7_re = io_matrixA_57_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_7_im = io_matrixA_57_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_8_re = io_matrixA_58_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_8_im = io_matrixA_58_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_9_re = io_matrixA_59_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorA_9_im = io_matrixA_59_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_5_unit_io_vectorB_0_re = io_vectorB_0_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_0_im = io_vectorB_0_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_1_re = io_vectorB_1_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_1_im = io_vectorB_1_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_2_re = io_vectorB_2_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_2_im = io_vectorB_2_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_3_re = io_vectorB_3_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_3_im = io_vectorB_3_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_4_re = io_vectorB_4_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_4_im = io_vectorB_4_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_5_re = io_vectorB_5_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_5_im = io_vectorB_5_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_6_re = io_vectorB_6_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_6_im = io_vectorB_6_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_7_re = io_vectorB_7_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_7_im = io_vectorB_7_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_8_re = io_vectorB_8_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_8_im = io_vectorB_8_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_9_re = io_vectorB_9_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_5_unit_io_vectorB_9_im = io_vectorB_9_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorA_0_re = io_matrixA_60_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_0_im = io_matrixA_60_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_1_re = io_matrixA_61_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_1_im = io_matrixA_61_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_2_re = io_matrixA_62_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_2_im = io_matrixA_62_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_3_re = io_matrixA_63_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_3_im = io_matrixA_63_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_4_re = io_matrixA_64_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_4_im = io_matrixA_64_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_5_re = io_matrixA_65_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_5_im = io_matrixA_65_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_6_re = io_matrixA_66_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_6_im = io_matrixA_66_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_7_re = io_matrixA_67_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_7_im = io_matrixA_67_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_8_re = io_matrixA_68_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_8_im = io_matrixA_68_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_9_re = io_matrixA_69_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorA_9_im = io_matrixA_69_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_6_unit_io_vectorB_0_re = io_vectorB_0_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_0_im = io_vectorB_0_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_1_re = io_vectorB_1_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_1_im = io_vectorB_1_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_2_re = io_vectorB_2_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_2_im = io_vectorB_2_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_3_re = io_vectorB_3_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_3_im = io_vectorB_3_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_4_re = io_vectorB_4_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_4_im = io_vectorB_4_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_5_re = io_vectorB_5_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_5_im = io_vectorB_5_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_6_re = io_vectorB_6_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_6_im = io_vectorB_6_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_7_re = io_vectorB_7_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_7_im = io_vectorB_7_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_8_re = io_vectorB_8_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_8_im = io_vectorB_8_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_9_re = io_vectorB_9_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_6_unit_io_vectorB_9_im = io_vectorB_9_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorA_0_re = io_matrixA_70_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_0_im = io_matrixA_70_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_1_re = io_matrixA_71_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_1_im = io_matrixA_71_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_2_re = io_matrixA_72_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_2_im = io_matrixA_72_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_3_re = io_matrixA_73_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_3_im = io_matrixA_73_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_4_re = io_matrixA_74_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_4_im = io_matrixA_74_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_5_re = io_matrixA_75_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_5_im = io_matrixA_75_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_6_re = io_matrixA_76_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_6_im = io_matrixA_76_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_7_re = io_matrixA_77_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_7_im = io_matrixA_77_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_8_re = io_matrixA_78_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_8_im = io_matrixA_78_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_9_re = io_matrixA_79_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorA_9_im = io_matrixA_79_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_7_unit_io_vectorB_0_re = io_vectorB_0_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_0_im = io_vectorB_0_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_1_re = io_vectorB_1_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_1_im = io_vectorB_1_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_2_re = io_vectorB_2_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_2_im = io_vectorB_2_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_3_re = io_vectorB_3_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_3_im = io_vectorB_3_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_4_re = io_vectorB_4_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_4_im = io_vectorB_4_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_5_re = io_vectorB_5_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_5_im = io_vectorB_5_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_6_re = io_vectorB_6_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_6_im = io_vectorB_6_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_7_re = io_vectorB_7_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_7_im = io_vectorB_7_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_8_re = io_vectorB_8_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_8_im = io_vectorB_8_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_9_re = io_vectorB_9_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_7_unit_io_vectorB_9_im = io_vectorB_9_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorA_0_re = io_matrixA_80_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_0_im = io_matrixA_80_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_1_re = io_matrixA_81_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_1_im = io_matrixA_81_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_2_re = io_matrixA_82_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_2_im = io_matrixA_82_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_3_re = io_matrixA_83_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_3_im = io_matrixA_83_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_4_re = io_matrixA_84_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_4_im = io_matrixA_84_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_5_re = io_matrixA_85_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_5_im = io_matrixA_85_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_6_re = io_matrixA_86_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_6_im = io_matrixA_86_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_7_re = io_matrixA_87_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_7_im = io_matrixA_87_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_8_re = io_matrixA_88_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_8_im = io_matrixA_88_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_9_re = io_matrixA_89_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorA_9_im = io_matrixA_89_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_8_unit_io_vectorB_0_re = io_vectorB_0_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_0_im = io_vectorB_0_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_1_re = io_vectorB_1_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_1_im = io_vectorB_1_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_2_re = io_vectorB_2_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_2_im = io_vectorB_2_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_3_re = io_vectorB_3_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_3_im = io_vectorB_3_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_4_re = io_vectorB_4_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_4_im = io_vectorB_4_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_5_re = io_vectorB_5_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_5_im = io_vectorB_5_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_6_re = io_vectorB_6_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_6_im = io_vectorB_6_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_7_re = io_vectorB_7_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_7_im = io_vectorB_7_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_8_re = io_vectorB_8_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_8_im = io_vectorB_8_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_9_re = io_vectorB_9_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_8_unit_io_vectorB_9_im = io_vectorB_9_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorA_0_re = io_matrixA_90_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_0_im = io_matrixA_90_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_1_re = io_matrixA_91_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_1_im = io_matrixA_91_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_2_re = io_matrixA_92_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_2_im = io_matrixA_92_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_3_re = io_matrixA_93_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_3_im = io_matrixA_93_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_4_re = io_matrixA_94_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_4_im = io_matrixA_94_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_5_re = io_matrixA_95_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_5_im = io_matrixA_95_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_6_re = io_matrixA_96_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_6_im = io_matrixA_96_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_7_re = io_matrixA_97_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_7_im = io_matrixA_97_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_8_re = io_matrixA_98_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_8_im = io_matrixA_98_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_9_re = io_matrixA_99_re; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorA_9_im = io_matrixA_99_im; // @[Mac_V3.scala 23:27 25:22]
  assign io_vectorC_9_unit_io_vectorB_0_re = io_vectorB_0_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_0_im = io_vectorB_0_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_1_re = io_vectorB_1_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_1_im = io_vectorB_1_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_2_re = io_vectorB_2_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_2_im = io_vectorB_2_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_3_re = io_vectorB_3_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_3_im = io_vectorB_3_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_4_re = io_vectorB_4_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_4_im = io_vectorB_4_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_5_re = io_vectorB_5_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_5_im = io_vectorB_5_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_6_re = io_vectorB_6_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_6_im = io_vectorB_6_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_7_re = io_vectorB_7_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_7_im = io_vectorB_7_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_8_re = io_vectorB_8_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_8_im = io_vectorB_8_im; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_9_re = io_vectorB_9_re; // @[Mac_V1.scala 47:21]
  assign io_vectorC_9_unit_io_vectorB_9_im = io_vectorB_9_im; // @[Mac_V1.scala 47:21]
endmodule
