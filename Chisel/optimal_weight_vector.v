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
  wire [97:0] _GEN_0 = _io_res_re_T_2[127:30]; // @[Complex_Operater.scala 41:13]
  wire [97:0] _GEN_2 = _io_res_im_T_2[127:30]; // @[Complex_Operater.scala 42:13]
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
module PE(
  input         clock,
  input         io_reset,
  input  [63:0] io_in_x_re,
  input  [63:0] io_in_x_im,
  input  [63:0] io_in_y_re,
  input  [63:0] io_in_y_im,
  output [63:0] io_out_pe_re,
  output [63:0] io_out_pe_im,
  output [63:0] io_out_y_re,
  output [63:0] io_out_y_im
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] pe_reg_mul_io_op1_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] pe_reg_mul_io_op1_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] pe_reg_mul_io_op2_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] pe_reg_mul_io_op2_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] pe_reg_mul_io_res_re; // @[Complex_Operater.scala 47:21]
  wire [63:0] pe_reg_mul_io_res_im; // @[Complex_Operater.scala 47:21]
  wire [63:0] pe_reg_add_io_op1_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] pe_reg_add_io_op1_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] pe_reg_add_io_op2_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] pe_reg_add_io_op2_im; // @[Complex_Operater.scala 13:21]
  wire [63:0] pe_reg_add_io_res_re; // @[Complex_Operater.scala 13:21]
  wire [63:0] pe_reg_add_io_res_im; // @[Complex_Operater.scala 13:21]
  reg [63:0] pe_reg_re; // @[Matrix_Mul_V1.scala 29:28]
  reg [63:0] pe_reg_im; // @[Matrix_Mul_V1.scala 29:28]
  reg [63:0] y_reg_re; // @[Matrix_Mul_V1.scala 31:27]
  reg [63:0] y_reg_im; // @[Matrix_Mul_V1.scala 31:27]
  ComplexMul pe_reg_mul ( // @[Complex_Operater.scala 47:21]
    .io_op1_re(pe_reg_mul_io_op1_re),
    .io_op1_im(pe_reg_mul_io_op1_im),
    .io_op2_re(pe_reg_mul_io_op2_re),
    .io_op2_im(pe_reg_mul_io_op2_im),
    .io_res_re(pe_reg_mul_io_res_re),
    .io_res_im(pe_reg_mul_io_res_im)
  );
  ComplexAdd pe_reg_add ( // @[Complex_Operater.scala 13:21]
    .io_op1_re(pe_reg_add_io_op1_re),
    .io_op1_im(pe_reg_add_io_op1_im),
    .io_op2_re(pe_reg_add_io_op2_re),
    .io_op2_im(pe_reg_add_io_op2_im),
    .io_res_re(pe_reg_add_io_res_re),
    .io_res_im(pe_reg_add_io_res_im)
  );
  assign io_out_pe_re = pe_reg_re; // @[Matrix_Mul_V1.scala 50:13]
  assign io_out_pe_im = pe_reg_im; // @[Matrix_Mul_V1.scala 50:13]
  assign io_out_y_re = y_reg_re; // @[Matrix_Mul_V1.scala 52:12]
  assign io_out_y_im = y_reg_im; // @[Matrix_Mul_V1.scala 52:12]
  assign pe_reg_mul_io_op1_re = io_in_x_re; // @[Complex_Operater.scala 48:16]
  assign pe_reg_mul_io_op1_im = io_in_x_im; // @[Complex_Operater.scala 48:16]
  assign pe_reg_mul_io_op2_re = io_in_y_re; // @[Complex_Operater.scala 49:16]
  assign pe_reg_mul_io_op2_im = io_in_y_im; // @[Complex_Operater.scala 49:16]
  assign pe_reg_add_io_op1_re = pe_reg_re; // @[Complex_Operater.scala 14:16]
  assign pe_reg_add_io_op1_im = pe_reg_im; // @[Complex_Operater.scala 14:16]
  assign pe_reg_add_io_op2_re = pe_reg_mul_io_res_re; // @[Complex_Operater.scala 15:16]
  assign pe_reg_add_io_op2_im = pe_reg_mul_io_res_im; // @[Complex_Operater.scala 15:16]
  always @(posedge clock) begin
    if (io_reset) begin // @[Matrix_Mul_V1.scala 33:18]
      pe_reg_re <= 64'sh0; // @[Matrix_Mul_V1.scala 35:15]
    end else begin
      pe_reg_re <= pe_reg_add_io_res_re; // @[Matrix_Mul_V1.scala 43:12]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 33:18]
      pe_reg_im <= 64'sh0; // @[Matrix_Mul_V1.scala 36:15]
    end else begin
      pe_reg_im <= pe_reg_add_io_res_im; // @[Matrix_Mul_V1.scala 43:12]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 33:18]
      y_reg_re <= 64'sh0; // @[Matrix_Mul_V1.scala 39:14]
    end else begin
      y_reg_re <= io_in_y_re; // @[Matrix_Mul_V1.scala 46:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 33:18]
      y_reg_im <= 64'sh0; // @[Matrix_Mul_V1.scala 40:14]
    end else begin
      y_reg_im <= io_in_y_im; // @[Matrix_Mul_V1.scala 46:11]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  pe_reg_re = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  pe_reg_im = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  y_reg_re = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  y_reg_im = _RAND_3[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module matrix_mul_v1(
  input         clock,
  input         io_reset,
  input         io_ready,
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
  output [63:0] io_matrixC_0_re,
  output [63:0] io_matrixC_0_im,
  output [63:0] io_matrixC_1_re,
  output [63:0] io_matrixC_1_im,
  output [63:0] io_matrixC_2_re,
  output [63:0] io_matrixC_2_im,
  output [63:0] io_matrixC_3_re,
  output [63:0] io_matrixC_3_im,
  output [63:0] io_matrixC_4_re,
  output [63:0] io_matrixC_4_im,
  output        io_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [63:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [63:0] _RAND_41;
  reg [63:0] _RAND_42;
  reg [63:0] _RAND_43;
  reg [63:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [63:0] _RAND_46;
  reg [63:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [63:0] _RAND_49;
  reg [63:0] _RAND_50;
  reg [63:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [63:0] _RAND_53;
  reg [63:0] _RAND_54;
  reg [63:0] _RAND_55;
  reg [63:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [63:0] _RAND_58;
  reg [63:0] _RAND_59;
  reg [31:0] _RAND_60;
`endif // RANDOMIZE_REG_INIT
  wire  PE_clock; // @[Matrix_Mul_V1.scala 86:35]
  wire  PE_io_reset; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_io_in_x_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_io_in_x_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_io_in_y_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_io_in_y_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_io_out_pe_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_io_out_pe_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_io_out_y_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_io_out_y_im; // @[Matrix_Mul_V1.scala 86:35]
  wire  PE_1_clock; // @[Matrix_Mul_V1.scala 86:35]
  wire  PE_1_io_reset; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_1_io_in_x_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_1_io_in_x_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_1_io_in_y_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_1_io_in_y_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_1_io_out_pe_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_1_io_out_pe_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_1_io_out_y_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_1_io_out_y_im; // @[Matrix_Mul_V1.scala 86:35]
  wire  PE_2_clock; // @[Matrix_Mul_V1.scala 86:35]
  wire  PE_2_io_reset; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_2_io_in_x_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_2_io_in_x_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_2_io_in_y_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_2_io_in_y_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_2_io_out_pe_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_2_io_out_pe_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_2_io_out_y_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_2_io_out_y_im; // @[Matrix_Mul_V1.scala 86:35]
  wire  PE_3_clock; // @[Matrix_Mul_V1.scala 86:35]
  wire  PE_3_io_reset; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_3_io_in_x_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_3_io_in_x_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_3_io_in_y_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_3_io_in_y_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_3_io_out_pe_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_3_io_out_pe_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_3_io_out_y_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_3_io_out_y_im; // @[Matrix_Mul_V1.scala 86:35]
  wire  PE_4_clock; // @[Matrix_Mul_V1.scala 86:35]
  wire  PE_4_io_reset; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_4_io_in_x_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_4_io_in_x_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_4_io_in_y_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_4_io_in_y_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_4_io_out_pe_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_4_io_out_pe_im; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_4_io_out_y_re; // @[Matrix_Mul_V1.scala 86:35]
  wire [63:0] PE_4_io_out_y_im; // @[Matrix_Mul_V1.scala 86:35]
  reg [63:0] regsA_0_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_0_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_1_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_1_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_2_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_2_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_3_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_3_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_4_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_4_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_5_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_5_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_6_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_6_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_7_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_7_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_8_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_8_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_9_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_9_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_10_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_10_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_11_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_11_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_12_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_12_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_13_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_13_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_14_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_14_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_15_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_15_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_16_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_16_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_17_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_17_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_18_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_18_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_19_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_19_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_20_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_20_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_21_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_21_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_22_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_22_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_23_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_23_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_24_re; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsA_24_im; // @[Matrix_Mul_V1.scala 82:32]
  reg [63:0] regsB_0_re; // @[Matrix_Mul_V1.scala 83:32]
  reg [63:0] regsB_0_im; // @[Matrix_Mul_V1.scala 83:32]
  reg [63:0] regsB_1_re; // @[Matrix_Mul_V1.scala 83:32]
  reg [63:0] regsB_1_im; // @[Matrix_Mul_V1.scala 83:32]
  reg [63:0] regsB_2_re; // @[Matrix_Mul_V1.scala 83:32]
  reg [63:0] regsB_2_im; // @[Matrix_Mul_V1.scala 83:32]
  reg [63:0] regsB_3_re; // @[Matrix_Mul_V1.scala 83:32]
  reg [63:0] regsB_3_im; // @[Matrix_Mul_V1.scala 83:32]
  reg [63:0] regsB_4_re; // @[Matrix_Mul_V1.scala 83:32]
  reg [63:0] regsB_4_im; // @[Matrix_Mul_V1.scala 83:32]
  reg [4:0] input_point; // @[Matrix_Mul_V1.scala 84:30]
  wire [4:0] _input_point_T_1 = input_point + 5'h1; // @[Matrix_Mul_V1.scala 116:32]
  wire [4:0] _T_1 = 1'h0 * 4'h9; // @[Matrix_Mul_V1.scala 148:44]
  wire [4:0] _T_3 = _T_1 + input_point; // @[Matrix_Mul_V1.scala 148:60]
  wire [63:0] _GEN_125 = 5'h1 == _T_3 ? $signed(regsA_1_im) : $signed(regsA_0_im); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_126 = 5'h2 == _T_3 ? $signed(regsA_2_im) : $signed(_GEN_125); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_127 = 5'h3 == _T_3 ? $signed(regsA_3_im) : $signed(_GEN_126); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_128 = 5'h4 == _T_3 ? $signed(regsA_4_im) : $signed(_GEN_127); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_129 = 5'h5 == _T_3 ? $signed(64'sh0) : $signed(_GEN_128); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_130 = 5'h6 == _T_3 ? $signed(64'sh0) : $signed(_GEN_129); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_131 = 5'h7 == _T_3 ? $signed(64'sh0) : $signed(_GEN_130); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_132 = 5'h8 == _T_3 ? $signed(64'sh0) : $signed(_GEN_131); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_133 = 5'h9 == _T_3 ? $signed(64'sh0) : $signed(_GEN_132); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_134 = 5'ha == _T_3 ? $signed(regsA_5_im) : $signed(_GEN_133); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_135 = 5'hb == _T_3 ? $signed(regsA_6_im) : $signed(_GEN_134); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_136 = 5'hc == _T_3 ? $signed(regsA_7_im) : $signed(_GEN_135); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_137 = 5'hd == _T_3 ? $signed(regsA_8_im) : $signed(_GEN_136); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_138 = 5'he == _T_3 ? $signed(regsA_9_im) : $signed(_GEN_137); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_139 = 5'hf == _T_3 ? $signed(64'sh0) : $signed(_GEN_138); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_140 = 5'h10 == _T_3 ? $signed(64'sh0) : $signed(_GEN_139); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_141 = 5'h11 == _T_3 ? $signed(64'sh0) : $signed(_GEN_140); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_142 = 5'h12 == _T_3 ? $signed(64'sh0) : $signed(_GEN_141); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_143 = 5'h13 == _T_3 ? $signed(64'sh0) : $signed(_GEN_142); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_144 = 5'h14 == _T_3 ? $signed(regsA_10_im) : $signed(_GEN_143); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_145 = 5'h15 == _T_3 ? $signed(regsA_11_im) : $signed(_GEN_144); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_146 = 5'h16 == _T_3 ? $signed(regsA_12_im) : $signed(_GEN_145); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_147 = 5'h17 == _T_3 ? $signed(regsA_13_im) : $signed(_GEN_146); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_148 = 5'h18 == _T_3 ? $signed(regsA_14_im) : $signed(_GEN_147); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_149 = 5'h19 == _T_3 ? $signed(64'sh0) : $signed(_GEN_148); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_150 = 5'h1a == _T_3 ? $signed(64'sh0) : $signed(_GEN_149); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_151 = 5'h1b == _T_3 ? $signed(64'sh0) : $signed(_GEN_150); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_152 = 5'h1c == _T_3 ? $signed(64'sh0) : $signed(_GEN_151); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_153 = 5'h1d == _T_3 ? $signed(64'sh0) : $signed(_GEN_152); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_154 = 5'h1e == _T_3 ? $signed(regsA_15_im) : $signed(_GEN_153); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_155 = 5'h1f == _T_3 ? $signed(regsA_16_im) : $signed(_GEN_154); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [5:0] _GEN_597 = {{1'd0}, _T_3}; // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_156 = 6'h20 == _GEN_597 ? $signed(regsA_17_im) : $signed(_GEN_155); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_157 = 6'h21 == _GEN_597 ? $signed(regsA_18_im) : $signed(_GEN_156); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_158 = 6'h22 == _GEN_597 ? $signed(regsA_19_im) : $signed(_GEN_157); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_159 = 6'h23 == _GEN_597 ? $signed(64'sh0) : $signed(_GEN_158); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_160 = 6'h24 == _GEN_597 ? $signed(64'sh0) : $signed(_GEN_159); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_161 = 6'h25 == _GEN_597 ? $signed(64'sh0) : $signed(_GEN_160); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_162 = 6'h26 == _GEN_597 ? $signed(64'sh0) : $signed(_GEN_161); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_163 = 6'h27 == _GEN_597 ? $signed(64'sh0) : $signed(_GEN_162); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_164 = 6'h28 == _GEN_597 ? $signed(regsA_20_im) : $signed(_GEN_163); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_165 = 6'h29 == _GEN_597 ? $signed(regsA_21_im) : $signed(_GEN_164); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_166 = 6'h2a == _GEN_597 ? $signed(regsA_22_im) : $signed(_GEN_165); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_167 = 6'h2b == _GEN_597 ? $signed(regsA_23_im) : $signed(_GEN_166); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_168 = 6'h2c == _GEN_597 ? $signed(regsA_24_im) : $signed(_GEN_167); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_170 = 5'h1 == _T_3 ? $signed(regsA_1_re) : $signed(regsA_0_re); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_171 = 5'h2 == _T_3 ? $signed(regsA_2_re) : $signed(_GEN_170); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_172 = 5'h3 == _T_3 ? $signed(regsA_3_re) : $signed(_GEN_171); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_173 = 5'h4 == _T_3 ? $signed(regsA_4_re) : $signed(_GEN_172); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_174 = 5'h5 == _T_3 ? $signed(64'sh0) : $signed(_GEN_173); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_175 = 5'h6 == _T_3 ? $signed(64'sh0) : $signed(_GEN_174); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_176 = 5'h7 == _T_3 ? $signed(64'sh0) : $signed(_GEN_175); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_177 = 5'h8 == _T_3 ? $signed(64'sh0) : $signed(_GEN_176); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_178 = 5'h9 == _T_3 ? $signed(64'sh0) : $signed(_GEN_177); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_179 = 5'ha == _T_3 ? $signed(regsA_5_re) : $signed(_GEN_178); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_180 = 5'hb == _T_3 ? $signed(regsA_6_re) : $signed(_GEN_179); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_181 = 5'hc == _T_3 ? $signed(regsA_7_re) : $signed(_GEN_180); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_182 = 5'hd == _T_3 ? $signed(regsA_8_re) : $signed(_GEN_181); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_183 = 5'he == _T_3 ? $signed(regsA_9_re) : $signed(_GEN_182); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_184 = 5'hf == _T_3 ? $signed(64'sh0) : $signed(_GEN_183); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_185 = 5'h10 == _T_3 ? $signed(64'sh0) : $signed(_GEN_184); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_186 = 5'h11 == _T_3 ? $signed(64'sh0) : $signed(_GEN_185); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_187 = 5'h12 == _T_3 ? $signed(64'sh0) : $signed(_GEN_186); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_188 = 5'h13 == _T_3 ? $signed(64'sh0) : $signed(_GEN_187); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_189 = 5'h14 == _T_3 ? $signed(regsA_10_re) : $signed(_GEN_188); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_190 = 5'h15 == _T_3 ? $signed(regsA_11_re) : $signed(_GEN_189); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_191 = 5'h16 == _T_3 ? $signed(regsA_12_re) : $signed(_GEN_190); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_192 = 5'h17 == _T_3 ? $signed(regsA_13_re) : $signed(_GEN_191); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_193 = 5'h18 == _T_3 ? $signed(regsA_14_re) : $signed(_GEN_192); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_194 = 5'h19 == _T_3 ? $signed(64'sh0) : $signed(_GEN_193); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_195 = 5'h1a == _T_3 ? $signed(64'sh0) : $signed(_GEN_194); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_196 = 5'h1b == _T_3 ? $signed(64'sh0) : $signed(_GEN_195); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_197 = 5'h1c == _T_3 ? $signed(64'sh0) : $signed(_GEN_196); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_198 = 5'h1d == _T_3 ? $signed(64'sh0) : $signed(_GEN_197); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_199 = 5'h1e == _T_3 ? $signed(regsA_15_re) : $signed(_GEN_198); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_200 = 5'h1f == _T_3 ? $signed(regsA_16_re) : $signed(_GEN_199); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_201 = 6'h20 == _GEN_597 ? $signed(regsA_17_re) : $signed(_GEN_200); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_202 = 6'h21 == _GEN_597 ? $signed(regsA_18_re) : $signed(_GEN_201); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_203 = 6'h22 == _GEN_597 ? $signed(regsA_19_re) : $signed(_GEN_202); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_204 = 6'h23 == _GEN_597 ? $signed(64'sh0) : $signed(_GEN_203); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_205 = 6'h24 == _GEN_597 ? $signed(64'sh0) : $signed(_GEN_204); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_206 = 6'h25 == _GEN_597 ? $signed(64'sh0) : $signed(_GEN_205); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_207 = 6'h26 == _GEN_597 ? $signed(64'sh0) : $signed(_GEN_206); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_208 = 6'h27 == _GEN_597 ? $signed(64'sh0) : $signed(_GEN_207); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_209 = 6'h28 == _GEN_597 ? $signed(regsA_20_re) : $signed(_GEN_208); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_210 = 6'h29 == _GEN_597 ? $signed(regsA_21_re) : $signed(_GEN_209); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_211 = 6'h2a == _GEN_597 ? $signed(regsA_22_re) : $signed(_GEN_210); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_212 = 6'h2b == _GEN_597 ? $signed(regsA_23_re) : $signed(_GEN_211); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_213 = 6'h2c == _GEN_597 ? $signed(regsA_24_re) : $signed(_GEN_212); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [4:0] _T_4 = 1'h1 * 4'h9; // @[Matrix_Mul_V1.scala 148:44]
  wire [4:0] _T_6 = _T_4 + input_point; // @[Matrix_Mul_V1.scala 148:60]
  wire [63:0] _GEN_215 = 5'h1 == _T_6 ? $signed(regsA_1_im) : $signed(regsA_0_im); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_216 = 5'h2 == _T_6 ? $signed(regsA_2_im) : $signed(_GEN_215); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_217 = 5'h3 == _T_6 ? $signed(regsA_3_im) : $signed(_GEN_216); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_218 = 5'h4 == _T_6 ? $signed(regsA_4_im) : $signed(_GEN_217); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_219 = 5'h5 == _T_6 ? $signed(64'sh0) : $signed(_GEN_218); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_220 = 5'h6 == _T_6 ? $signed(64'sh0) : $signed(_GEN_219); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_221 = 5'h7 == _T_6 ? $signed(64'sh0) : $signed(_GEN_220); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_222 = 5'h8 == _T_6 ? $signed(64'sh0) : $signed(_GEN_221); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_223 = 5'h9 == _T_6 ? $signed(64'sh0) : $signed(_GEN_222); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_224 = 5'ha == _T_6 ? $signed(regsA_5_im) : $signed(_GEN_223); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_225 = 5'hb == _T_6 ? $signed(regsA_6_im) : $signed(_GEN_224); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_226 = 5'hc == _T_6 ? $signed(regsA_7_im) : $signed(_GEN_225); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_227 = 5'hd == _T_6 ? $signed(regsA_8_im) : $signed(_GEN_226); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_228 = 5'he == _T_6 ? $signed(regsA_9_im) : $signed(_GEN_227); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_229 = 5'hf == _T_6 ? $signed(64'sh0) : $signed(_GEN_228); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_230 = 5'h10 == _T_6 ? $signed(64'sh0) : $signed(_GEN_229); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_231 = 5'h11 == _T_6 ? $signed(64'sh0) : $signed(_GEN_230); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_232 = 5'h12 == _T_6 ? $signed(64'sh0) : $signed(_GEN_231); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_233 = 5'h13 == _T_6 ? $signed(64'sh0) : $signed(_GEN_232); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_234 = 5'h14 == _T_6 ? $signed(regsA_10_im) : $signed(_GEN_233); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_235 = 5'h15 == _T_6 ? $signed(regsA_11_im) : $signed(_GEN_234); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_236 = 5'h16 == _T_6 ? $signed(regsA_12_im) : $signed(_GEN_235); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_237 = 5'h17 == _T_6 ? $signed(regsA_13_im) : $signed(_GEN_236); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_238 = 5'h18 == _T_6 ? $signed(regsA_14_im) : $signed(_GEN_237); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_239 = 5'h19 == _T_6 ? $signed(64'sh0) : $signed(_GEN_238); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_240 = 5'h1a == _T_6 ? $signed(64'sh0) : $signed(_GEN_239); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_241 = 5'h1b == _T_6 ? $signed(64'sh0) : $signed(_GEN_240); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_242 = 5'h1c == _T_6 ? $signed(64'sh0) : $signed(_GEN_241); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_243 = 5'h1d == _T_6 ? $signed(64'sh0) : $signed(_GEN_242); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_244 = 5'h1e == _T_6 ? $signed(regsA_15_im) : $signed(_GEN_243); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_245 = 5'h1f == _T_6 ? $signed(regsA_16_im) : $signed(_GEN_244); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [5:0] _GEN_623 = {{1'd0}, _T_6}; // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_246 = 6'h20 == _GEN_623 ? $signed(regsA_17_im) : $signed(_GEN_245); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_247 = 6'h21 == _GEN_623 ? $signed(regsA_18_im) : $signed(_GEN_246); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_248 = 6'h22 == _GEN_623 ? $signed(regsA_19_im) : $signed(_GEN_247); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_249 = 6'h23 == _GEN_623 ? $signed(64'sh0) : $signed(_GEN_248); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_250 = 6'h24 == _GEN_623 ? $signed(64'sh0) : $signed(_GEN_249); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_251 = 6'h25 == _GEN_623 ? $signed(64'sh0) : $signed(_GEN_250); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_252 = 6'h26 == _GEN_623 ? $signed(64'sh0) : $signed(_GEN_251); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_253 = 6'h27 == _GEN_623 ? $signed(64'sh0) : $signed(_GEN_252); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_254 = 6'h28 == _GEN_623 ? $signed(regsA_20_im) : $signed(_GEN_253); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_255 = 6'h29 == _GEN_623 ? $signed(regsA_21_im) : $signed(_GEN_254); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_256 = 6'h2a == _GEN_623 ? $signed(regsA_22_im) : $signed(_GEN_255); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_257 = 6'h2b == _GEN_623 ? $signed(regsA_23_im) : $signed(_GEN_256); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_258 = 6'h2c == _GEN_623 ? $signed(regsA_24_im) : $signed(_GEN_257); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_260 = 5'h1 == _T_6 ? $signed(regsA_1_re) : $signed(regsA_0_re); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_261 = 5'h2 == _T_6 ? $signed(regsA_2_re) : $signed(_GEN_260); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_262 = 5'h3 == _T_6 ? $signed(regsA_3_re) : $signed(_GEN_261); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_263 = 5'h4 == _T_6 ? $signed(regsA_4_re) : $signed(_GEN_262); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_264 = 5'h5 == _T_6 ? $signed(64'sh0) : $signed(_GEN_263); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_265 = 5'h6 == _T_6 ? $signed(64'sh0) : $signed(_GEN_264); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_266 = 5'h7 == _T_6 ? $signed(64'sh0) : $signed(_GEN_265); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_267 = 5'h8 == _T_6 ? $signed(64'sh0) : $signed(_GEN_266); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_268 = 5'h9 == _T_6 ? $signed(64'sh0) : $signed(_GEN_267); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_269 = 5'ha == _T_6 ? $signed(regsA_5_re) : $signed(_GEN_268); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_270 = 5'hb == _T_6 ? $signed(regsA_6_re) : $signed(_GEN_269); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_271 = 5'hc == _T_6 ? $signed(regsA_7_re) : $signed(_GEN_270); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_272 = 5'hd == _T_6 ? $signed(regsA_8_re) : $signed(_GEN_271); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_273 = 5'he == _T_6 ? $signed(regsA_9_re) : $signed(_GEN_272); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_274 = 5'hf == _T_6 ? $signed(64'sh0) : $signed(_GEN_273); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_275 = 5'h10 == _T_6 ? $signed(64'sh0) : $signed(_GEN_274); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_276 = 5'h11 == _T_6 ? $signed(64'sh0) : $signed(_GEN_275); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_277 = 5'h12 == _T_6 ? $signed(64'sh0) : $signed(_GEN_276); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_278 = 5'h13 == _T_6 ? $signed(64'sh0) : $signed(_GEN_277); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_279 = 5'h14 == _T_6 ? $signed(regsA_10_re) : $signed(_GEN_278); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_280 = 5'h15 == _T_6 ? $signed(regsA_11_re) : $signed(_GEN_279); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_281 = 5'h16 == _T_6 ? $signed(regsA_12_re) : $signed(_GEN_280); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_282 = 5'h17 == _T_6 ? $signed(regsA_13_re) : $signed(_GEN_281); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_283 = 5'h18 == _T_6 ? $signed(regsA_14_re) : $signed(_GEN_282); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_284 = 5'h19 == _T_6 ? $signed(64'sh0) : $signed(_GEN_283); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_285 = 5'h1a == _T_6 ? $signed(64'sh0) : $signed(_GEN_284); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_286 = 5'h1b == _T_6 ? $signed(64'sh0) : $signed(_GEN_285); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_287 = 5'h1c == _T_6 ? $signed(64'sh0) : $signed(_GEN_286); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_288 = 5'h1d == _T_6 ? $signed(64'sh0) : $signed(_GEN_287); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_289 = 5'h1e == _T_6 ? $signed(regsA_15_re) : $signed(_GEN_288); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_290 = 5'h1f == _T_6 ? $signed(regsA_16_re) : $signed(_GEN_289); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_291 = 6'h20 == _GEN_623 ? $signed(regsA_17_re) : $signed(_GEN_290); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_292 = 6'h21 == _GEN_623 ? $signed(regsA_18_re) : $signed(_GEN_291); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_293 = 6'h22 == _GEN_623 ? $signed(regsA_19_re) : $signed(_GEN_292); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_294 = 6'h23 == _GEN_623 ? $signed(64'sh0) : $signed(_GEN_293); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_295 = 6'h24 == _GEN_623 ? $signed(64'sh0) : $signed(_GEN_294); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_296 = 6'h25 == _GEN_623 ? $signed(64'sh0) : $signed(_GEN_295); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_297 = 6'h26 == _GEN_623 ? $signed(64'sh0) : $signed(_GEN_296); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_298 = 6'h27 == _GEN_623 ? $signed(64'sh0) : $signed(_GEN_297); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_299 = 6'h28 == _GEN_623 ? $signed(regsA_20_re) : $signed(_GEN_298); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_300 = 6'h29 == _GEN_623 ? $signed(regsA_21_re) : $signed(_GEN_299); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_301 = 6'h2a == _GEN_623 ? $signed(regsA_22_re) : $signed(_GEN_300); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_302 = 6'h2b == _GEN_623 ? $signed(regsA_23_re) : $signed(_GEN_301); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_303 = 6'h2c == _GEN_623 ? $signed(regsA_24_re) : $signed(_GEN_302); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [5:0] _T_7 = 2'h2 * 4'h9; // @[Matrix_Mul_V1.scala 148:44]
  wire [5:0] _GEN_649 = {{1'd0}, input_point}; // @[Matrix_Mul_V1.scala 148:60]
  wire [5:0] _T_9 = _T_7 + _GEN_649; // @[Matrix_Mul_V1.scala 148:60]
  wire [63:0] _GEN_305 = 6'h1 == _T_9 ? $signed(regsA_1_im) : $signed(regsA_0_im); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_306 = 6'h2 == _T_9 ? $signed(regsA_2_im) : $signed(_GEN_305); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_307 = 6'h3 == _T_9 ? $signed(regsA_3_im) : $signed(_GEN_306); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_308 = 6'h4 == _T_9 ? $signed(regsA_4_im) : $signed(_GEN_307); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_309 = 6'h5 == _T_9 ? $signed(64'sh0) : $signed(_GEN_308); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_310 = 6'h6 == _T_9 ? $signed(64'sh0) : $signed(_GEN_309); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_311 = 6'h7 == _T_9 ? $signed(64'sh0) : $signed(_GEN_310); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_312 = 6'h8 == _T_9 ? $signed(64'sh0) : $signed(_GEN_311); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_313 = 6'h9 == _T_9 ? $signed(64'sh0) : $signed(_GEN_312); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_314 = 6'ha == _T_9 ? $signed(regsA_5_im) : $signed(_GEN_313); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_315 = 6'hb == _T_9 ? $signed(regsA_6_im) : $signed(_GEN_314); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_316 = 6'hc == _T_9 ? $signed(regsA_7_im) : $signed(_GEN_315); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_317 = 6'hd == _T_9 ? $signed(regsA_8_im) : $signed(_GEN_316); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_318 = 6'he == _T_9 ? $signed(regsA_9_im) : $signed(_GEN_317); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_319 = 6'hf == _T_9 ? $signed(64'sh0) : $signed(_GEN_318); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_320 = 6'h10 == _T_9 ? $signed(64'sh0) : $signed(_GEN_319); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_321 = 6'h11 == _T_9 ? $signed(64'sh0) : $signed(_GEN_320); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_322 = 6'h12 == _T_9 ? $signed(64'sh0) : $signed(_GEN_321); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_323 = 6'h13 == _T_9 ? $signed(64'sh0) : $signed(_GEN_322); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_324 = 6'h14 == _T_9 ? $signed(regsA_10_im) : $signed(_GEN_323); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_325 = 6'h15 == _T_9 ? $signed(regsA_11_im) : $signed(_GEN_324); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_326 = 6'h16 == _T_9 ? $signed(regsA_12_im) : $signed(_GEN_325); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_327 = 6'h17 == _T_9 ? $signed(regsA_13_im) : $signed(_GEN_326); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_328 = 6'h18 == _T_9 ? $signed(regsA_14_im) : $signed(_GEN_327); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_329 = 6'h19 == _T_9 ? $signed(64'sh0) : $signed(_GEN_328); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_330 = 6'h1a == _T_9 ? $signed(64'sh0) : $signed(_GEN_329); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_331 = 6'h1b == _T_9 ? $signed(64'sh0) : $signed(_GEN_330); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_332 = 6'h1c == _T_9 ? $signed(64'sh0) : $signed(_GEN_331); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_333 = 6'h1d == _T_9 ? $signed(64'sh0) : $signed(_GEN_332); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_334 = 6'h1e == _T_9 ? $signed(regsA_15_im) : $signed(_GEN_333); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_335 = 6'h1f == _T_9 ? $signed(regsA_16_im) : $signed(_GEN_334); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_336 = 6'h20 == _T_9 ? $signed(regsA_17_im) : $signed(_GEN_335); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_337 = 6'h21 == _T_9 ? $signed(regsA_18_im) : $signed(_GEN_336); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_338 = 6'h22 == _T_9 ? $signed(regsA_19_im) : $signed(_GEN_337); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_339 = 6'h23 == _T_9 ? $signed(64'sh0) : $signed(_GEN_338); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_340 = 6'h24 == _T_9 ? $signed(64'sh0) : $signed(_GEN_339); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_341 = 6'h25 == _T_9 ? $signed(64'sh0) : $signed(_GEN_340); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_342 = 6'h26 == _T_9 ? $signed(64'sh0) : $signed(_GEN_341); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_343 = 6'h27 == _T_9 ? $signed(64'sh0) : $signed(_GEN_342); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_344 = 6'h28 == _T_9 ? $signed(regsA_20_im) : $signed(_GEN_343); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_345 = 6'h29 == _T_9 ? $signed(regsA_21_im) : $signed(_GEN_344); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_346 = 6'h2a == _T_9 ? $signed(regsA_22_im) : $signed(_GEN_345); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_347 = 6'h2b == _T_9 ? $signed(regsA_23_im) : $signed(_GEN_346); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_348 = 6'h2c == _T_9 ? $signed(regsA_24_im) : $signed(_GEN_347); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_350 = 6'h1 == _T_9 ? $signed(regsA_1_re) : $signed(regsA_0_re); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_351 = 6'h2 == _T_9 ? $signed(regsA_2_re) : $signed(_GEN_350); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_352 = 6'h3 == _T_9 ? $signed(regsA_3_re) : $signed(_GEN_351); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_353 = 6'h4 == _T_9 ? $signed(regsA_4_re) : $signed(_GEN_352); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_354 = 6'h5 == _T_9 ? $signed(64'sh0) : $signed(_GEN_353); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_355 = 6'h6 == _T_9 ? $signed(64'sh0) : $signed(_GEN_354); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_356 = 6'h7 == _T_9 ? $signed(64'sh0) : $signed(_GEN_355); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_357 = 6'h8 == _T_9 ? $signed(64'sh0) : $signed(_GEN_356); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_358 = 6'h9 == _T_9 ? $signed(64'sh0) : $signed(_GEN_357); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_359 = 6'ha == _T_9 ? $signed(regsA_5_re) : $signed(_GEN_358); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_360 = 6'hb == _T_9 ? $signed(regsA_6_re) : $signed(_GEN_359); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_361 = 6'hc == _T_9 ? $signed(regsA_7_re) : $signed(_GEN_360); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_362 = 6'hd == _T_9 ? $signed(regsA_8_re) : $signed(_GEN_361); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_363 = 6'he == _T_9 ? $signed(regsA_9_re) : $signed(_GEN_362); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_364 = 6'hf == _T_9 ? $signed(64'sh0) : $signed(_GEN_363); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_365 = 6'h10 == _T_9 ? $signed(64'sh0) : $signed(_GEN_364); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_366 = 6'h11 == _T_9 ? $signed(64'sh0) : $signed(_GEN_365); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_367 = 6'h12 == _T_9 ? $signed(64'sh0) : $signed(_GEN_366); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_368 = 6'h13 == _T_9 ? $signed(64'sh0) : $signed(_GEN_367); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_369 = 6'h14 == _T_9 ? $signed(regsA_10_re) : $signed(_GEN_368); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_370 = 6'h15 == _T_9 ? $signed(regsA_11_re) : $signed(_GEN_369); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_371 = 6'h16 == _T_9 ? $signed(regsA_12_re) : $signed(_GEN_370); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_372 = 6'h17 == _T_9 ? $signed(regsA_13_re) : $signed(_GEN_371); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_373 = 6'h18 == _T_9 ? $signed(regsA_14_re) : $signed(_GEN_372); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_374 = 6'h19 == _T_9 ? $signed(64'sh0) : $signed(_GEN_373); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_375 = 6'h1a == _T_9 ? $signed(64'sh0) : $signed(_GEN_374); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_376 = 6'h1b == _T_9 ? $signed(64'sh0) : $signed(_GEN_375); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_377 = 6'h1c == _T_9 ? $signed(64'sh0) : $signed(_GEN_376); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_378 = 6'h1d == _T_9 ? $signed(64'sh0) : $signed(_GEN_377); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_379 = 6'h1e == _T_9 ? $signed(regsA_15_re) : $signed(_GEN_378); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_380 = 6'h1f == _T_9 ? $signed(regsA_16_re) : $signed(_GEN_379); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_381 = 6'h20 == _T_9 ? $signed(regsA_17_re) : $signed(_GEN_380); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_382 = 6'h21 == _T_9 ? $signed(regsA_18_re) : $signed(_GEN_381); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_383 = 6'h22 == _T_9 ? $signed(regsA_19_re) : $signed(_GEN_382); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_384 = 6'h23 == _T_9 ? $signed(64'sh0) : $signed(_GEN_383); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_385 = 6'h24 == _T_9 ? $signed(64'sh0) : $signed(_GEN_384); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_386 = 6'h25 == _T_9 ? $signed(64'sh0) : $signed(_GEN_385); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_387 = 6'h26 == _T_9 ? $signed(64'sh0) : $signed(_GEN_386); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_388 = 6'h27 == _T_9 ? $signed(64'sh0) : $signed(_GEN_387); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_389 = 6'h28 == _T_9 ? $signed(regsA_20_re) : $signed(_GEN_388); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_390 = 6'h29 == _T_9 ? $signed(regsA_21_re) : $signed(_GEN_389); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_391 = 6'h2a == _T_9 ? $signed(regsA_22_re) : $signed(_GEN_390); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_392 = 6'h2b == _T_9 ? $signed(regsA_23_re) : $signed(_GEN_391); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_393 = 6'h2c == _T_9 ? $signed(regsA_24_re) : $signed(_GEN_392); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [5:0] _T_10 = 2'h3 * 4'h9; // @[Matrix_Mul_V1.scala 148:44]
  wire [5:0] _T_12 = _T_10 + _GEN_649; // @[Matrix_Mul_V1.scala 148:60]
  wire [63:0] _GEN_395 = 6'h1 == _T_12 ? $signed(regsA_1_im) : $signed(regsA_0_im); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_396 = 6'h2 == _T_12 ? $signed(regsA_2_im) : $signed(_GEN_395); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_397 = 6'h3 == _T_12 ? $signed(regsA_3_im) : $signed(_GEN_396); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_398 = 6'h4 == _T_12 ? $signed(regsA_4_im) : $signed(_GEN_397); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_399 = 6'h5 == _T_12 ? $signed(64'sh0) : $signed(_GEN_398); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_400 = 6'h6 == _T_12 ? $signed(64'sh0) : $signed(_GEN_399); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_401 = 6'h7 == _T_12 ? $signed(64'sh0) : $signed(_GEN_400); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_402 = 6'h8 == _T_12 ? $signed(64'sh0) : $signed(_GEN_401); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_403 = 6'h9 == _T_12 ? $signed(64'sh0) : $signed(_GEN_402); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_404 = 6'ha == _T_12 ? $signed(regsA_5_im) : $signed(_GEN_403); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_405 = 6'hb == _T_12 ? $signed(regsA_6_im) : $signed(_GEN_404); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_406 = 6'hc == _T_12 ? $signed(regsA_7_im) : $signed(_GEN_405); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_407 = 6'hd == _T_12 ? $signed(regsA_8_im) : $signed(_GEN_406); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_408 = 6'he == _T_12 ? $signed(regsA_9_im) : $signed(_GEN_407); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_409 = 6'hf == _T_12 ? $signed(64'sh0) : $signed(_GEN_408); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_410 = 6'h10 == _T_12 ? $signed(64'sh0) : $signed(_GEN_409); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_411 = 6'h11 == _T_12 ? $signed(64'sh0) : $signed(_GEN_410); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_412 = 6'h12 == _T_12 ? $signed(64'sh0) : $signed(_GEN_411); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_413 = 6'h13 == _T_12 ? $signed(64'sh0) : $signed(_GEN_412); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_414 = 6'h14 == _T_12 ? $signed(regsA_10_im) : $signed(_GEN_413); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_415 = 6'h15 == _T_12 ? $signed(regsA_11_im) : $signed(_GEN_414); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_416 = 6'h16 == _T_12 ? $signed(regsA_12_im) : $signed(_GEN_415); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_417 = 6'h17 == _T_12 ? $signed(regsA_13_im) : $signed(_GEN_416); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_418 = 6'h18 == _T_12 ? $signed(regsA_14_im) : $signed(_GEN_417); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_419 = 6'h19 == _T_12 ? $signed(64'sh0) : $signed(_GEN_418); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_420 = 6'h1a == _T_12 ? $signed(64'sh0) : $signed(_GEN_419); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_421 = 6'h1b == _T_12 ? $signed(64'sh0) : $signed(_GEN_420); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_422 = 6'h1c == _T_12 ? $signed(64'sh0) : $signed(_GEN_421); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_423 = 6'h1d == _T_12 ? $signed(64'sh0) : $signed(_GEN_422); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_424 = 6'h1e == _T_12 ? $signed(regsA_15_im) : $signed(_GEN_423); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_425 = 6'h1f == _T_12 ? $signed(regsA_16_im) : $signed(_GEN_424); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_426 = 6'h20 == _T_12 ? $signed(regsA_17_im) : $signed(_GEN_425); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_427 = 6'h21 == _T_12 ? $signed(regsA_18_im) : $signed(_GEN_426); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_428 = 6'h22 == _T_12 ? $signed(regsA_19_im) : $signed(_GEN_427); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_429 = 6'h23 == _T_12 ? $signed(64'sh0) : $signed(_GEN_428); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_430 = 6'h24 == _T_12 ? $signed(64'sh0) : $signed(_GEN_429); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_431 = 6'h25 == _T_12 ? $signed(64'sh0) : $signed(_GEN_430); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_432 = 6'h26 == _T_12 ? $signed(64'sh0) : $signed(_GEN_431); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_433 = 6'h27 == _T_12 ? $signed(64'sh0) : $signed(_GEN_432); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_434 = 6'h28 == _T_12 ? $signed(regsA_20_im) : $signed(_GEN_433); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_435 = 6'h29 == _T_12 ? $signed(regsA_21_im) : $signed(_GEN_434); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_436 = 6'h2a == _T_12 ? $signed(regsA_22_im) : $signed(_GEN_435); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_437 = 6'h2b == _T_12 ? $signed(regsA_23_im) : $signed(_GEN_436); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_438 = 6'h2c == _T_12 ? $signed(regsA_24_im) : $signed(_GEN_437); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_440 = 6'h1 == _T_12 ? $signed(regsA_1_re) : $signed(regsA_0_re); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_441 = 6'h2 == _T_12 ? $signed(regsA_2_re) : $signed(_GEN_440); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_442 = 6'h3 == _T_12 ? $signed(regsA_3_re) : $signed(_GEN_441); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_443 = 6'h4 == _T_12 ? $signed(regsA_4_re) : $signed(_GEN_442); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_444 = 6'h5 == _T_12 ? $signed(64'sh0) : $signed(_GEN_443); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_445 = 6'h6 == _T_12 ? $signed(64'sh0) : $signed(_GEN_444); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_446 = 6'h7 == _T_12 ? $signed(64'sh0) : $signed(_GEN_445); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_447 = 6'h8 == _T_12 ? $signed(64'sh0) : $signed(_GEN_446); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_448 = 6'h9 == _T_12 ? $signed(64'sh0) : $signed(_GEN_447); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_449 = 6'ha == _T_12 ? $signed(regsA_5_re) : $signed(_GEN_448); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_450 = 6'hb == _T_12 ? $signed(regsA_6_re) : $signed(_GEN_449); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_451 = 6'hc == _T_12 ? $signed(regsA_7_re) : $signed(_GEN_450); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_452 = 6'hd == _T_12 ? $signed(regsA_8_re) : $signed(_GEN_451); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_453 = 6'he == _T_12 ? $signed(regsA_9_re) : $signed(_GEN_452); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_454 = 6'hf == _T_12 ? $signed(64'sh0) : $signed(_GEN_453); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_455 = 6'h10 == _T_12 ? $signed(64'sh0) : $signed(_GEN_454); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_456 = 6'h11 == _T_12 ? $signed(64'sh0) : $signed(_GEN_455); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_457 = 6'h12 == _T_12 ? $signed(64'sh0) : $signed(_GEN_456); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_458 = 6'h13 == _T_12 ? $signed(64'sh0) : $signed(_GEN_457); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_459 = 6'h14 == _T_12 ? $signed(regsA_10_re) : $signed(_GEN_458); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_460 = 6'h15 == _T_12 ? $signed(regsA_11_re) : $signed(_GEN_459); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_461 = 6'h16 == _T_12 ? $signed(regsA_12_re) : $signed(_GEN_460); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_462 = 6'h17 == _T_12 ? $signed(regsA_13_re) : $signed(_GEN_461); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_463 = 6'h18 == _T_12 ? $signed(regsA_14_re) : $signed(_GEN_462); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_464 = 6'h19 == _T_12 ? $signed(64'sh0) : $signed(_GEN_463); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_465 = 6'h1a == _T_12 ? $signed(64'sh0) : $signed(_GEN_464); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_466 = 6'h1b == _T_12 ? $signed(64'sh0) : $signed(_GEN_465); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_467 = 6'h1c == _T_12 ? $signed(64'sh0) : $signed(_GEN_466); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_468 = 6'h1d == _T_12 ? $signed(64'sh0) : $signed(_GEN_467); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_469 = 6'h1e == _T_12 ? $signed(regsA_15_re) : $signed(_GEN_468); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_470 = 6'h1f == _T_12 ? $signed(regsA_16_re) : $signed(_GEN_469); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_471 = 6'h20 == _T_12 ? $signed(regsA_17_re) : $signed(_GEN_470); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_472 = 6'h21 == _T_12 ? $signed(regsA_18_re) : $signed(_GEN_471); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_473 = 6'h22 == _T_12 ? $signed(regsA_19_re) : $signed(_GEN_472); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_474 = 6'h23 == _T_12 ? $signed(64'sh0) : $signed(_GEN_473); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_475 = 6'h24 == _T_12 ? $signed(64'sh0) : $signed(_GEN_474); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_476 = 6'h25 == _T_12 ? $signed(64'sh0) : $signed(_GEN_475); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_477 = 6'h26 == _T_12 ? $signed(64'sh0) : $signed(_GEN_476); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_478 = 6'h27 == _T_12 ? $signed(64'sh0) : $signed(_GEN_477); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_479 = 6'h28 == _T_12 ? $signed(regsA_20_re) : $signed(_GEN_478); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_480 = 6'h29 == _T_12 ? $signed(regsA_21_re) : $signed(_GEN_479); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_481 = 6'h2a == _T_12 ? $signed(regsA_22_re) : $signed(_GEN_480); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_482 = 6'h2b == _T_12 ? $signed(regsA_23_re) : $signed(_GEN_481); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_483 = 6'h2c == _T_12 ? $signed(regsA_24_re) : $signed(_GEN_482); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [6:0] _T_13 = 3'h4 * 4'h9; // @[Matrix_Mul_V1.scala 148:44]
  wire [6:0] _GEN_651 = {{2'd0}, input_point}; // @[Matrix_Mul_V1.scala 148:60]
  wire [6:0] _T_15 = _T_13 + _GEN_651; // @[Matrix_Mul_V1.scala 148:60]
  wire [63:0] _GEN_485 = 6'h1 == _T_15[5:0] ? $signed(regsA_1_im) : $signed(regsA_0_im); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_486 = 6'h2 == _T_15[5:0] ? $signed(regsA_2_im) : $signed(_GEN_485); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_487 = 6'h3 == _T_15[5:0] ? $signed(regsA_3_im) : $signed(_GEN_486); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_488 = 6'h4 == _T_15[5:0] ? $signed(regsA_4_im) : $signed(_GEN_487); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_489 = 6'h5 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_488); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_490 = 6'h6 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_489); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_491 = 6'h7 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_490); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_492 = 6'h8 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_491); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_493 = 6'h9 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_492); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_494 = 6'ha == _T_15[5:0] ? $signed(regsA_5_im) : $signed(_GEN_493); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_495 = 6'hb == _T_15[5:0] ? $signed(regsA_6_im) : $signed(_GEN_494); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_496 = 6'hc == _T_15[5:0] ? $signed(regsA_7_im) : $signed(_GEN_495); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_497 = 6'hd == _T_15[5:0] ? $signed(regsA_8_im) : $signed(_GEN_496); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_498 = 6'he == _T_15[5:0] ? $signed(regsA_9_im) : $signed(_GEN_497); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_499 = 6'hf == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_498); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_500 = 6'h10 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_499); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_501 = 6'h11 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_500); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_502 = 6'h12 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_501); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_503 = 6'h13 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_502); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_504 = 6'h14 == _T_15[5:0] ? $signed(regsA_10_im) : $signed(_GEN_503); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_505 = 6'h15 == _T_15[5:0] ? $signed(regsA_11_im) : $signed(_GEN_504); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_506 = 6'h16 == _T_15[5:0] ? $signed(regsA_12_im) : $signed(_GEN_505); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_507 = 6'h17 == _T_15[5:0] ? $signed(regsA_13_im) : $signed(_GEN_506); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_508 = 6'h18 == _T_15[5:0] ? $signed(regsA_14_im) : $signed(_GEN_507); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_509 = 6'h19 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_508); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_510 = 6'h1a == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_509); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_511 = 6'h1b == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_510); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_512 = 6'h1c == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_511); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_513 = 6'h1d == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_512); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_514 = 6'h1e == _T_15[5:0] ? $signed(regsA_15_im) : $signed(_GEN_513); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_515 = 6'h1f == _T_15[5:0] ? $signed(regsA_16_im) : $signed(_GEN_514); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_516 = 6'h20 == _T_15[5:0] ? $signed(regsA_17_im) : $signed(_GEN_515); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_517 = 6'h21 == _T_15[5:0] ? $signed(regsA_18_im) : $signed(_GEN_516); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_518 = 6'h22 == _T_15[5:0] ? $signed(regsA_19_im) : $signed(_GEN_517); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_519 = 6'h23 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_518); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_520 = 6'h24 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_519); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_521 = 6'h25 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_520); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_522 = 6'h26 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_521); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_523 = 6'h27 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_522); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_524 = 6'h28 == _T_15[5:0] ? $signed(regsA_20_im) : $signed(_GEN_523); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_525 = 6'h29 == _T_15[5:0] ? $signed(regsA_21_im) : $signed(_GEN_524); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_526 = 6'h2a == _T_15[5:0] ? $signed(regsA_22_im) : $signed(_GEN_525); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_527 = 6'h2b == _T_15[5:0] ? $signed(regsA_23_im) : $signed(_GEN_526); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_528 = 6'h2c == _T_15[5:0] ? $signed(regsA_24_im) : $signed(_GEN_527); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_530 = 6'h1 == _T_15[5:0] ? $signed(regsA_1_re) : $signed(regsA_0_re); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_531 = 6'h2 == _T_15[5:0] ? $signed(regsA_2_re) : $signed(_GEN_530); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_532 = 6'h3 == _T_15[5:0] ? $signed(regsA_3_re) : $signed(_GEN_531); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_533 = 6'h4 == _T_15[5:0] ? $signed(regsA_4_re) : $signed(_GEN_532); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_534 = 6'h5 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_533); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_535 = 6'h6 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_534); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_536 = 6'h7 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_535); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_537 = 6'h8 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_536); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_538 = 6'h9 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_537); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_539 = 6'ha == _T_15[5:0] ? $signed(regsA_5_re) : $signed(_GEN_538); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_540 = 6'hb == _T_15[5:0] ? $signed(regsA_6_re) : $signed(_GEN_539); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_541 = 6'hc == _T_15[5:0] ? $signed(regsA_7_re) : $signed(_GEN_540); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_542 = 6'hd == _T_15[5:0] ? $signed(regsA_8_re) : $signed(_GEN_541); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_543 = 6'he == _T_15[5:0] ? $signed(regsA_9_re) : $signed(_GEN_542); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_544 = 6'hf == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_543); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_545 = 6'h10 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_544); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_546 = 6'h11 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_545); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_547 = 6'h12 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_546); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_548 = 6'h13 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_547); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_549 = 6'h14 == _T_15[5:0] ? $signed(regsA_10_re) : $signed(_GEN_548); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_550 = 6'h15 == _T_15[5:0] ? $signed(regsA_11_re) : $signed(_GEN_549); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_551 = 6'h16 == _T_15[5:0] ? $signed(regsA_12_re) : $signed(_GEN_550); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_552 = 6'h17 == _T_15[5:0] ? $signed(regsA_13_re) : $signed(_GEN_551); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_553 = 6'h18 == _T_15[5:0] ? $signed(regsA_14_re) : $signed(_GEN_552); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_554 = 6'h19 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_553); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_555 = 6'h1a == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_554); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_556 = 6'h1b == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_555); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_557 = 6'h1c == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_556); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_558 = 6'h1d == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_557); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_559 = 6'h1e == _T_15[5:0] ? $signed(regsA_15_re) : $signed(_GEN_558); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_560 = 6'h1f == _T_15[5:0] ? $signed(regsA_16_re) : $signed(_GEN_559); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_561 = 6'h20 == _T_15[5:0] ? $signed(regsA_17_re) : $signed(_GEN_560); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_562 = 6'h21 == _T_15[5:0] ? $signed(regsA_18_re) : $signed(_GEN_561); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_563 = 6'h22 == _T_15[5:0] ? $signed(regsA_19_re) : $signed(_GEN_562); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_564 = 6'h23 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_563); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_565 = 6'h24 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_564); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_566 = 6'h25 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_565); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_567 = 6'h26 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_566); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_568 = 6'h27 == _T_15[5:0] ? $signed(64'sh0) : $signed(_GEN_567); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_569 = 6'h28 == _T_15[5:0] ? $signed(regsA_20_re) : $signed(_GEN_568); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_570 = 6'h29 == _T_15[5:0] ? $signed(regsA_21_re) : $signed(_GEN_569); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_571 = 6'h2a == _T_15[5:0] ? $signed(regsA_22_re) : $signed(_GEN_570); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_572 = 6'h2b == _T_15[5:0] ? $signed(regsA_23_re) : $signed(_GEN_571); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [63:0] _GEN_573 = 6'h2c == _T_15[5:0] ? $signed(regsA_24_re) : $signed(_GEN_572); // @[Matrix_Mul_V1.scala 148:{27,27}]
  wire [3:0] _T_18 = 1'h0 * 3'h5; // @[Matrix_Mul_V1.scala 162:36]
  wire [4:0] _GEN_652 = {{1'd0}, _T_18}; // @[Matrix_Mul_V1.scala 162:52]
  wire [4:0] _T_20 = _GEN_652 + input_point; // @[Matrix_Mul_V1.scala 162:52]
  wire [63:0] _GEN_585 = 3'h1 == _T_20[2:0] ? $signed(regsB_1_im) : $signed(regsB_0_im); // @[Matrix_Mul_V1.scala 162:{19,19}]
  wire [63:0] _GEN_586 = 3'h2 == _T_20[2:0] ? $signed(regsB_2_im) : $signed(_GEN_585); // @[Matrix_Mul_V1.scala 162:{19,19}]
  wire [63:0] _GEN_587 = 3'h3 == _T_20[2:0] ? $signed(regsB_3_im) : $signed(_GEN_586); // @[Matrix_Mul_V1.scala 162:{19,19}]
  wire [63:0] _GEN_588 = 3'h4 == _T_20[2:0] ? $signed(regsB_4_im) : $signed(_GEN_587); // @[Matrix_Mul_V1.scala 162:{19,19}]
  wire [63:0] _GEN_590 = 3'h1 == _T_20[2:0] ? $signed(regsB_1_re) : $signed(regsB_0_re); // @[Matrix_Mul_V1.scala 162:{19,19}]
  wire [63:0] _GEN_591 = 3'h2 == _T_20[2:0] ? $signed(regsB_2_re) : $signed(_GEN_590); // @[Matrix_Mul_V1.scala 162:{19,19}]
  wire [63:0] _GEN_592 = 3'h3 == _T_20[2:0] ? $signed(regsB_3_re) : $signed(_GEN_591); // @[Matrix_Mul_V1.scala 162:{19,19}]
  wire [63:0] _GEN_593 = 3'h4 == _T_20[2:0] ? $signed(regsB_4_re) : $signed(_GEN_592); // @[Matrix_Mul_V1.scala 162:{19,19}]
  PE PE ( // @[Matrix_Mul_V1.scala 86:35]
    .clock(PE_clock),
    .io_reset(PE_io_reset),
    .io_in_x_re(PE_io_in_x_re),
    .io_in_x_im(PE_io_in_x_im),
    .io_in_y_re(PE_io_in_y_re),
    .io_in_y_im(PE_io_in_y_im),
    .io_out_pe_re(PE_io_out_pe_re),
    .io_out_pe_im(PE_io_out_pe_im),
    .io_out_y_re(PE_io_out_y_re),
    .io_out_y_im(PE_io_out_y_im)
  );
  PE PE_1 ( // @[Matrix_Mul_V1.scala 86:35]
    .clock(PE_1_clock),
    .io_reset(PE_1_io_reset),
    .io_in_x_re(PE_1_io_in_x_re),
    .io_in_x_im(PE_1_io_in_x_im),
    .io_in_y_re(PE_1_io_in_y_re),
    .io_in_y_im(PE_1_io_in_y_im),
    .io_out_pe_re(PE_1_io_out_pe_re),
    .io_out_pe_im(PE_1_io_out_pe_im),
    .io_out_y_re(PE_1_io_out_y_re),
    .io_out_y_im(PE_1_io_out_y_im)
  );
  PE PE_2 ( // @[Matrix_Mul_V1.scala 86:35]
    .clock(PE_2_clock),
    .io_reset(PE_2_io_reset),
    .io_in_x_re(PE_2_io_in_x_re),
    .io_in_x_im(PE_2_io_in_x_im),
    .io_in_y_re(PE_2_io_in_y_re),
    .io_in_y_im(PE_2_io_in_y_im),
    .io_out_pe_re(PE_2_io_out_pe_re),
    .io_out_pe_im(PE_2_io_out_pe_im),
    .io_out_y_re(PE_2_io_out_y_re),
    .io_out_y_im(PE_2_io_out_y_im)
  );
  PE PE_3 ( // @[Matrix_Mul_V1.scala 86:35]
    .clock(PE_3_clock),
    .io_reset(PE_3_io_reset),
    .io_in_x_re(PE_3_io_in_x_re),
    .io_in_x_im(PE_3_io_in_x_im),
    .io_in_y_re(PE_3_io_in_y_re),
    .io_in_y_im(PE_3_io_in_y_im),
    .io_out_pe_re(PE_3_io_out_pe_re),
    .io_out_pe_im(PE_3_io_out_pe_im),
    .io_out_y_re(PE_3_io_out_y_re),
    .io_out_y_im(PE_3_io_out_y_im)
  );
  PE PE_4 ( // @[Matrix_Mul_V1.scala 86:35]
    .clock(PE_4_clock),
    .io_reset(PE_4_io_reset),
    .io_in_x_re(PE_4_io_in_x_re),
    .io_in_x_im(PE_4_io_in_x_im),
    .io_in_y_re(PE_4_io_in_y_re),
    .io_in_y_im(PE_4_io_in_y_im),
    .io_out_pe_re(PE_4_io_out_pe_re),
    .io_out_pe_im(PE_4_io_out_pe_im),
    .io_out_y_re(PE_4_io_out_y_re),
    .io_out_y_im(PE_4_io_out_y_im)
  );
  assign io_matrixC_0_re = PE_io_out_pe_re; // @[Matrix_Mul_V1.scala 195:19]
  assign io_matrixC_0_im = PE_io_out_pe_im; // @[Matrix_Mul_V1.scala 195:19]
  assign io_matrixC_1_re = PE_1_io_out_pe_re; // @[Matrix_Mul_V1.scala 195:19]
  assign io_matrixC_1_im = PE_1_io_out_pe_im; // @[Matrix_Mul_V1.scala 195:19]
  assign io_matrixC_2_re = PE_2_io_out_pe_re; // @[Matrix_Mul_V1.scala 195:19]
  assign io_matrixC_2_im = PE_2_io_out_pe_im; // @[Matrix_Mul_V1.scala 195:19]
  assign io_matrixC_3_re = PE_3_io_out_pe_re; // @[Matrix_Mul_V1.scala 195:19]
  assign io_matrixC_3_im = PE_3_io_out_pe_im; // @[Matrix_Mul_V1.scala 195:19]
  assign io_matrixC_4_re = PE_4_io_out_pe_re; // @[Matrix_Mul_V1.scala 195:19]
  assign io_matrixC_4_im = PE_4_io_out_pe_im; // @[Matrix_Mul_V1.scala 195:19]
  assign io_valid = input_point >= 5'h9; // @[Matrix_Mul_V1.scala 188:20]
  assign PE_clock = clock;
  assign PE_io_reset = io_reset | io_ready; // @[Matrix_Mul_V1.scala 89:18 101:20]
  assign PE_io_in_x_re = input_point < 5'h9 ? $signed(_GEN_213) : $signed(64'sh0); // @[Matrix_Mul_V1.scala 145:37 148:27 153:30]
  assign PE_io_in_x_im = input_point < 5'h9 ? $signed(_GEN_168) : $signed(64'sh0); // @[Matrix_Mul_V1.scala 145:37 148:27 154:30]
  assign PE_io_in_y_re = input_point < 5'h5 ? $signed(_GEN_593) : $signed(64'sh0); // @[Matrix_Mul_V1.scala 159:37 162:19 167:22]
  assign PE_io_in_y_im = input_point < 5'h5 ? $signed(_GEN_588) : $signed(64'sh0); // @[Matrix_Mul_V1.scala 159:37 162:19 168:22]
  assign PE_1_clock = clock;
  assign PE_1_io_reset = io_reset | io_ready; // @[Matrix_Mul_V1.scala 89:18 101:20]
  assign PE_1_io_in_x_re = input_point < 5'h9 ? $signed(_GEN_303) : $signed(64'sh0); // @[Matrix_Mul_V1.scala 145:37 148:27 153:30]
  assign PE_1_io_in_x_im = input_point < 5'h9 ? $signed(_GEN_258) : $signed(64'sh0); // @[Matrix_Mul_V1.scala 145:37 148:27 154:30]
  assign PE_1_io_in_y_re = PE_io_out_y_re; // @[Matrix_Mul_V1.scala 175:25]
  assign PE_1_io_in_y_im = PE_io_out_y_im; // @[Matrix_Mul_V1.scala 175:25]
  assign PE_2_clock = clock;
  assign PE_2_io_reset = io_reset | io_ready; // @[Matrix_Mul_V1.scala 89:18 101:20]
  assign PE_2_io_in_x_re = input_point < 5'h9 ? $signed(_GEN_393) : $signed(64'sh0); // @[Matrix_Mul_V1.scala 145:37 148:27 153:30]
  assign PE_2_io_in_x_im = input_point < 5'h9 ? $signed(_GEN_348) : $signed(64'sh0); // @[Matrix_Mul_V1.scala 145:37 148:27 154:30]
  assign PE_2_io_in_y_re = PE_1_io_out_y_re; // @[Matrix_Mul_V1.scala 175:25]
  assign PE_2_io_in_y_im = PE_1_io_out_y_im; // @[Matrix_Mul_V1.scala 175:25]
  assign PE_3_clock = clock;
  assign PE_3_io_reset = io_reset | io_ready; // @[Matrix_Mul_V1.scala 89:18 101:20]
  assign PE_3_io_in_x_re = input_point < 5'h9 ? $signed(_GEN_483) : $signed(64'sh0); // @[Matrix_Mul_V1.scala 145:37 148:27 153:30]
  assign PE_3_io_in_x_im = input_point < 5'h9 ? $signed(_GEN_438) : $signed(64'sh0); // @[Matrix_Mul_V1.scala 145:37 148:27 154:30]
  assign PE_3_io_in_y_re = PE_2_io_out_y_re; // @[Matrix_Mul_V1.scala 175:25]
  assign PE_3_io_in_y_im = PE_2_io_out_y_im; // @[Matrix_Mul_V1.scala 175:25]
  assign PE_4_clock = clock;
  assign PE_4_io_reset = io_reset | io_ready; // @[Matrix_Mul_V1.scala 89:18 101:20]
  assign PE_4_io_in_x_re = input_point < 5'h9 ? $signed(_GEN_573) : $signed(64'sh0); // @[Matrix_Mul_V1.scala 145:37 148:27 153:30]
  assign PE_4_io_in_x_im = input_point < 5'h9 ? $signed(_GEN_528) : $signed(64'sh0); // @[Matrix_Mul_V1.scala 145:37 148:27 154:30]
  assign PE_4_io_in_y_re = PE_3_io_out_y_re; // @[Matrix_Mul_V1.scala 175:25]
  assign PE_4_io_in_y_im = PE_3_io_out_y_im; // @[Matrix_Mul_V1.scala 175:25]
  always @(posedge clock) begin
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_0_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_0_re <= io_matrixA_0_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_0_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_0_im <= io_matrixA_0_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_1_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_1_re <= io_matrixA_1_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_1_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_1_im <= io_matrixA_1_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_2_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_2_re <= io_matrixA_2_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_2_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_2_im <= io_matrixA_2_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_3_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_3_re <= io_matrixA_3_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_3_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_3_im <= io_matrixA_3_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_4_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_4_re <= io_matrixA_4_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_4_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_4_im <= io_matrixA_4_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_5_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_5_re <= io_matrixA_5_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_5_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_5_im <= io_matrixA_5_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_6_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_6_re <= io_matrixA_6_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_6_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_6_im <= io_matrixA_6_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_7_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_7_re <= io_matrixA_7_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_7_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_7_im <= io_matrixA_7_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_8_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_8_re <= io_matrixA_8_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_8_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_8_im <= io_matrixA_8_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_9_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_9_re <= io_matrixA_9_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_9_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_9_im <= io_matrixA_9_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_10_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_10_re <= io_matrixA_10_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_10_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_10_im <= io_matrixA_10_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_11_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_11_re <= io_matrixA_11_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_11_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_11_im <= io_matrixA_11_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_12_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_12_re <= io_matrixA_12_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_12_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_12_im <= io_matrixA_12_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_13_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_13_re <= io_matrixA_13_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_13_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_13_im <= io_matrixA_13_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_14_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_14_re <= io_matrixA_14_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_14_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_14_im <= io_matrixA_14_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_15_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_15_re <= io_matrixA_15_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_15_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_15_im <= io_matrixA_15_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_16_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_16_re <= io_matrixA_16_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_16_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_16_im <= io_matrixA_16_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_17_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_17_re <= io_matrixA_17_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_17_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_17_im <= io_matrixA_17_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_18_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_18_re <= io_matrixA_18_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_18_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_18_im <= io_matrixA_18_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_19_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_19_re <= io_matrixA_19_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_19_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_19_im <= io_matrixA_19_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_20_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_20_re <= io_matrixA_20_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_20_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_20_im <= io_matrixA_20_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_21_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_21_re <= io_matrixA_21_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_21_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_21_im <= io_matrixA_21_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_22_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_22_re <= io_matrixA_22_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_22_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_22_im <= io_matrixA_22_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_23_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_23_re <= io_matrixA_23_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_23_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_23_im <= io_matrixA_23_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_24_re <= 64'sh0; // @[Matrix_Mul_V1.scala 92:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_24_re <= io_matrixA_24_re; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsA_24_im <= 64'sh0; // @[Matrix_Mul_V1.scala 93:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsA_24_im <= io_matrixA_24_im; // @[Matrix_Mul_V1.scala 105:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsB_0_re <= 64'sh0; // @[Matrix_Mul_V1.scala 96:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsB_0_re <= io_matrixB_0_re; // @[Matrix_Mul_V1.scala 106:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsB_0_im <= 64'sh0; // @[Matrix_Mul_V1.scala 97:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsB_0_im <= io_matrixB_0_im; // @[Matrix_Mul_V1.scala 106:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsB_1_re <= 64'sh0; // @[Matrix_Mul_V1.scala 96:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsB_1_re <= io_matrixB_1_re; // @[Matrix_Mul_V1.scala 106:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsB_1_im <= 64'sh0; // @[Matrix_Mul_V1.scala 97:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsB_1_im <= io_matrixB_1_im; // @[Matrix_Mul_V1.scala 106:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsB_2_re <= 64'sh0; // @[Matrix_Mul_V1.scala 96:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsB_2_re <= io_matrixB_2_re; // @[Matrix_Mul_V1.scala 106:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsB_2_im <= 64'sh0; // @[Matrix_Mul_V1.scala 97:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsB_2_im <= io_matrixB_2_im; // @[Matrix_Mul_V1.scala 106:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsB_3_re <= 64'sh0; // @[Matrix_Mul_V1.scala 96:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsB_3_re <= io_matrixB_3_re; // @[Matrix_Mul_V1.scala 106:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsB_3_im <= 64'sh0; // @[Matrix_Mul_V1.scala 97:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsB_3_im <= io_matrixB_3_im; // @[Matrix_Mul_V1.scala 106:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsB_4_re <= 64'sh0; // @[Matrix_Mul_V1.scala 96:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsB_4_re <= io_matrixB_4_re; // @[Matrix_Mul_V1.scala 106:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      regsB_4_im <= 64'sh0; // @[Matrix_Mul_V1.scala 97:19]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      regsB_4_im <= io_matrixB_4_im; // @[Matrix_Mul_V1.scala 106:11]
    end
    if (io_reset) begin // @[Matrix_Mul_V1.scala 89:18]
      input_point <= 5'h0; // @[Matrix_Mul_V1.scala 99:17]
    end else if (io_ready) begin // @[Matrix_Mul_V1.scala 103:24]
      input_point <= 5'h0; // @[Matrix_Mul_V1.scala 108:17]
    end else begin
      input_point <= _input_point_T_1; // @[Matrix_Mul_V1.scala 116:17]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  regsA_0_re = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  regsA_0_im = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  regsA_1_re = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  regsA_1_im = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  regsA_2_re = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  regsA_2_im = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  regsA_3_re = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  regsA_3_im = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  regsA_4_re = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  regsA_4_im = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  regsA_5_re = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  regsA_5_im = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  regsA_6_re = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  regsA_6_im = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  regsA_7_re = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  regsA_7_im = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  regsA_8_re = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  regsA_8_im = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  regsA_9_re = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  regsA_9_im = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  regsA_10_re = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  regsA_10_im = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  regsA_11_re = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  regsA_11_im = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  regsA_12_re = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  regsA_12_im = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  regsA_13_re = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  regsA_13_im = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  regsA_14_re = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  regsA_14_im = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  regsA_15_re = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  regsA_15_im = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  regsA_16_re = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  regsA_16_im = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  regsA_17_re = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  regsA_17_im = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  regsA_18_re = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  regsA_18_im = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  regsA_19_re = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  regsA_19_im = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  regsA_20_re = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  regsA_20_im = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  regsA_21_re = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  regsA_21_im = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  regsA_22_re = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  regsA_22_im = _RAND_45[63:0];
  _RAND_46 = {2{`RANDOM}};
  regsA_23_re = _RAND_46[63:0];
  _RAND_47 = {2{`RANDOM}};
  regsA_23_im = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  regsA_24_re = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  regsA_24_im = _RAND_49[63:0];
  _RAND_50 = {2{`RANDOM}};
  regsB_0_re = _RAND_50[63:0];
  _RAND_51 = {2{`RANDOM}};
  regsB_0_im = _RAND_51[63:0];
  _RAND_52 = {2{`RANDOM}};
  regsB_1_re = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  regsB_1_im = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  regsB_2_re = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  regsB_2_im = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  regsB_3_re = _RAND_56[63:0];
  _RAND_57 = {2{`RANDOM}};
  regsB_3_im = _RAND_57[63:0];
  _RAND_58 = {2{`RANDOM}};
  regsB_4_re = _RAND_58[63:0];
  _RAND_59 = {2{`RANDOM}};
  regsB_4_im = _RAND_59[63:0];
  _RAND_60 = {1{`RANDOM}};
  input_point = _RAND_60[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CORDIC_CV_ORIGIN(
  input         clock,
  input         reset,
  input  [63:0] io_x,
  input  [63:0] io_y,
  output [63:0] io_theta,
  output [63:0] io_r
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [63:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [63:0] _RAND_41;
  reg [63:0] _RAND_42;
  reg [63:0] _RAND_43;
  reg [63:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [63:0] _RAND_46;
  reg [63:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [63:0] _RAND_49;
  reg [63:0] _RAND_50;
  reg [63:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [63:0] _RAND_53;
  reg [63:0] _RAND_54;
  reg [63:0] _RAND_55;
  reg [63:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [63:0] _RAND_58;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] current_x_0; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_1; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_2; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_3; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_4; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_5; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_6; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_7; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_8; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_9; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_10; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_11; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_12; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_13; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_14; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_15; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_16; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_17; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_18; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_x_19; // @[Cordic_CV.scala 40:43]
  reg [63:0] current_y_0; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_1; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_2; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_3; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_4; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_5; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_6; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_7; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_8; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_9; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_10; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_11; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_12; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_13; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_14; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_15; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_16; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_17; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_y_18; // @[Cordic_CV.scala 41:43]
  reg [63:0] current_theta_0; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_1; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_2; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_3; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_4; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_5; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_6; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_7; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_8; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_9; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_10; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_11; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_12; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_13; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_14; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_15; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_16; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_17; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_18; // @[Cordic_CV.scala 42:47]
  reg [63:0] current_theta_19; // @[Cordic_CV.scala 42:47]
  wire [63:0] _current_x_0_T_3 = $signed(io_x) - $signed(io_y); // @[Cordic_CV.scala 52:30]
  wire [63:0] _current_y_0_T_3 = $signed(io_y) + $signed(io_x); // @[Cordic_CV.scala 53:30]
  wire [63:0] _current_theta_0_T_2 = 64'sh0 - 64'shb40000000; // @[Cordic_CV.scala 54:29]
  wire [63:0] _current_x_0_T_7 = $signed(io_x) + $signed(io_y); // @[Cordic_CV.scala 56:30]
  wire [63:0] _current_y_0_T_7 = $signed(io_y) - $signed(io_x); // @[Cordic_CV.scala 57:30]
  wire [62:0] _current_x_1_T = current_y_0[63:1]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_60 = {{1{_current_x_1_T[62]}},_current_x_1_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_1_T_3 = $signed(current_x_0) - $signed(_GEN_60); // @[Cordic_CV.scala 62:42]
  wire [62:0] _current_y_1_T = current_x_0[63:1]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_61 = {{1{_current_y_1_T[62]}},_current_y_1_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_1_T_3 = $signed(current_y_0) + $signed(_GEN_61); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_1_T_2 = $signed(current_theta_0) - 64'sh6a429cc6a; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_1_T_7 = $signed(current_x_0) + $signed(_GEN_60); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_1_T_7 = $signed(current_y_0) - $signed(_GEN_61); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_1_T_5 = $signed(current_theta_0) + 64'sh6a429cc6a; // @[Cordic_CV.scala 68:50]
  wire [61:0] _current_x_2_T = current_y_1[63:2]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_64 = {{2{_current_x_2_T[61]}},_current_x_2_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_2_T_3 = $signed(current_x_1) - $signed(_GEN_64); // @[Cordic_CV.scala 62:42]
  wire [61:0] _current_y_2_T = current_x_1[63:2]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_65 = {{2{_current_y_2_T[61]}},_current_y_2_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_2_T_3 = $signed(current_y_1) + $signed(_GEN_65); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_2_T_2 = $signed(current_theta_1) - 64'sh38251d01f; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_2_T_7 = $signed(current_x_1) + $signed(_GEN_64); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_2_T_7 = $signed(current_y_1) - $signed(_GEN_65); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_2_T_5 = $signed(current_theta_1) + 64'sh38251d01f; // @[Cordic_CV.scala 68:50]
  wire [60:0] _current_x_3_T = current_y_2[63:3]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_68 = {{3{_current_x_3_T[60]}},_current_x_3_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_3_T_3 = $signed(current_x_2) - $signed(_GEN_68); // @[Cordic_CV.scala 62:42]
  wire [60:0] _current_y_3_T = current_x_2[63:3]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_69 = {{3{_current_y_3_T[60]}},_current_y_3_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_3_T_3 = $signed(current_y_2) + $signed(_GEN_69); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_3_T_2 = $signed(current_theta_2) - 64'sh1c8004492; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_3_T_7 = $signed(current_x_2) + $signed(_GEN_68); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_3_T_7 = $signed(current_y_2) - $signed(_GEN_69); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_3_T_5 = $signed(current_theta_2) + 64'sh1c8004492; // @[Cordic_CV.scala 68:50]
  wire [59:0] _current_x_4_T = current_y_3[63:4]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_72 = {{4{_current_x_4_T[59]}},_current_x_4_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_4_T_3 = $signed(current_x_3) - $signed(_GEN_72); // @[Cordic_CV.scala 62:42]
  wire [59:0] _current_y_4_T = current_x_3[63:4]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_73 = {{4{_current_y_4_T[59]}},_current_y_4_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_4_T_3 = $signed(current_y_3) + $signed(_GEN_73); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_4_T_2 = $signed(current_theta_3) - 64'she4e2a993; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_4_T_7 = $signed(current_x_3) + $signed(_GEN_72); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_4_T_7 = $signed(current_y_3) - $signed(_GEN_73); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_4_T_5 = $signed(current_theta_3) + 64'she4e2a993; // @[Cordic_CV.scala 68:50]
  wire [58:0] _current_x_5_T = current_y_4[63:5]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_76 = {{5{_current_x_5_T[58]}},_current_x_5_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_5_T_3 = $signed(current_x_4) - $signed(_GEN_76); // @[Cordic_CV.scala 62:42]
  wire [58:0] _current_y_5_T = current_x_4[63:5]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_77 = {{5{_current_y_5_T[58]}},_current_y_5_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_5_T_3 = $signed(current_y_4) + $signed(_GEN_77); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_5_T_2 = $signed(current_theta_4) - 64'sh728de539; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_5_T_7 = $signed(current_x_4) + $signed(_GEN_76); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_5_T_7 = $signed(current_y_4) - $signed(_GEN_77); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_5_T_5 = $signed(current_theta_4) + 64'sh728de539; // @[Cordic_CV.scala 68:50]
  wire [57:0] _current_x_6_T = current_y_5[63:6]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_80 = {{6{_current_x_6_T[57]}},_current_x_6_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_6_T_3 = $signed(current_x_5) - $signed(_GEN_80); // @[Cordic_CV.scala 62:42]
  wire [57:0] _current_y_6_T = current_x_5[63:6]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_81 = {{6{_current_y_6_T[57]}},_current_y_6_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_6_T_3 = $signed(current_y_5) + $signed(_GEN_81); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_6_T_2 = $signed(current_theta_5) - 64'sh394a86ac; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_6_T_7 = $signed(current_x_5) + $signed(_GEN_80); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_6_T_7 = $signed(current_y_5) - $signed(_GEN_81); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_6_T_5 = $signed(current_theta_5) + 64'sh394a86ac; // @[Cordic_CV.scala 68:50]
  wire [56:0] _current_x_7_T = current_y_6[63:7]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_84 = {{7{_current_x_7_T[56]}},_current_x_7_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_7_T_3 = $signed(current_x_6) - $signed(_GEN_84); // @[Cordic_CV.scala 62:42]
  wire [56:0] _current_y_7_T = current_x_6[63:7]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_85 = {{7{_current_y_7_T[56]}},_current_y_7_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_7_T_3 = $signed(current_y_6) + $signed(_GEN_85); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_7_T_2 = $signed(current_theta_6) - 64'sh1ca5b5e8; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_7_T_7 = $signed(current_x_6) + $signed(_GEN_84); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_7_T_7 = $signed(current_y_6) - $signed(_GEN_85); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_7_T_5 = $signed(current_theta_6) + 64'sh1ca5b5e8; // @[Cordic_CV.scala 68:50]
  wire [55:0] _current_x_8_T = current_y_7[63:8]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_88 = {{8{_current_x_8_T[55]}},_current_x_8_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_8_T_3 = $signed(current_x_7) - $signed(_GEN_88); // @[Cordic_CV.scala 62:42]
  wire [55:0] _current_y_8_T = current_x_7[63:8]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_89 = {{8{_current_y_8_T[55]}},_current_y_8_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_8_T_3 = $signed(current_y_7) + $signed(_GEN_89); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_8_T_2 = $signed(current_theta_7) - 64'she52e947; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_8_T_7 = $signed(current_x_7) + $signed(_GEN_88); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_8_T_7 = $signed(current_y_7) - $signed(_GEN_89); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_8_T_5 = $signed(current_theta_7) + 64'she52e947; // @[Cordic_CV.scala 68:50]
  wire [54:0] _current_x_9_T = current_y_8[63:9]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_92 = {{9{_current_x_9_T[54]}},_current_x_9_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_9_T_3 = $signed(current_x_8) - $signed(_GEN_92); // @[Cordic_CV.scala 62:42]
  wire [54:0] _current_y_9_T = current_x_8[63:9]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_93 = {{9{_current_y_9_T[54]}},_current_y_9_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_9_T_3 = $signed(current_y_8) + $signed(_GEN_93); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_9_T_2 = $signed(current_theta_8) - 64'sh729766e; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_9_T_7 = $signed(current_x_8) + $signed(_GEN_92); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_9_T_7 = $signed(current_y_8) - $signed(_GEN_93); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_9_T_5 = $signed(current_theta_8) + 64'sh729766e; // @[Cordic_CV.scala 68:50]
  wire [53:0] _current_x_10_T = current_y_9[63:10]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_96 = {{10{_current_x_10_T[53]}},_current_x_10_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_10_T_3 = $signed(current_x_9) - $signed(_GEN_96); // @[Cordic_CV.scala 62:42]
  wire [53:0] _current_y_10_T = current_x_9[63:10]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_97 = {{10{_current_y_10_T[53]}},_current_y_10_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_10_T_3 = $signed(current_y_9) + $signed(_GEN_97); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_10_T_2 = $signed(current_theta_9) - 64'sh394bb70; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_10_T_7 = $signed(current_x_9) + $signed(_GEN_96); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_10_T_7 = $signed(current_y_9) - $signed(_GEN_97); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_10_T_5 = $signed(current_theta_9) + 64'sh394bb70; // @[Cordic_CV.scala 68:50]
  wire [52:0] _current_x_11_T = current_y_10[63:11]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_100 = {{11{_current_x_11_T[52]}},_current_x_11_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_11_T_3 = $signed(current_x_10) - $signed(_GEN_100); // @[Cordic_CV.scala 62:42]
  wire [52:0] _current_y_11_T = current_x_10[63:11]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_101 = {{11{_current_y_11_T[52]}},_current_y_11_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_11_T_3 = $signed(current_y_10) + $signed(_GEN_101); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_11_T_2 = $signed(current_theta_10) - 64'sh1ca5dbf; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_11_T_7 = $signed(current_x_10) + $signed(_GEN_100); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_11_T_7 = $signed(current_y_10) - $signed(_GEN_101); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_11_T_5 = $signed(current_theta_10) + 64'sh1ca5dbf; // @[Cordic_CV.scala 68:50]
  wire [51:0] _current_x_12_T = current_y_11[63:12]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_104 = {{12{_current_x_12_T[51]}},_current_x_12_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_12_T_3 = $signed(current_x_11) - $signed(_GEN_104); // @[Cordic_CV.scala 62:42]
  wire [51:0] _current_y_12_T = current_x_11[63:12]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_105 = {{12{_current_y_12_T[51]}},_current_y_12_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_12_T_3 = $signed(current_y_11) + $signed(_GEN_105); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_12_T_2 = $signed(current_theta_11) - 64'she52ee1; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_12_T_7 = $signed(current_x_11) + $signed(_GEN_104); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_12_T_7 = $signed(current_y_11) - $signed(_GEN_105); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_12_T_5 = $signed(current_theta_11) + 64'she52ee1; // @[Cordic_CV.scala 68:50]
  wire [50:0] _current_x_13_T = current_y_12[63:13]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_108 = {{13{_current_x_13_T[50]}},_current_x_13_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_13_T_3 = $signed(current_x_12) - $signed(_GEN_108); // @[Cordic_CV.scala 62:42]
  wire [50:0] _current_y_13_T = current_x_12[63:13]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_109 = {{13{_current_y_13_T[50]}},_current_y_13_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_13_T_3 = $signed(current_y_12) + $signed(_GEN_109); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_13_T_2 = $signed(current_theta_12) - 64'sh729770; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_13_T_7 = $signed(current_x_12) + $signed(_GEN_108); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_13_T_7 = $signed(current_y_12) - $signed(_GEN_109); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_13_T_5 = $signed(current_theta_12) + 64'sh729770; // @[Cordic_CV.scala 68:50]
  wire [49:0] _current_x_14_T = current_y_13[63:14]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_112 = {{14{_current_x_14_T[49]}},_current_x_14_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_14_T_3 = $signed(current_x_13) - $signed(_GEN_112); // @[Cordic_CV.scala 62:42]
  wire [49:0] _current_y_14_T = current_x_13[63:14]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_113 = {{14{_current_y_14_T[49]}},_current_y_14_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_14_T_3 = $signed(current_y_13) + $signed(_GEN_113); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_14_T_2 = $signed(current_theta_13) - 64'sh394bb8; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_14_T_7 = $signed(current_x_13) + $signed(_GEN_112); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_14_T_7 = $signed(current_y_13) - $signed(_GEN_113); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_14_T_5 = $signed(current_theta_13) + 64'sh394bb8; // @[Cordic_CV.scala 68:50]
  wire [48:0] _current_x_15_T = current_y_14[63:15]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_116 = {{15{_current_x_15_T[48]}},_current_x_15_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_15_T_3 = $signed(current_x_14) - $signed(_GEN_116); // @[Cordic_CV.scala 62:42]
  wire [48:0] _current_y_15_T = current_x_14[63:15]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_117 = {{15{_current_y_15_T[48]}},_current_y_15_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_15_T_3 = $signed(current_y_14) + $signed(_GEN_117); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_15_T_2 = $signed(current_theta_14) - 64'sh1ca5dc; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_15_T_7 = $signed(current_x_14) + $signed(_GEN_116); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_15_T_7 = $signed(current_y_14) - $signed(_GEN_117); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_15_T_5 = $signed(current_theta_14) + 64'sh1ca5dc; // @[Cordic_CV.scala 68:50]
  wire [47:0] _current_x_16_T = current_y_15[63:16]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_120 = {{16{_current_x_16_T[47]}},_current_x_16_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_16_T_3 = $signed(current_x_15) - $signed(_GEN_120); // @[Cordic_CV.scala 62:42]
  wire [47:0] _current_y_16_T = current_x_15[63:16]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_121 = {{16{_current_y_16_T[47]}},_current_y_16_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_16_T_3 = $signed(current_y_15) + $signed(_GEN_121); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_16_T_2 = $signed(current_theta_15) - 64'she52ee; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_16_T_7 = $signed(current_x_15) + $signed(_GEN_120); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_16_T_7 = $signed(current_y_15) - $signed(_GEN_121); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_16_T_5 = $signed(current_theta_15) + 64'she52ee; // @[Cordic_CV.scala 68:50]
  wire [46:0] _current_x_17_T = current_y_16[63:17]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_124 = {{17{_current_x_17_T[46]}},_current_x_17_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_17_T_3 = $signed(current_x_16) - $signed(_GEN_124); // @[Cordic_CV.scala 62:42]
  wire [46:0] _current_y_17_T = current_x_16[63:17]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_125 = {{17{_current_y_17_T[46]}},_current_y_17_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_17_T_3 = $signed(current_y_16) + $signed(_GEN_125); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_17_T_2 = $signed(current_theta_16) - 64'sh72977; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_17_T_7 = $signed(current_x_16) + $signed(_GEN_124); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_17_T_7 = $signed(current_y_16) - $signed(_GEN_125); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_17_T_5 = $signed(current_theta_16) + 64'sh72977; // @[Cordic_CV.scala 68:50]
  wire [45:0] _current_x_18_T = current_y_17[63:18]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_128 = {{18{_current_x_18_T[45]}},_current_x_18_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_18_T_3 = $signed(current_x_17) - $signed(_GEN_128); // @[Cordic_CV.scala 62:42]
  wire [45:0] _current_y_18_T = current_x_17[63:18]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_129 = {{18{_current_y_18_T[45]}},_current_y_18_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_18_T_3 = $signed(current_y_17) + $signed(_GEN_129); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_18_T_2 = $signed(current_theta_17) - 64'sh394bc; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_18_T_7 = $signed(current_x_17) + $signed(_GEN_128); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_18_T_7 = $signed(current_y_17) - $signed(_GEN_129); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_18_T_5 = $signed(current_theta_17) + 64'sh394bc; // @[Cordic_CV.scala 68:50]
  wire [44:0] _current_x_19_T = current_y_18[63:19]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_132 = {{19{_current_x_19_T[44]}},_current_x_19_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_19_T_3 = $signed(current_x_18) - $signed(_GEN_132); // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_theta_19_T_2 = $signed(current_theta_18) - 64'sh1ca5e; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_19_T_7 = $signed(current_x_18) + $signed(_GEN_132); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_theta_19_T_5 = $signed(current_theta_18) + 64'sh1ca5e; // @[Cordic_CV.scala 68:50]
  wire [127:0] _io_r_T = $signed(current_x_19) * 64'sh26dd3b6a; // @[Cordic_CV.scala 79:41]
  wire [97:0] _GEN_136 = _io_r_T[127:30]; // @[Cordic_CV.scala 79:8]
  assign io_theta = current_theta_19; // @[Cordic_CV.scala 78:12]
  assign io_r = _GEN_136[63:0]; // @[Cordic_CV.scala 79:8]
  always @(posedge clock) begin
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_0 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(io_y) < 64'sh0) begin // @[Cordic_CV.scala 51:76]
      current_x_0 <= _current_x_0_T_3; // @[Cordic_CV.scala 52:22]
    end else begin
      current_x_0 <= _current_x_0_T_7; // @[Cordic_CV.scala 56:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_1 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_0) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_1 <= _current_x_1_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_1 <= _current_x_1_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_2 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_1) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_2 <= _current_x_2_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_2 <= _current_x_2_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_3 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_2) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_3 <= _current_x_3_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_3 <= _current_x_3_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_4 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_3) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_4 <= _current_x_4_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_4 <= _current_x_4_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_5 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_4) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_5 <= _current_x_5_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_5 <= _current_x_5_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_6 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_5) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_6 <= _current_x_6_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_6 <= _current_x_6_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_7 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_6) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_7 <= _current_x_7_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_7 <= _current_x_7_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_8 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_7) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_8 <= _current_x_8_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_8 <= _current_x_8_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_9 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_8) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_9 <= _current_x_9_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_9 <= _current_x_9_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_10 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_9) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_10 <= _current_x_10_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_10 <= _current_x_10_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_11 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_10) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_11 <= _current_x_11_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_11 <= _current_x_11_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_12 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_11) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_12 <= _current_x_12_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_12 <= _current_x_12_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_13 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_12) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_13 <= _current_x_13_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_13 <= _current_x_13_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_14 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_13) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_14 <= _current_x_14_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_14 <= _current_x_14_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_15 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_14) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_15 <= _current_x_15_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_15 <= _current_x_15_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_16 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_15) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_16 <= _current_x_16_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_16 <= _current_x_16_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_17 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_16) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_17 <= _current_x_17_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_17 <= _current_x_17_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_18 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_17) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_18 <= _current_x_18_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_18 <= _current_x_18_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_19 <= 64'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_18) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_19 <= _current_x_19_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_19 <= _current_x_19_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_0 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(io_y) < 64'sh0) begin // @[Cordic_CV.scala 51:76]
      current_y_0 <= _current_y_0_T_3; // @[Cordic_CV.scala 53:22]
    end else begin
      current_y_0 <= _current_y_0_T_7; // @[Cordic_CV.scala 57:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_1 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_0) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_1 <= _current_y_1_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_1 <= _current_y_1_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_2 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_1) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_2 <= _current_y_2_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_2 <= _current_y_2_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_3 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_2) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_3 <= _current_y_3_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_3 <= _current_y_3_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_4 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_3) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_4 <= _current_y_4_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_4 <= _current_y_4_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_5 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_4) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_5 <= _current_y_5_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_5 <= _current_y_5_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_6 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_5) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_6 <= _current_y_6_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_6 <= _current_y_6_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_7 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_6) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_7 <= _current_y_7_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_7 <= _current_y_7_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_8 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_7) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_8 <= _current_y_8_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_8 <= _current_y_8_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_9 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_8) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_9 <= _current_y_9_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_9 <= _current_y_9_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_10 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_9) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_10 <= _current_y_10_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_10 <= _current_y_10_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_11 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_10) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_11 <= _current_y_11_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_11 <= _current_y_11_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_12 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_11) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_12 <= _current_y_12_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_12 <= _current_y_12_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_13 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_12) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_13 <= _current_y_13_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_13 <= _current_y_13_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_14 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_13) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_14 <= _current_y_14_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_14 <= _current_y_14_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_15 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_14) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_15 <= _current_y_15_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_15 <= _current_y_15_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_16 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_15) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_16 <= _current_y_16_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_16 <= _current_y_16_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_17 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_16) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_17 <= _current_y_17_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_17 <= _current_y_17_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_18 <= 64'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_17) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_18 <= _current_y_18_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_18 <= _current_y_18_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_0 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(io_y) < 64'sh0) begin // @[Cordic_CV.scala 51:76]
      current_theta_0 <= _current_theta_0_T_2; // @[Cordic_CV.scala 54:26]
    end else begin
      current_theta_0 <= 64'shb40000000; // @[Cordic_CV.scala 58:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_1 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_0) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_1 <= _current_theta_1_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_1 <= _current_theta_1_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_2 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_1) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_2 <= _current_theta_2_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_2 <= _current_theta_2_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_3 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_2) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_3 <= _current_theta_3_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_3 <= _current_theta_3_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_4 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_3) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_4 <= _current_theta_4_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_4 <= _current_theta_4_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_5 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_4) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_5 <= _current_theta_5_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_5 <= _current_theta_5_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_6 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_5) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_6 <= _current_theta_6_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_6 <= _current_theta_6_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_7 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_6) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_7 <= _current_theta_7_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_7 <= _current_theta_7_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_8 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_7) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_8 <= _current_theta_8_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_8 <= _current_theta_8_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_9 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_8) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_9 <= _current_theta_9_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_9 <= _current_theta_9_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_10 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_9) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_10 <= _current_theta_10_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_10 <= _current_theta_10_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_11 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_10) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_11 <= _current_theta_11_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_11 <= _current_theta_11_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_12 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_11) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_12 <= _current_theta_12_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_12 <= _current_theta_12_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_13 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_12) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_13 <= _current_theta_13_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_13 <= _current_theta_13_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_14 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_13) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_14 <= _current_theta_14_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_14 <= _current_theta_14_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_15 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_14) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_15 <= _current_theta_15_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_15 <= _current_theta_15_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_16 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_15) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_16 <= _current_theta_16_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_16 <= _current_theta_16_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_17 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_16) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_17 <= _current_theta_17_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_17 <= _current_theta_17_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_18 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_17) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_18 <= _current_theta_18_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_18 <= _current_theta_18_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_19 <= 64'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_18) < 64'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_19 <= _current_theta_19_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_19 <= _current_theta_19_T_5; // @[Cordic_CV.scala 68:26]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  current_x_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  current_x_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  current_x_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  current_x_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  current_x_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  current_x_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  current_x_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  current_x_7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  current_x_8 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  current_x_9 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  current_x_10 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  current_x_11 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  current_x_12 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  current_x_13 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  current_x_14 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  current_x_15 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  current_x_16 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  current_x_17 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  current_x_18 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  current_x_19 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  current_y_0 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  current_y_1 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  current_y_2 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  current_y_3 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  current_y_4 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  current_y_5 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  current_y_6 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  current_y_7 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  current_y_8 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  current_y_9 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  current_y_10 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  current_y_11 = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  current_y_12 = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  current_y_13 = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  current_y_14 = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  current_y_15 = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  current_y_16 = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  current_y_17 = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  current_y_18 = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  current_theta_0 = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  current_theta_1 = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  current_theta_2 = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  current_theta_3 = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  current_theta_4 = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  current_theta_5 = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  current_theta_6 = _RAND_45[63:0];
  _RAND_46 = {2{`RANDOM}};
  current_theta_7 = _RAND_46[63:0];
  _RAND_47 = {2{`RANDOM}};
  current_theta_8 = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  current_theta_9 = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  current_theta_10 = _RAND_49[63:0];
  _RAND_50 = {2{`RANDOM}};
  current_theta_11 = _RAND_50[63:0];
  _RAND_51 = {2{`RANDOM}};
  current_theta_12 = _RAND_51[63:0];
  _RAND_52 = {2{`RANDOM}};
  current_theta_13 = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  current_theta_14 = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  current_theta_15 = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  current_theta_16 = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  current_theta_17 = _RAND_56[63:0];
  _RAND_57 = {2{`RANDOM}};
  current_theta_18 = _RAND_57[63:0];
  _RAND_58 = {2{`RANDOM}};
  current_theta_19 = _RAND_58[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module cordic_cv(
  input         clock,
  input         reset,
  input  [63:0] io_x,
  input  [63:0] io_y,
  output [63:0] io_theta,
  output [63:0] io_r
);
  wire  cordic_cv_unit_clock; // @[Cordic_CV.scala 104:30]
  wire  cordic_cv_unit_reset; // @[Cordic_CV.scala 104:30]
  wire [63:0] cordic_cv_unit_io_x; // @[Cordic_CV.scala 104:30]
  wire [63:0] cordic_cv_unit_io_y; // @[Cordic_CV.scala 104:30]
  wire [63:0] cordic_cv_unit_io_theta; // @[Cordic_CV.scala 104:30]
  wire [63:0] cordic_cv_unit_io_r; // @[Cordic_CV.scala 104:30]
  wire [63:0] _cordic_cv_unit_io_x_T_2 = 64'sh0 - $signed(io_x); // @[Cordic_CV.scala 107:28]
  wire [63:0] _cordic_cv_unit_io_y_T_2 = 64'sh0 - $signed(io_y); // @[Cordic_CV.scala 108:28]
  wire [63:0] _io_theta_T_2 = $signed(cordic_cv_unit_io_theta) + 64'sh2d00000000; // @[Cordic_CV.scala 110:43]
  wire [63:0] _io_theta_T_5 = $signed(cordic_cv_unit_io_theta) - 64'sh2d00000000; // @[Cordic_CV.scala 112:43]
  wire [63:0] _GEN_0 = $signed(io_y) > 64'sh0 ? $signed(_io_theta_T_2) : $signed(_io_theta_T_5); // @[Cordic_CV.scala 109:71 110:16 112:16]
  CORDIC_CV_ORIGIN cordic_cv_unit ( // @[Cordic_CV.scala 104:30]
    .clock(cordic_cv_unit_clock),
    .reset(cordic_cv_unit_reset),
    .io_x(cordic_cv_unit_io_x),
    .io_y(cordic_cv_unit_io_y),
    .io_theta(cordic_cv_unit_io_theta),
    .io_r(cordic_cv_unit_io_r)
  );
  assign io_theta = $signed(io_x) < 64'sh0 ? $signed(_GEN_0) : $signed(cordic_cv_unit_io_theta); // @[Cordic_CV.scala 106:69 117:14]
  assign io_r = cordic_cv_unit_io_r; // @[Cordic_CV.scala 120:8]
  assign cordic_cv_unit_clock = clock;
  assign cordic_cv_unit_reset = reset;
  assign cordic_cv_unit_io_x = $signed(io_x) < 64'sh0 ? $signed(_cordic_cv_unit_io_x_T_2) : $signed(io_x); // @[Cordic_CV.scala 106:69 107:25 115:25]
  assign cordic_cv_unit_io_y = $signed(io_x) < 64'sh0 ? $signed(_cordic_cv_unit_io_y_T_2) : $signed(io_y); // @[Cordic_CV.scala 106:69 108:25 116:25]
endmodule
module shift_2_range(
  input  [63:0] io_x,
  output [63:0] io_out,
  output [5:0]  io_cnt,
  output        io_flag
);
  wire [63:0] _temp_x_T_2 = 64'sh0 - $signed(io_x); // @[Cordic_LV.scala 77:15]
  wire [63:0] temp_x = $signed(io_x) < 64'sh0 ? $signed(_temp_x_T_2) : $signed(io_x); // @[Cordic_LV.scala 76:72 77:12 80:12]
  wire  _T_1 = $signed(temp_x) < 64'sh20000000; // @[Cordic_LV.scala 84:15]
  wire  index__0 = _T_1 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [64:0] _T_4 = {$signed(temp_x), 1'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__1 = $signed(_T_4) < 65'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [65:0] _T_6 = {$signed(temp_x), 2'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__2 = $signed(_T_6) < 66'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [66:0] _T_8 = {$signed(temp_x), 3'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__3 = $signed(_T_8) < 67'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [67:0] _T_10 = {$signed(temp_x), 4'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__4 = $signed(_T_10) < 68'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [68:0] _T_12 = {$signed(temp_x), 5'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__5 = $signed(_T_12) < 69'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [69:0] _T_14 = {$signed(temp_x), 6'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__6 = $signed(_T_14) < 70'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [70:0] _T_16 = {$signed(temp_x), 7'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__7 = $signed(_T_16) < 71'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [71:0] _T_18 = {$signed(temp_x), 8'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__8 = $signed(_T_18) < 72'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [72:0] _T_20 = {$signed(temp_x), 9'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__9 = $signed(_T_20) < 73'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [73:0] _T_22 = {$signed(temp_x), 10'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__10 = $signed(_T_22) < 74'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [74:0] _T_24 = {$signed(temp_x), 11'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__11 = $signed(_T_24) < 75'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [75:0] _T_26 = {$signed(temp_x), 12'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__12 = $signed(_T_26) < 76'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [76:0] _T_28 = {$signed(temp_x), 13'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__13 = $signed(_T_28) < 77'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [77:0] _T_30 = {$signed(temp_x), 14'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__14 = $signed(_T_30) < 78'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [78:0] _T_32 = {$signed(temp_x), 15'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__15 = $signed(_T_32) < 79'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [79:0] _T_34 = {$signed(temp_x), 16'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__16 = $signed(_T_34) < 80'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [80:0] _T_36 = {$signed(temp_x), 17'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__17 = $signed(_T_36) < 81'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [81:0] _T_38 = {$signed(temp_x), 18'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__18 = $signed(_T_38) < 82'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [82:0] _T_40 = {$signed(temp_x), 19'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__19 = $signed(_T_40) < 83'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [83:0] _T_42 = {$signed(temp_x), 20'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__20 = $signed(_T_42) < 84'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [84:0] _T_44 = {$signed(temp_x), 21'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__21 = $signed(_T_44) < 85'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [85:0] _T_46 = {$signed(temp_x), 22'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__22 = $signed(_T_46) < 86'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [86:0] _T_48 = {$signed(temp_x), 23'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__23 = $signed(_T_48) < 87'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [87:0] _T_50 = {$signed(temp_x), 24'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__24 = $signed(_T_50) < 88'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [88:0] _T_52 = {$signed(temp_x), 25'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__25 = $signed(_T_52) < 89'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [89:0] _T_54 = {$signed(temp_x), 26'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__26 = $signed(_T_54) < 90'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [90:0] _T_56 = {$signed(temp_x), 27'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__27 = $signed(_T_56) < 91'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [91:0] _T_58 = {$signed(temp_x), 28'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__28 = $signed(_T_58) < 92'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [92:0] _T_60 = {$signed(temp_x), 29'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__29 = $signed(_T_60) < 93'sh20000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:85 89:18 91:18]
  wire [6:0] temp_cnt_lo_lo = {index__6,index__5,index__4,index__3,index__2,index__1,index__0}; // @[Cordic_LV.scala 95:48]
  wire [14:0] temp_cnt_lo = {index__14,index__13,index__12,index__11,index__10,index__9,index__8,index__7,temp_cnt_lo_lo
    }; // @[Cordic_LV.scala 95:48]
  wire [6:0] temp_cnt_hi_lo = {index__21,index__20,index__19,index__18,index__17,index__16,index__15}; // @[Cordic_LV.scala 95:48]
  wire [29:0] _temp_cnt_T = {index__29,index__28,index__27,index__26,index__25,index__24,index__23,index__22,
    temp_cnt_hi_lo,temp_cnt_lo}; // @[Cordic_LV.scala 95:48]
  wire [4:0] _temp_cnt_T_31 = _temp_cnt_T[28] ? 5'h1c : 5'h1d; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_32 = _temp_cnt_T[27] ? 5'h1b : _temp_cnt_T_31; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_33 = _temp_cnt_T[26] ? 5'h1a : _temp_cnt_T_32; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_34 = _temp_cnt_T[25] ? 5'h19 : _temp_cnt_T_33; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_35 = _temp_cnt_T[24] ? 5'h18 : _temp_cnt_T_34; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_36 = _temp_cnt_T[23] ? 5'h17 : _temp_cnt_T_35; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_37 = _temp_cnt_T[22] ? 5'h16 : _temp_cnt_T_36; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_38 = _temp_cnt_T[21] ? 5'h15 : _temp_cnt_T_37; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_39 = _temp_cnt_T[20] ? 5'h14 : _temp_cnt_T_38; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_40 = _temp_cnt_T[19] ? 5'h13 : _temp_cnt_T_39; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_41 = _temp_cnt_T[18] ? 5'h12 : _temp_cnt_T_40; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_42 = _temp_cnt_T[17] ? 5'h11 : _temp_cnt_T_41; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_43 = _temp_cnt_T[16] ? 5'h10 : _temp_cnt_T_42; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_44 = _temp_cnt_T[15] ? 5'hf : _temp_cnt_T_43; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_45 = _temp_cnt_T[14] ? 5'he : _temp_cnt_T_44; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_46 = _temp_cnt_T[13] ? 5'hd : _temp_cnt_T_45; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_47 = _temp_cnt_T[12] ? 5'hc : _temp_cnt_T_46; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_48 = _temp_cnt_T[11] ? 5'hb : _temp_cnt_T_47; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_49 = _temp_cnt_T[10] ? 5'ha : _temp_cnt_T_48; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_50 = _temp_cnt_T[9] ? 5'h9 : _temp_cnt_T_49; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_51 = _temp_cnt_T[8] ? 5'h8 : _temp_cnt_T_50; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_52 = _temp_cnt_T[7] ? 5'h7 : _temp_cnt_T_51; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_53 = _temp_cnt_T[6] ? 5'h6 : _temp_cnt_T_52; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_54 = _temp_cnt_T[5] ? 5'h5 : _temp_cnt_T_53; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_55 = _temp_cnt_T[4] ? 5'h4 : _temp_cnt_T_54; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_56 = _temp_cnt_T[3] ? 5'h3 : _temp_cnt_T_55; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_57 = _temp_cnt_T[2] ? 5'h2 : _temp_cnt_T_56; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_58 = _temp_cnt_T[1] ? 5'h1 : _temp_cnt_T_57; // @[Mux.scala 47:70]
  wire [4:0] temp_cnt = _temp_cnt_T[0] ? 5'h0 : _temp_cnt_T_58; // @[Mux.scala 47:70]
  wire [4:0] _io_cnt_T = _temp_cnt_T[0] ? 5'h0 : _temp_cnt_T_58; // @[Cordic_LV.scala 96:30]
  wire [94:0] _GEN_0 = {{31{temp_x[63]}},temp_x}; // @[Cordic_LV.scala 97:23]
  wire [94:0] _io_out_T = $signed(_GEN_0) << temp_cnt; // @[Cordic_LV.scala 97:23]
  wire  _T_62 = $signed(temp_x) > 64'sh40000000; // @[Cordic_LV.scala 98:21]
  wire  index_1_0 = _T_62 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [62:0] _T_65 = temp_x[63:1]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_100 = {{1{_T_65[62]}},_T_65}; // @[Cordic_LV.scala 102:26]
  wire  index_1_1 = $signed(_GEN_100) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [61:0] _T_67 = temp_x[63:2]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_101 = {{2{_T_67[61]}},_T_67}; // @[Cordic_LV.scala 102:26]
  wire  index_1_2 = $signed(_GEN_101) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [60:0] _T_69 = temp_x[63:3]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_102 = {{3{_T_69[60]}},_T_69}; // @[Cordic_LV.scala 102:26]
  wire  index_1_3 = $signed(_GEN_102) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [59:0] _T_71 = temp_x[63:4]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_103 = {{4{_T_71[59]}},_T_71}; // @[Cordic_LV.scala 102:26]
  wire  index_1_4 = $signed(_GEN_103) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [58:0] _T_73 = temp_x[63:5]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_104 = {{5{_T_73[58]}},_T_73}; // @[Cordic_LV.scala 102:26]
  wire  index_1_5 = $signed(_GEN_104) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [57:0] _T_75 = temp_x[63:6]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_105 = {{6{_T_75[57]}},_T_75}; // @[Cordic_LV.scala 102:26]
  wire  index_1_6 = $signed(_GEN_105) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [56:0] _T_77 = temp_x[63:7]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_106 = {{7{_T_77[56]}},_T_77}; // @[Cordic_LV.scala 102:26]
  wire  index_1_7 = $signed(_GEN_106) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [55:0] _T_79 = temp_x[63:8]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_107 = {{8{_T_79[55]}},_T_79}; // @[Cordic_LV.scala 102:26]
  wire  index_1_8 = $signed(_GEN_107) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [54:0] _T_81 = temp_x[63:9]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_108 = {{9{_T_81[54]}},_T_81}; // @[Cordic_LV.scala 102:26]
  wire  index_1_9 = $signed(_GEN_108) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [53:0] _T_83 = temp_x[63:10]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_109 = {{10{_T_83[53]}},_T_83}; // @[Cordic_LV.scala 102:26]
  wire  index_1_10 = $signed(_GEN_109) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [52:0] _T_85 = temp_x[63:11]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_110 = {{11{_T_85[52]}},_T_85}; // @[Cordic_LV.scala 102:26]
  wire  index_1_11 = $signed(_GEN_110) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [51:0] _T_87 = temp_x[63:12]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_111 = {{12{_T_87[51]}},_T_87}; // @[Cordic_LV.scala 102:26]
  wire  index_1_12 = $signed(_GEN_111) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [50:0] _T_89 = temp_x[63:13]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_112 = {{13{_T_89[50]}},_T_89}; // @[Cordic_LV.scala 102:26]
  wire  index_1_13 = $signed(_GEN_112) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [49:0] _T_91 = temp_x[63:14]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_113 = {{14{_T_91[49]}},_T_91}; // @[Cordic_LV.scala 102:26]
  wire  index_1_14 = $signed(_GEN_113) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [48:0] _T_93 = temp_x[63:15]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_114 = {{15{_T_93[48]}},_T_93}; // @[Cordic_LV.scala 102:26]
  wire  index_1_15 = $signed(_GEN_114) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [47:0] _T_95 = temp_x[63:16]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_115 = {{16{_T_95[47]}},_T_95}; // @[Cordic_LV.scala 102:26]
  wire  index_1_16 = $signed(_GEN_115) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [46:0] _T_97 = temp_x[63:17]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_116 = {{17{_T_97[46]}},_T_97}; // @[Cordic_LV.scala 102:26]
  wire  index_1_17 = $signed(_GEN_116) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [45:0] _T_99 = temp_x[63:18]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_117 = {{18{_T_99[45]}},_T_99}; // @[Cordic_LV.scala 102:26]
  wire  index_1_18 = $signed(_GEN_117) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [44:0] _T_101 = temp_x[63:19]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_118 = {{19{_T_101[44]}},_T_101}; // @[Cordic_LV.scala 102:26]
  wire  index_1_19 = $signed(_GEN_118) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [43:0] _T_103 = temp_x[63:20]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_119 = {{20{_T_103[43]}},_T_103}; // @[Cordic_LV.scala 102:26]
  wire  index_1_20 = $signed(_GEN_119) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [42:0] _T_105 = temp_x[63:21]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_120 = {{21{_T_105[42]}},_T_105}; // @[Cordic_LV.scala 102:26]
  wire  index_1_21 = $signed(_GEN_120) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [41:0] _T_107 = temp_x[63:22]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_121 = {{22{_T_107[41]}},_T_107}; // @[Cordic_LV.scala 102:26]
  wire  index_1_22 = $signed(_GEN_121) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [40:0] _T_109 = temp_x[63:23]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_122 = {{23{_T_109[40]}},_T_109}; // @[Cordic_LV.scala 102:26]
  wire  index_1_23 = $signed(_GEN_122) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [39:0] _T_111 = temp_x[63:24]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_123 = {{24{_T_111[39]}},_T_111}; // @[Cordic_LV.scala 102:26]
  wire  index_1_24 = $signed(_GEN_123) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [38:0] _T_113 = temp_x[63:25]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_124 = {{25{_T_113[38]}},_T_113}; // @[Cordic_LV.scala 102:26]
  wire  index_1_25 = $signed(_GEN_124) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [37:0] _T_115 = temp_x[63:26]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_125 = {{26{_T_115[37]}},_T_115}; // @[Cordic_LV.scala 102:26]
  wire  index_1_26 = $signed(_GEN_125) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [36:0] _T_117 = temp_x[63:27]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_126 = {{27{_T_117[36]}},_T_117}; // @[Cordic_LV.scala 102:26]
  wire  index_1_27 = $signed(_GEN_126) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [35:0] _T_119 = temp_x[63:28]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_127 = {{28{_T_119[35]}},_T_119}; // @[Cordic_LV.scala 102:26]
  wire  index_1_28 = $signed(_GEN_127) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [34:0] _T_121 = temp_x[63:29]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_128 = {{29{_T_121[34]}},_T_121}; // @[Cordic_LV.scala 102:26]
  wire  index_1_29 = $signed(_GEN_128) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [33:0] _T_123 = temp_x[63:30]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_129 = {{30{_T_123[33]}},_T_123}; // @[Cordic_LV.scala 102:26]
  wire  index_1_30 = $signed(_GEN_129) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [32:0] _T_125 = temp_x[63:31]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_130 = {{31{_T_125[32]}},_T_125}; // @[Cordic_LV.scala 102:26]
  wire  index_1_31 = $signed(_GEN_130) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [31:0] _T_127 = temp_x[63:32]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_131 = {{32{_T_127[31]}},_T_127}; // @[Cordic_LV.scala 102:26]
  wire  index_1_32 = $signed(_GEN_131) > 64'sh40000000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:83 103:18 105:18]
  wire [7:0] temp_cnt_lo_lo_lo_1 = {index_1_7,index_1_6,index_1_5,index_1_4,index_1_3,index_1_2,index_1_1,index_1_0}; // @[Cordic_LV.scala 109:48]
  wire [15:0] temp_cnt_lo_lo_1 = {index_1_15,index_1_14,index_1_13,index_1_12,index_1_11,index_1_10,index_1_9,index_1_8,
    temp_cnt_lo_lo_lo_1}; // @[Cordic_LV.scala 109:48]
  wire [7:0] temp_cnt_lo_hi_lo_1 = {index_1_23,index_1_22,index_1_21,index_1_20,index_1_19,index_1_18,index_1_17,
    index_1_16}; // @[Cordic_LV.scala 109:48]
  wire [31:0] temp_cnt_lo_1 = {index_1_31,index_1_30,index_1_29,index_1_28,index_1_27,index_1_26,index_1_25,index_1_24,
    temp_cnt_lo_hi_lo_1,temp_cnt_lo_lo_1}; // @[Cordic_LV.scala 109:48]
  wire [63:0] _temp_cnt_T_59 = {16'hffff,8'hff,4'hf,2'h3,1'h1,index_1_32,temp_cnt_lo_1}; // @[Cordic_LV.scala 109:48]
  wire [5:0] _temp_cnt_T_124 = _temp_cnt_T_59[62] ? 6'h3e : 6'h3f; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_125 = _temp_cnt_T_59[61] ? 6'h3d : _temp_cnt_T_124; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_126 = _temp_cnt_T_59[60] ? 6'h3c : _temp_cnt_T_125; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_127 = _temp_cnt_T_59[59] ? 6'h3b : _temp_cnt_T_126; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_128 = _temp_cnt_T_59[58] ? 6'h3a : _temp_cnt_T_127; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_129 = _temp_cnt_T_59[57] ? 6'h39 : _temp_cnt_T_128; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_130 = _temp_cnt_T_59[56] ? 6'h38 : _temp_cnt_T_129; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_131 = _temp_cnt_T_59[55] ? 6'h37 : _temp_cnt_T_130; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_132 = _temp_cnt_T_59[54] ? 6'h36 : _temp_cnt_T_131; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_133 = _temp_cnt_T_59[53] ? 6'h35 : _temp_cnt_T_132; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_134 = _temp_cnt_T_59[52] ? 6'h34 : _temp_cnt_T_133; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_135 = _temp_cnt_T_59[51] ? 6'h33 : _temp_cnt_T_134; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_136 = _temp_cnt_T_59[50] ? 6'h32 : _temp_cnt_T_135; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_137 = _temp_cnt_T_59[49] ? 6'h31 : _temp_cnt_T_136; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_138 = _temp_cnt_T_59[48] ? 6'h30 : _temp_cnt_T_137; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_139 = _temp_cnt_T_59[47] ? 6'h2f : _temp_cnt_T_138; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_140 = _temp_cnt_T_59[46] ? 6'h2e : _temp_cnt_T_139; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_141 = _temp_cnt_T_59[45] ? 6'h2d : _temp_cnt_T_140; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_142 = _temp_cnt_T_59[44] ? 6'h2c : _temp_cnt_T_141; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_143 = _temp_cnt_T_59[43] ? 6'h2b : _temp_cnt_T_142; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_144 = _temp_cnt_T_59[42] ? 6'h2a : _temp_cnt_T_143; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_145 = _temp_cnt_T_59[41] ? 6'h29 : _temp_cnt_T_144; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_146 = _temp_cnt_T_59[40] ? 6'h28 : _temp_cnt_T_145; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_147 = _temp_cnt_T_59[39] ? 6'h27 : _temp_cnt_T_146; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_148 = _temp_cnt_T_59[38] ? 6'h26 : _temp_cnt_T_147; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_149 = _temp_cnt_T_59[37] ? 6'h25 : _temp_cnt_T_148; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_150 = _temp_cnt_T_59[36] ? 6'h24 : _temp_cnt_T_149; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_151 = _temp_cnt_T_59[35] ? 6'h23 : _temp_cnt_T_150; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_152 = _temp_cnt_T_59[34] ? 6'h22 : _temp_cnt_T_151; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_153 = _temp_cnt_T_59[33] ? 6'h21 : _temp_cnt_T_152; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_154 = _temp_cnt_T_59[32] ? 6'h20 : _temp_cnt_T_153; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_155 = _temp_cnt_T_59[31] ? 6'h1f : _temp_cnt_T_154; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_156 = _temp_cnt_T_59[30] ? 6'h1e : _temp_cnt_T_155; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_157 = _temp_cnt_T_59[29] ? 6'h1d : _temp_cnt_T_156; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_158 = _temp_cnt_T_59[28] ? 6'h1c : _temp_cnt_T_157; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_159 = _temp_cnt_T_59[27] ? 6'h1b : _temp_cnt_T_158; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_160 = _temp_cnt_T_59[26] ? 6'h1a : _temp_cnt_T_159; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_161 = _temp_cnt_T_59[25] ? 6'h19 : _temp_cnt_T_160; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_162 = _temp_cnt_T_59[24] ? 6'h18 : _temp_cnt_T_161; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_163 = _temp_cnt_T_59[23] ? 6'h17 : _temp_cnt_T_162; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_164 = _temp_cnt_T_59[22] ? 6'h16 : _temp_cnt_T_163; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_165 = _temp_cnt_T_59[21] ? 6'h15 : _temp_cnt_T_164; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_166 = _temp_cnt_T_59[20] ? 6'h14 : _temp_cnt_T_165; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_167 = _temp_cnt_T_59[19] ? 6'h13 : _temp_cnt_T_166; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_168 = _temp_cnt_T_59[18] ? 6'h12 : _temp_cnt_T_167; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_169 = _temp_cnt_T_59[17] ? 6'h11 : _temp_cnt_T_168; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_170 = _temp_cnt_T_59[16] ? 6'h10 : _temp_cnt_T_169; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_171 = _temp_cnt_T_59[15] ? 6'hf : _temp_cnt_T_170; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_172 = _temp_cnt_T_59[14] ? 6'he : _temp_cnt_T_171; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_173 = _temp_cnt_T_59[13] ? 6'hd : _temp_cnt_T_172; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_174 = _temp_cnt_T_59[12] ? 6'hc : _temp_cnt_T_173; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_175 = _temp_cnt_T_59[11] ? 6'hb : _temp_cnt_T_174; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_176 = _temp_cnt_T_59[10] ? 6'ha : _temp_cnt_T_175; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_177 = _temp_cnt_T_59[9] ? 6'h9 : _temp_cnt_T_176; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_178 = _temp_cnt_T_59[8] ? 6'h8 : _temp_cnt_T_177; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_179 = _temp_cnt_T_59[7] ? 6'h7 : _temp_cnt_T_178; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_180 = _temp_cnt_T_59[6] ? 6'h6 : _temp_cnt_T_179; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_181 = _temp_cnt_T_59[5] ? 6'h5 : _temp_cnt_T_180; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_182 = _temp_cnt_T_59[4] ? 6'h4 : _temp_cnt_T_181; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_183 = _temp_cnt_T_59[3] ? 6'h3 : _temp_cnt_T_182; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_184 = _temp_cnt_T_59[2] ? 6'h2 : _temp_cnt_T_183; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_185 = _temp_cnt_T_59[1] ? 6'h1 : _temp_cnt_T_184; // @[Mux.scala 47:70]
  wire [5:0] temp_cnt_1 = _temp_cnt_T_59[0] ? 6'h0 : _temp_cnt_T_185; // @[Mux.scala 47:70]
  wire [5:0] _io_cnt_T_1 = _temp_cnt_T_59[0] ? 6'h0 : _temp_cnt_T_185; // @[Cordic_LV.scala 110:32]
  wire [5:0] _io_cnt_T_4 = 6'sh0 - $signed(_io_cnt_T_1); // @[Cordic_LV.scala 110:15]
  wire [63:0] _io_out_T_1 = $signed(temp_x) >>> temp_cnt_1; // @[Cordic_LV.scala 111:23]
  wire [5:0] _GEN_96 = $signed(temp_x) > 64'sh40000000 ? $signed(_io_cnt_T_4) : $signed(6'sh0); // @[Cordic_LV.scala 110:12 113:12 98:78]
  wire [63:0] _GEN_97 = $signed(temp_x) > 64'sh40000000 ? $signed(_io_out_T_1) : $signed(temp_x); // @[Cordic_LV.scala 111:12 114:12 98:78]
  wire [94:0] _GEN_99 = $signed(temp_x) < 64'sh20000000 ? $signed(_io_out_T) : $signed({{31{_GEN_97[63]}},_GEN_97}); // @[Cordic_LV.scala 84:74 97:12]
  assign io_out = _GEN_99[63:0];
  assign io_cnt = $signed(temp_x) < 64'sh20000000 ? $signed({{1{_io_cnt_T[4]}},_io_cnt_T}) : $signed(_GEN_96); // @[Cordic_LV.scala 84:74 96:12]
  assign io_flag = $signed(io_x) < 64'sh0 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 76:72 78:13 81:13]
endmodule
module CORDIC_LV_ORIGIN(
  input         clock,
  input         reset,
  input  [63:0] io_x,
  input  [63:0] io_y,
  output [63:0] io_z
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [63:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [63:0] _RAND_41;
  reg [63:0] _RAND_42;
  reg [63:0] _RAND_43;
  reg [63:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [63:0] _RAND_46;
  reg [63:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [63:0] _RAND_49;
  reg [63:0] _RAND_50;
  reg [63:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [63:0] _RAND_53;
  reg [63:0] _RAND_54;
  reg [63:0] _RAND_55;
  reg [63:0] _RAND_56;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] current_x_0; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_1; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_2; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_3; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_4; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_5; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_6; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_7; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_8; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_9; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_10; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_11; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_12; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_13; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_14; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_15; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_16; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_x_17; // @[Cordic_LV.scala 25:43]
  reg [63:0] current_y_0; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_1; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_2; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_3; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_4; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_5; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_6; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_7; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_8; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_9; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_10; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_11; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_12; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_13; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_14; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_15; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_16; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_17; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_y_18; // @[Cordic_LV.scala 26:43]
  reg [63:0] current_z_0; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_1; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_2; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_3; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_4; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_5; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_6; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_7; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_8; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_9; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_10; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_11; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_12; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_13; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_14; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_15; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_16; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_17; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_18; // @[Cordic_LV.scala 27:43]
  reg [63:0] current_z_19; // @[Cordic_LV.scala 27:43]
  wire [63:0] _current_y_0_T_3 = $signed(io_y) - $signed(io_x); // @[Cordic_LV.scala 37:28]
  wire [62:0] _current_y_1_T = current_x_0[63:1]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_38 = {{1{_current_y_1_T[62]}},_current_y_1_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_1_T_3 = $signed(current_y_0) + $signed(_GEN_38); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_1_T_3 = $signed(current_z_0) - 64'sh20000000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_1_T_7 = $signed(current_y_0) - $signed(_GEN_38); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_1_T_7 = $signed(current_z_0) + 64'sh20000000; // @[Cordic_LV.scala 46:42]
  wire [61:0] _current_y_2_T = current_x_1[63:2]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_40 = {{2{_current_y_2_T[61]}},_current_y_2_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_2_T_3 = $signed(current_y_1) + $signed(_GEN_40); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_2_T_3 = $signed(current_z_1) - 64'sh10000000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_2_T_7 = $signed(current_y_1) - $signed(_GEN_40); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_2_T_7 = $signed(current_z_1) + 64'sh10000000; // @[Cordic_LV.scala 46:42]
  wire [60:0] _current_y_3_T = current_x_2[63:3]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_42 = {{3{_current_y_3_T[60]}},_current_y_3_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_3_T_3 = $signed(current_y_2) + $signed(_GEN_42); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_3_T_3 = $signed(current_z_2) - 64'sh8000000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_3_T_7 = $signed(current_y_2) - $signed(_GEN_42); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_3_T_7 = $signed(current_z_2) + 64'sh8000000; // @[Cordic_LV.scala 46:42]
  wire [59:0] _current_y_4_T = current_x_3[63:4]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_44 = {{4{_current_y_4_T[59]}},_current_y_4_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_4_T_3 = $signed(current_y_3) + $signed(_GEN_44); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_4_T_3 = $signed(current_z_3) - 64'sh4000000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_4_T_7 = $signed(current_y_3) - $signed(_GEN_44); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_4_T_7 = $signed(current_z_3) + 64'sh4000000; // @[Cordic_LV.scala 46:42]
  wire [58:0] _current_y_5_T = current_x_4[63:5]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_46 = {{5{_current_y_5_T[58]}},_current_y_5_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_5_T_3 = $signed(current_y_4) + $signed(_GEN_46); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_5_T_3 = $signed(current_z_4) - 64'sh2000000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_5_T_7 = $signed(current_y_4) - $signed(_GEN_46); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_5_T_7 = $signed(current_z_4) + 64'sh2000000; // @[Cordic_LV.scala 46:42]
  wire [57:0] _current_y_6_T = current_x_5[63:6]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_48 = {{6{_current_y_6_T[57]}},_current_y_6_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_6_T_3 = $signed(current_y_5) + $signed(_GEN_48); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_6_T_3 = $signed(current_z_5) - 64'sh1000000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_6_T_7 = $signed(current_y_5) - $signed(_GEN_48); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_6_T_7 = $signed(current_z_5) + 64'sh1000000; // @[Cordic_LV.scala 46:42]
  wire [56:0] _current_y_7_T = current_x_6[63:7]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_50 = {{7{_current_y_7_T[56]}},_current_y_7_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_7_T_3 = $signed(current_y_6) + $signed(_GEN_50); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_7_T_3 = $signed(current_z_6) - 64'sh800000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_7_T_7 = $signed(current_y_6) - $signed(_GEN_50); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_7_T_7 = $signed(current_z_6) + 64'sh800000; // @[Cordic_LV.scala 46:42]
  wire [55:0] _current_y_8_T = current_x_7[63:8]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_52 = {{8{_current_y_8_T[55]}},_current_y_8_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_8_T_3 = $signed(current_y_7) + $signed(_GEN_52); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_8_T_3 = $signed(current_z_7) - 64'sh400000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_8_T_7 = $signed(current_y_7) - $signed(_GEN_52); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_8_T_7 = $signed(current_z_7) + 64'sh400000; // @[Cordic_LV.scala 46:42]
  wire [54:0] _current_y_9_T = current_x_8[63:9]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_54 = {{9{_current_y_9_T[54]}},_current_y_9_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_9_T_3 = $signed(current_y_8) + $signed(_GEN_54); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_9_T_3 = $signed(current_z_8) - 64'sh200000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_9_T_7 = $signed(current_y_8) - $signed(_GEN_54); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_9_T_7 = $signed(current_z_8) + 64'sh200000; // @[Cordic_LV.scala 46:42]
  wire [53:0] _current_y_10_T = current_x_9[63:10]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_56 = {{10{_current_y_10_T[53]}},_current_y_10_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_10_T_3 = $signed(current_y_9) + $signed(_GEN_56); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_10_T_3 = $signed(current_z_9) - 64'sh100000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_10_T_7 = $signed(current_y_9) - $signed(_GEN_56); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_10_T_7 = $signed(current_z_9) + 64'sh100000; // @[Cordic_LV.scala 46:42]
  wire [52:0] _current_y_11_T = current_x_10[63:11]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_58 = {{11{_current_y_11_T[52]}},_current_y_11_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_11_T_3 = $signed(current_y_10) + $signed(_GEN_58); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_11_T_3 = $signed(current_z_10) - 64'sh80000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_11_T_7 = $signed(current_y_10) - $signed(_GEN_58); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_11_T_7 = $signed(current_z_10) + 64'sh80000; // @[Cordic_LV.scala 46:42]
  wire [51:0] _current_y_12_T = current_x_11[63:12]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_60 = {{12{_current_y_12_T[51]}},_current_y_12_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_12_T_3 = $signed(current_y_11) + $signed(_GEN_60); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_12_T_3 = $signed(current_z_11) - 64'sh40000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_12_T_7 = $signed(current_y_11) - $signed(_GEN_60); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_12_T_7 = $signed(current_z_11) + 64'sh40000; // @[Cordic_LV.scala 46:42]
  wire [50:0] _current_y_13_T = current_x_12[63:13]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_62 = {{13{_current_y_13_T[50]}},_current_y_13_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_13_T_3 = $signed(current_y_12) + $signed(_GEN_62); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_13_T_3 = $signed(current_z_12) - 64'sh20000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_13_T_7 = $signed(current_y_12) - $signed(_GEN_62); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_13_T_7 = $signed(current_z_12) + 64'sh20000; // @[Cordic_LV.scala 46:42]
  wire [49:0] _current_y_14_T = current_x_13[63:14]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_64 = {{14{_current_y_14_T[49]}},_current_y_14_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_14_T_3 = $signed(current_y_13) + $signed(_GEN_64); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_14_T_3 = $signed(current_z_13) - 64'sh10000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_14_T_7 = $signed(current_y_13) - $signed(_GEN_64); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_14_T_7 = $signed(current_z_13) + 64'sh10000; // @[Cordic_LV.scala 46:42]
  wire [48:0] _current_y_15_T = current_x_14[63:15]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_66 = {{15{_current_y_15_T[48]}},_current_y_15_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_15_T_3 = $signed(current_y_14) + $signed(_GEN_66); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_15_T_3 = $signed(current_z_14) - 64'sh8000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_15_T_7 = $signed(current_y_14) - $signed(_GEN_66); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_15_T_7 = $signed(current_z_14) + 64'sh8000; // @[Cordic_LV.scala 46:42]
  wire [47:0] _current_y_16_T = current_x_15[63:16]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_68 = {{16{_current_y_16_T[47]}},_current_y_16_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_16_T_3 = $signed(current_y_15) + $signed(_GEN_68); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_16_T_3 = $signed(current_z_15) - 64'sh4000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_16_T_7 = $signed(current_y_15) - $signed(_GEN_68); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_16_T_7 = $signed(current_z_15) + 64'sh4000; // @[Cordic_LV.scala 46:42]
  wire [46:0] _current_y_17_T = current_x_16[63:17]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_70 = {{17{_current_y_17_T[46]}},_current_y_17_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_17_T_3 = $signed(current_y_16) + $signed(_GEN_70); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_17_T_3 = $signed(current_z_16) - 64'sh2000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_17_T_7 = $signed(current_y_16) - $signed(_GEN_70); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_17_T_7 = $signed(current_z_16) + 64'sh2000; // @[Cordic_LV.scala 46:42]
  wire [45:0] _current_y_18_T = current_x_17[63:18]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_72 = {{18{_current_y_18_T[45]}},_current_y_18_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_18_T_3 = $signed(current_y_17) + $signed(_GEN_72); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_18_T_3 = $signed(current_z_17) - 64'sh1000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_18_T_7 = $signed(current_y_17) - $signed(_GEN_72); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_18_T_7 = $signed(current_z_17) + 64'sh1000; // @[Cordic_LV.scala 46:42]
  wire [63:0] _current_z_19_T_3 = $signed(current_z_18) - 64'sh800; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_z_19_T_7 = $signed(current_z_18) + 64'sh800; // @[Cordic_LV.scala 46:42]
  assign io_z = current_z_19; // @[Cordic_LV.scala 56:8]
  always @(posedge clock) begin
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_0 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_0 <= io_x; // @[Cordic_LV.scala 36:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_1 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_1 <= current_x_0; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_2 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_2 <= current_x_1; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_3 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_3 <= current_x_2; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_4 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_4 <= current_x_3; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_5 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_5 <= current_x_4; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_6 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_6 <= current_x_5; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_7 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_7 <= current_x_6; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_8 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_8 <= current_x_7; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_9 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_9 <= current_x_8; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_10 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_10 <= current_x_9; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_11 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_11 <= current_x_10; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_12 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_12 <= current_x_11; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_13 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_13 <= current_x_12; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_14 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_14 <= current_x_13; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_15 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_15 <= current_x_14; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_16 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_16 <= current_x_15; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_17 <= 64'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_17 <= current_x_16; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_0 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else begin
      current_y_0 <= _current_y_0_T_3; // @[Cordic_LV.scala 37:20]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_1 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_0) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_1 <= _current_y_1_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_1 <= _current_y_1_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_2 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_1) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_2 <= _current_y_2_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_2 <= _current_y_2_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_3 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_2) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_3 <= _current_y_3_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_3 <= _current_y_3_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_4 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_3) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_4 <= _current_y_4_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_4 <= _current_y_4_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_5 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_4) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_5 <= _current_y_5_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_5 <= _current_y_5_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_6 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_5) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_6 <= _current_y_6_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_6 <= _current_y_6_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_7 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_6) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_7 <= _current_y_7_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_7 <= _current_y_7_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_8 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_7) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_8 <= _current_y_8_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_8 <= _current_y_8_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_9 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_8) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_9 <= _current_y_9_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_9 <= _current_y_9_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_10 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_9) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_10 <= _current_y_10_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_10 <= _current_y_10_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_11 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_10) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_11 <= _current_y_11_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_11 <= _current_y_11_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_12 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_11) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_12 <= _current_y_12_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_12 <= _current_y_12_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_13 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_12) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_13 <= _current_y_13_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_13 <= _current_y_13_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_14 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_13) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_14 <= _current_y_14_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_14 <= _current_y_14_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_15 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_14) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_15 <= _current_y_15_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_15 <= _current_y_15_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_16 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_15) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_16 <= _current_y_16_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_16 <= _current_y_16_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_17 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_16) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_17 <= _current_y_17_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_17 <= _current_y_17_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_18 <= 64'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_17) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_18 <= _current_y_18_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_18 <= _current_y_18_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_0 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else begin
      current_z_0 <= 64'sh40000000; // @[Cordic_LV.scala 38:20]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_1 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_0) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_1 <= _current_z_1_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_1 <= _current_z_1_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_2 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_1) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_2 <= _current_z_2_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_2 <= _current_z_2_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_3 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_2) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_3 <= _current_z_3_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_3 <= _current_z_3_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_4 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_3) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_4 <= _current_z_4_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_4 <= _current_z_4_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_5 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_4) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_5 <= _current_z_5_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_5 <= _current_z_5_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_6 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_5) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_6 <= _current_z_6_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_6 <= _current_z_6_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_7 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_6) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_7 <= _current_z_7_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_7 <= _current_z_7_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_8 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_7) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_8 <= _current_z_8_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_8 <= _current_z_8_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_9 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_8) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_9 <= _current_z_9_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_9 <= _current_z_9_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_10 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_9) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_10 <= _current_z_10_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_10 <= _current_z_10_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_11 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_10) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_11 <= _current_z_11_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_11 <= _current_z_11_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_12 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_11) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_12 <= _current_z_12_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_12 <= _current_z_12_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_13 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_12) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_13 <= _current_z_13_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_13 <= _current_z_13_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_14 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_13) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_14 <= _current_z_14_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_14 <= _current_z_14_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_15 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_14) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_15 <= _current_z_15_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_15 <= _current_z_15_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_16 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_15) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_16 <= _current_z_16_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_16 <= _current_z_16_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_17 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_16) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_17 <= _current_z_17_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_17 <= _current_z_17_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_18 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_17) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_18 <= _current_z_18_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_18 <= _current_z_18_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_19 <= 64'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_18) < 64'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_19 <= _current_z_19_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_19 <= _current_z_19_T_7; // @[Cordic_LV.scala 46:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  current_x_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  current_x_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  current_x_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  current_x_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  current_x_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  current_x_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  current_x_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  current_x_7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  current_x_8 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  current_x_9 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  current_x_10 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  current_x_11 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  current_x_12 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  current_x_13 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  current_x_14 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  current_x_15 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  current_x_16 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  current_x_17 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  current_y_0 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  current_y_1 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  current_y_2 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  current_y_3 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  current_y_4 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  current_y_5 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  current_y_6 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  current_y_7 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  current_y_8 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  current_y_9 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  current_y_10 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  current_y_11 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  current_y_12 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  current_y_13 = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  current_y_14 = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  current_y_15 = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  current_y_16 = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  current_y_17 = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  current_y_18 = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  current_z_0 = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  current_z_1 = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  current_z_2 = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  current_z_3 = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  current_z_4 = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  current_z_5 = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  current_z_6 = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  current_z_7 = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  current_z_8 = _RAND_45[63:0];
  _RAND_46 = {2{`RANDOM}};
  current_z_9 = _RAND_46[63:0];
  _RAND_47 = {2{`RANDOM}};
  current_z_10 = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  current_z_11 = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  current_z_12 = _RAND_49[63:0];
  _RAND_50 = {2{`RANDOM}};
  current_z_13 = _RAND_50[63:0];
  _RAND_51 = {2{`RANDOM}};
  current_z_14 = _RAND_51[63:0];
  _RAND_52 = {2{`RANDOM}};
  current_z_15 = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  current_z_16 = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  current_z_17 = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  current_z_18 = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  current_z_19 = _RAND_56[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module cordic_divide(
  input         clock,
  input         reset,
  input  [63:0] io_x,
  input  [63:0] io_y,
  output [63:0] io_z
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
`endif // RANDOMIZE_REG_INIT
  wire [63:0] unit_io_x; // @[Cordic_LV.scala 131:22]
  wire [63:0] unit_io_out; // @[Cordic_LV.scala 131:22]
  wire [5:0] unit_io_cnt; // @[Cordic_LV.scala 131:22]
  wire  unit_io_flag; // @[Cordic_LV.scala 131:22]
  wire [63:0] unit_1_io_x; // @[Cordic_LV.scala 131:22]
  wire [63:0] unit_1_io_out; // @[Cordic_LV.scala 131:22]
  wire [5:0] unit_1_io_cnt; // @[Cordic_LV.scala 131:22]
  wire  unit_1_io_flag; // @[Cordic_LV.scala 131:22]
  wire  cordic_lv_clock; // @[Cordic_LV.scala 177:43]
  wire  cordic_lv_reset; // @[Cordic_LV.scala 177:43]
  wire [63:0] cordic_lv_io_x; // @[Cordic_LV.scala 177:43]
  wire [63:0] cordic_lv_io_y; // @[Cordic_LV.scala 177:43]
  wire [63:0] cordic_lv_io_z; // @[Cordic_LV.scala 177:43]
  reg [5:0] x_cnt_reg_0; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_1; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_2; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_3; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_4; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_5; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_6; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_7; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_8; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_9; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_10; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_11; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_12; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_13; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_14; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_15; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_16; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_17; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_18; // @[Cordic_LV.scala 158:37]
  reg [5:0] x_cnt_reg_19; // @[Cordic_LV.scala 158:37]
  reg  x_flag_reg_0; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_1; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_2; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_3; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_4; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_5; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_6; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_7; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_8; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_9; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_10; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_11; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_12; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_13; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_14; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_15; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_16; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_17; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_18; // @[Cordic_LV.scala 159:38]
  reg  x_flag_reg_19; // @[Cordic_LV.scala 159:38]
  reg [5:0] y_cnt_reg_0; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_1; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_2; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_3; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_4; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_5; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_6; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_7; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_8; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_9; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_10; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_11; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_12; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_13; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_14; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_15; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_16; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_17; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_18; // @[Cordic_LV.scala 160:37]
  reg [5:0] y_cnt_reg_19; // @[Cordic_LV.scala 160:37]
  reg  y_flag_reg_0; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_1; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_2; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_3; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_4; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_5; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_6; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_7; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_8; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_9; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_10; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_11; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_12; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_13; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_14; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_15; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_16; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_17; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_18; // @[Cordic_LV.scala 161:38]
  reg  y_flag_reg_19; // @[Cordic_LV.scala 161:38]
  wire  _T_2 = x_flag_reg_19 & ~y_flag_reg_19; // @[Cordic_LV.scala 183:50]
  wire [63:0] _unnormed_z_T_2 = 64'sh0 - $signed(cordic_lv_io_z); // @[Cordic_LV.scala 185:19]
  wire [63:0] unnormed_z = _T_2 | ~x_flag_reg_19 & y_flag_reg_19 ? $signed(_unnormed_z_T_2) : $signed(cordic_lv_io_z); // @[Cordic_LV.scala 184:96 185:16 187:16]
  wire [5:0] shift_cnt = $signed(y_cnt_reg_19) - $signed(x_cnt_reg_19); // @[Cordic_LV.scala 189:49]
  wire [5:0] _io_z_T_3 = 6'sh0 - $signed(shift_cnt); // @[Cordic_LV.scala 191:46]
  wire [126:0] _GEN_0 = {{63{unnormed_z[63]}},unnormed_z}; // @[Cordic_LV.scala 191:24]
  wire [126:0] _io_z_T_4 = $signed(_GEN_0) << _io_z_T_3; // @[Cordic_LV.scala 191:24]
  wire [5:0] _io_z_T_5 = $signed(y_cnt_reg_19) - $signed(x_cnt_reg_19); // @[Cordic_LV.scala 193:43]
  wire [63:0] _io_z_T_6 = $signed(unnormed_z) >>> _io_z_T_5; // @[Cordic_LV.scala 193:24]
  wire [126:0] _GEN_1 = $signed(shift_cnt) < 6'sh0 ? $signed(_io_z_T_4) : $signed({{63{_io_z_T_6[63]}},_io_z_T_6}); // @[Cordic_LV.scala 190:25 191:10 193:10]
  shift_2_range unit ( // @[Cordic_LV.scala 131:22]
    .io_x(unit_io_x),
    .io_out(unit_io_out),
    .io_cnt(unit_io_cnt),
    .io_flag(unit_io_flag)
  );
  shift_2_range unit_1 ( // @[Cordic_LV.scala 131:22]
    .io_x(unit_1_io_x),
    .io_out(unit_1_io_out),
    .io_cnt(unit_1_io_cnt),
    .io_flag(unit_1_io_flag)
  );
  CORDIC_LV_ORIGIN cordic_lv ( // @[Cordic_LV.scala 177:43]
    .clock(cordic_lv_clock),
    .reset(cordic_lv_reset),
    .io_x(cordic_lv_io_x),
    .io_y(cordic_lv_io_y),
    .io_z(cordic_lv_io_z)
  );
  assign io_z = _GEN_1[63:0];
  assign unit_io_x = io_x; // @[Cordic_LV.scala 132:15]
  assign unit_1_io_x = io_y; // @[Cordic_LV.scala 132:15]
  assign cordic_lv_clock = clock;
  assign cordic_lv_reset = reset;
  assign cordic_lv_io_x = unit_io_out; // @[Cordic_LV.scala 178:18]
  assign cordic_lv_io_y = unit_1_io_out; // @[Cordic_LV.scala 179:18]
  always @(posedge clock) begin
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_0 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_0 <= unit_io_cnt; // @[Cordic_LV.scala 164:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_1 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_1 <= x_cnt_reg_0; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_2 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_2 <= x_cnt_reg_1; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_3 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_3 <= x_cnt_reg_2; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_4 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_4 <= x_cnt_reg_3; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_5 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_5 <= x_cnt_reg_4; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_6 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_6 <= x_cnt_reg_5; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_7 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_7 <= x_cnt_reg_6; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_8 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_8 <= x_cnt_reg_7; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_9 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_9 <= x_cnt_reg_8; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_10 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_10 <= x_cnt_reg_9; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_11 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_11 <= x_cnt_reg_10; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_12 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_12 <= x_cnt_reg_11; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_13 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_13 <= x_cnt_reg_12; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_14 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_14 <= x_cnt_reg_13; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_15 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_15 <= x_cnt_reg_14; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_16 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_16 <= x_cnt_reg_15; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_17 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_17 <= x_cnt_reg_16; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_18 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_18 <= x_cnt_reg_17; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 158:37]
      x_cnt_reg_19 <= 6'sh0; // @[Cordic_LV.scala 158:37]
    end else begin
      x_cnt_reg_19 <= x_cnt_reg_18; // @[Cordic_LV.scala 169:20]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_0 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_0 <= unit_io_flag; // @[Cordic_LV.scala 165:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_1 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_1 <= x_flag_reg_0; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_2 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_2 <= x_flag_reg_1; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_3 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_3 <= x_flag_reg_2; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_4 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_4 <= x_flag_reg_3; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_5 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_5 <= x_flag_reg_4; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_6 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_6 <= x_flag_reg_5; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_7 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_7 <= x_flag_reg_6; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_8 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_8 <= x_flag_reg_7; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_9 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_9 <= x_flag_reg_8; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_10 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_10 <= x_flag_reg_9; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_11 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_11 <= x_flag_reg_10; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_12 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_12 <= x_flag_reg_11; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_13 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_13 <= x_flag_reg_12; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_14 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_14 <= x_flag_reg_13; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_15 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_15 <= x_flag_reg_14; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_16 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_16 <= x_flag_reg_15; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_17 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_17 <= x_flag_reg_16; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_18 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_18 <= x_flag_reg_17; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 159:38]
      x_flag_reg_19 <= 1'h0; // @[Cordic_LV.scala 159:38]
    end else begin
      x_flag_reg_19 <= x_flag_reg_18; // @[Cordic_LV.scala 170:21]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_0 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_0 <= unit_1_io_cnt; // @[Cordic_LV.scala 166:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_1 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_1 <= y_cnt_reg_0; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_2 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_2 <= y_cnt_reg_1; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_3 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_3 <= y_cnt_reg_2; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_4 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_4 <= y_cnt_reg_3; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_5 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_5 <= y_cnt_reg_4; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_6 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_6 <= y_cnt_reg_5; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_7 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_7 <= y_cnt_reg_6; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_8 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_8 <= y_cnt_reg_7; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_9 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_9 <= y_cnt_reg_8; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_10 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_10 <= y_cnt_reg_9; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_11 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_11 <= y_cnt_reg_10; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_12 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_12 <= y_cnt_reg_11; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_13 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_13 <= y_cnt_reg_12; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_14 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_14 <= y_cnt_reg_13; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_15 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_15 <= y_cnt_reg_14; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_16 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_16 <= y_cnt_reg_15; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_17 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_17 <= y_cnt_reg_16; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_18 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_18 <= y_cnt_reg_17; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 160:37]
      y_cnt_reg_19 <= 6'sh0; // @[Cordic_LV.scala 160:37]
    end else begin
      y_cnt_reg_19 <= y_cnt_reg_18; // @[Cordic_LV.scala 171:20]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_0 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_0 <= unit_1_io_flag; // @[Cordic_LV.scala 167:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_1 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_1 <= y_flag_reg_0; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_2 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_2 <= y_flag_reg_1; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_3 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_3 <= y_flag_reg_2; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_4 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_4 <= y_flag_reg_3; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_5 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_5 <= y_flag_reg_4; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_6 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_6 <= y_flag_reg_5; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_7 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_7 <= y_flag_reg_6; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_8 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_8 <= y_flag_reg_7; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_9 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_9 <= y_flag_reg_8; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_10 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_10 <= y_flag_reg_9; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_11 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_11 <= y_flag_reg_10; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_12 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_12 <= y_flag_reg_11; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_13 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_13 <= y_flag_reg_12; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_14 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_14 <= y_flag_reg_13; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_15 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_15 <= y_flag_reg_14; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_16 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_16 <= y_flag_reg_15; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_17 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_17 <= y_flag_reg_16; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_18 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_18 <= y_flag_reg_17; // @[Cordic_LV.scala 172:21]
    end
    if (reset) begin // @[Cordic_LV.scala 161:38]
      y_flag_reg_19 <= 1'h0; // @[Cordic_LV.scala 161:38]
    end else begin
      y_flag_reg_19 <= y_flag_reg_18; // @[Cordic_LV.scala 172:21]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  x_cnt_reg_0 = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  x_cnt_reg_1 = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  x_cnt_reg_2 = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  x_cnt_reg_3 = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  x_cnt_reg_4 = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  x_cnt_reg_5 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  x_cnt_reg_6 = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  x_cnt_reg_7 = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  x_cnt_reg_8 = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  x_cnt_reg_9 = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  x_cnt_reg_10 = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  x_cnt_reg_11 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  x_cnt_reg_12 = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  x_cnt_reg_13 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  x_cnt_reg_14 = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  x_cnt_reg_15 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  x_cnt_reg_16 = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  x_cnt_reg_17 = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  x_cnt_reg_18 = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  x_cnt_reg_19 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  x_flag_reg_0 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  x_flag_reg_1 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  x_flag_reg_2 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  x_flag_reg_3 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  x_flag_reg_4 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  x_flag_reg_5 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  x_flag_reg_6 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  x_flag_reg_7 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  x_flag_reg_8 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  x_flag_reg_9 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  x_flag_reg_10 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  x_flag_reg_11 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  x_flag_reg_12 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  x_flag_reg_13 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  x_flag_reg_14 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  x_flag_reg_15 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  x_flag_reg_16 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  x_flag_reg_17 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  x_flag_reg_18 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  x_flag_reg_19 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  y_cnt_reg_0 = _RAND_40[5:0];
  _RAND_41 = {1{`RANDOM}};
  y_cnt_reg_1 = _RAND_41[5:0];
  _RAND_42 = {1{`RANDOM}};
  y_cnt_reg_2 = _RAND_42[5:0];
  _RAND_43 = {1{`RANDOM}};
  y_cnt_reg_3 = _RAND_43[5:0];
  _RAND_44 = {1{`RANDOM}};
  y_cnt_reg_4 = _RAND_44[5:0];
  _RAND_45 = {1{`RANDOM}};
  y_cnt_reg_5 = _RAND_45[5:0];
  _RAND_46 = {1{`RANDOM}};
  y_cnt_reg_6 = _RAND_46[5:0];
  _RAND_47 = {1{`RANDOM}};
  y_cnt_reg_7 = _RAND_47[5:0];
  _RAND_48 = {1{`RANDOM}};
  y_cnt_reg_8 = _RAND_48[5:0];
  _RAND_49 = {1{`RANDOM}};
  y_cnt_reg_9 = _RAND_49[5:0];
  _RAND_50 = {1{`RANDOM}};
  y_cnt_reg_10 = _RAND_50[5:0];
  _RAND_51 = {1{`RANDOM}};
  y_cnt_reg_11 = _RAND_51[5:0];
  _RAND_52 = {1{`RANDOM}};
  y_cnt_reg_12 = _RAND_52[5:0];
  _RAND_53 = {1{`RANDOM}};
  y_cnt_reg_13 = _RAND_53[5:0];
  _RAND_54 = {1{`RANDOM}};
  y_cnt_reg_14 = _RAND_54[5:0];
  _RAND_55 = {1{`RANDOM}};
  y_cnt_reg_15 = _RAND_55[5:0];
  _RAND_56 = {1{`RANDOM}};
  y_cnt_reg_16 = _RAND_56[5:0];
  _RAND_57 = {1{`RANDOM}};
  y_cnt_reg_17 = _RAND_57[5:0];
  _RAND_58 = {1{`RANDOM}};
  y_cnt_reg_18 = _RAND_58[5:0];
  _RAND_59 = {1{`RANDOM}};
  y_cnt_reg_19 = _RAND_59[5:0];
  _RAND_60 = {1{`RANDOM}};
  y_flag_reg_0 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  y_flag_reg_1 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  y_flag_reg_2 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  y_flag_reg_3 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  y_flag_reg_4 = _RAND_64[0:0];
  _RAND_65 = {1{`RANDOM}};
  y_flag_reg_5 = _RAND_65[0:0];
  _RAND_66 = {1{`RANDOM}};
  y_flag_reg_6 = _RAND_66[0:0];
  _RAND_67 = {1{`RANDOM}};
  y_flag_reg_7 = _RAND_67[0:0];
  _RAND_68 = {1{`RANDOM}};
  y_flag_reg_8 = _RAND_68[0:0];
  _RAND_69 = {1{`RANDOM}};
  y_flag_reg_9 = _RAND_69[0:0];
  _RAND_70 = {1{`RANDOM}};
  y_flag_reg_10 = _RAND_70[0:0];
  _RAND_71 = {1{`RANDOM}};
  y_flag_reg_11 = _RAND_71[0:0];
  _RAND_72 = {1{`RANDOM}};
  y_flag_reg_12 = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  y_flag_reg_13 = _RAND_73[0:0];
  _RAND_74 = {1{`RANDOM}};
  y_flag_reg_14 = _RAND_74[0:0];
  _RAND_75 = {1{`RANDOM}};
  y_flag_reg_15 = _RAND_75[0:0];
  _RAND_76 = {1{`RANDOM}};
  y_flag_reg_16 = _RAND_76[0:0];
  _RAND_77 = {1{`RANDOM}};
  y_flag_reg_17 = _RAND_77[0:0];
  _RAND_78 = {1{`RANDOM}};
  y_flag_reg_18 = _RAND_78[0:0];
  _RAND_79 = {1{`RANDOM}};
  y_flag_reg_19 = _RAND_79[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CORDIC_CR_ORIGIN(
  input         clock,
  input         reset,
  input  [63:0] io_x,
  input  [63:0] io_y,
  input  [63:0] io_theta,
  output [63:0] io_x_n,
  output [63:0] io_y_n
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [63:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [63:0] _RAND_41;
  reg [63:0] _RAND_42;
  reg [63:0] _RAND_43;
  reg [63:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [63:0] _RAND_46;
  reg [63:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [63:0] _RAND_49;
  reg [63:0] _RAND_50;
  reg [63:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [63:0] _RAND_53;
  reg [63:0] _RAND_54;
  reg [63:0] _RAND_55;
  reg [63:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [63:0] _RAND_58;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] current_x_0; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_1; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_2; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_3; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_4; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_5; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_6; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_7; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_8; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_9; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_10; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_11; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_12; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_13; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_14; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_15; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_16; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_17; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_18; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_x_19; // @[Cordic_CR.scala 42:43]
  reg [63:0] current_y_0; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_1; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_2; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_3; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_4; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_5; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_6; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_7; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_8; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_9; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_10; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_11; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_12; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_13; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_14; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_15; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_16; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_17; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_18; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_y_19; // @[Cordic_CR.scala 43:43]
  reg [63:0] current_theta_0; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_1; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_2; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_3; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_4; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_5; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_6; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_7; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_8; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_9; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_10; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_11; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_12; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_13; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_14; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_15; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_16; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_17; // @[Cordic_CR.scala 44:47]
  reg [63:0] current_theta_18; // @[Cordic_CR.scala 44:47]
  wire [63:0] _current_x_0_T_2 = $signed(io_x) + $signed(io_y); // @[Cordic_CR.scala 54:30]
  wire [63:0] _current_y_0_T_2 = 64'sh0 - $signed(io_x); // @[Cordic_CR.scala 55:25]
  wire [63:0] _current_y_0_T_5 = $signed(_current_y_0_T_2) + $signed(io_y); // @[Cordic_CR.scala 55:31]
  wire [63:0] _current_theta_0_T_2 = $signed(io_theta) + 64'shb40000000; // @[Cordic_CR.scala 56:38]
  wire [63:0] _current_x_0_T_5 = $signed(io_x) - $signed(io_y); // @[Cordic_CR.scala 58:30]
  wire [63:0] _current_theta_0_T_5 = $signed(io_theta) - 64'shb40000000; // @[Cordic_CR.scala 60:38]
  wire [62:0] _current_x_1_T = current_y_0[63:1]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_60 = {{1{_current_x_1_T[62]}},_current_x_1_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_1_T_3 = $signed(current_x_0) + $signed(_GEN_60); // @[Cordic_CR.scala 64:42]
  wire [62:0] _current_y_1_T = current_x_0[63:1]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_61 = {{1{_current_y_1_T[62]}},_current_y_1_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_1_T_3 = $signed(current_y_0) - $signed(_GEN_61); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_1_T_2 = $signed(current_theta_0) + 64'sh6a429cc6a; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_1_T_7 = $signed(current_x_0) - $signed(_GEN_60); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_1_T_7 = $signed(current_y_0) + $signed(_GEN_61); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_1_T_5 = $signed(current_theta_0) - 64'sh6a429cc6a; // @[Cordic_CR.scala 70:50]
  wire [61:0] _current_x_2_T = current_y_1[63:2]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_64 = {{2{_current_x_2_T[61]}},_current_x_2_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_2_T_3 = $signed(current_x_1) + $signed(_GEN_64); // @[Cordic_CR.scala 64:42]
  wire [61:0] _current_y_2_T = current_x_1[63:2]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_65 = {{2{_current_y_2_T[61]}},_current_y_2_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_2_T_3 = $signed(current_y_1) - $signed(_GEN_65); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_2_T_2 = $signed(current_theta_1) + 64'sh38251d01f; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_2_T_7 = $signed(current_x_1) - $signed(_GEN_64); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_2_T_7 = $signed(current_y_1) + $signed(_GEN_65); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_2_T_5 = $signed(current_theta_1) - 64'sh38251d01f; // @[Cordic_CR.scala 70:50]
  wire [60:0] _current_x_3_T = current_y_2[63:3]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_68 = {{3{_current_x_3_T[60]}},_current_x_3_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_3_T_3 = $signed(current_x_2) + $signed(_GEN_68); // @[Cordic_CR.scala 64:42]
  wire [60:0] _current_y_3_T = current_x_2[63:3]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_69 = {{3{_current_y_3_T[60]}},_current_y_3_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_3_T_3 = $signed(current_y_2) - $signed(_GEN_69); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_3_T_2 = $signed(current_theta_2) + 64'sh1c8004492; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_3_T_7 = $signed(current_x_2) - $signed(_GEN_68); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_3_T_7 = $signed(current_y_2) + $signed(_GEN_69); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_3_T_5 = $signed(current_theta_2) - 64'sh1c8004492; // @[Cordic_CR.scala 70:50]
  wire [59:0] _current_x_4_T = current_y_3[63:4]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_72 = {{4{_current_x_4_T[59]}},_current_x_4_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_4_T_3 = $signed(current_x_3) + $signed(_GEN_72); // @[Cordic_CR.scala 64:42]
  wire [59:0] _current_y_4_T = current_x_3[63:4]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_73 = {{4{_current_y_4_T[59]}},_current_y_4_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_4_T_3 = $signed(current_y_3) - $signed(_GEN_73); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_4_T_2 = $signed(current_theta_3) + 64'she4e2a993; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_4_T_7 = $signed(current_x_3) - $signed(_GEN_72); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_4_T_7 = $signed(current_y_3) + $signed(_GEN_73); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_4_T_5 = $signed(current_theta_3) - 64'she4e2a993; // @[Cordic_CR.scala 70:50]
  wire [58:0] _current_x_5_T = current_y_4[63:5]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_76 = {{5{_current_x_5_T[58]}},_current_x_5_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_5_T_3 = $signed(current_x_4) + $signed(_GEN_76); // @[Cordic_CR.scala 64:42]
  wire [58:0] _current_y_5_T = current_x_4[63:5]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_77 = {{5{_current_y_5_T[58]}},_current_y_5_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_5_T_3 = $signed(current_y_4) - $signed(_GEN_77); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_5_T_2 = $signed(current_theta_4) + 64'sh728de539; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_5_T_7 = $signed(current_x_4) - $signed(_GEN_76); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_5_T_7 = $signed(current_y_4) + $signed(_GEN_77); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_5_T_5 = $signed(current_theta_4) - 64'sh728de539; // @[Cordic_CR.scala 70:50]
  wire [57:0] _current_x_6_T = current_y_5[63:6]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_80 = {{6{_current_x_6_T[57]}},_current_x_6_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_6_T_3 = $signed(current_x_5) + $signed(_GEN_80); // @[Cordic_CR.scala 64:42]
  wire [57:0] _current_y_6_T = current_x_5[63:6]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_81 = {{6{_current_y_6_T[57]}},_current_y_6_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_6_T_3 = $signed(current_y_5) - $signed(_GEN_81); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_6_T_2 = $signed(current_theta_5) + 64'sh394a86ac; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_6_T_7 = $signed(current_x_5) - $signed(_GEN_80); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_6_T_7 = $signed(current_y_5) + $signed(_GEN_81); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_6_T_5 = $signed(current_theta_5) - 64'sh394a86ac; // @[Cordic_CR.scala 70:50]
  wire [56:0] _current_x_7_T = current_y_6[63:7]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_84 = {{7{_current_x_7_T[56]}},_current_x_7_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_7_T_3 = $signed(current_x_6) + $signed(_GEN_84); // @[Cordic_CR.scala 64:42]
  wire [56:0] _current_y_7_T = current_x_6[63:7]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_85 = {{7{_current_y_7_T[56]}},_current_y_7_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_7_T_3 = $signed(current_y_6) - $signed(_GEN_85); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_7_T_2 = $signed(current_theta_6) + 64'sh1ca5b5e8; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_7_T_7 = $signed(current_x_6) - $signed(_GEN_84); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_7_T_7 = $signed(current_y_6) + $signed(_GEN_85); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_7_T_5 = $signed(current_theta_6) - 64'sh1ca5b5e8; // @[Cordic_CR.scala 70:50]
  wire [55:0] _current_x_8_T = current_y_7[63:8]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_88 = {{8{_current_x_8_T[55]}},_current_x_8_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_8_T_3 = $signed(current_x_7) + $signed(_GEN_88); // @[Cordic_CR.scala 64:42]
  wire [55:0] _current_y_8_T = current_x_7[63:8]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_89 = {{8{_current_y_8_T[55]}},_current_y_8_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_8_T_3 = $signed(current_y_7) - $signed(_GEN_89); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_8_T_2 = $signed(current_theta_7) + 64'she52e947; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_8_T_7 = $signed(current_x_7) - $signed(_GEN_88); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_8_T_7 = $signed(current_y_7) + $signed(_GEN_89); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_8_T_5 = $signed(current_theta_7) - 64'she52e947; // @[Cordic_CR.scala 70:50]
  wire [54:0] _current_x_9_T = current_y_8[63:9]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_92 = {{9{_current_x_9_T[54]}},_current_x_9_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_9_T_3 = $signed(current_x_8) + $signed(_GEN_92); // @[Cordic_CR.scala 64:42]
  wire [54:0] _current_y_9_T = current_x_8[63:9]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_93 = {{9{_current_y_9_T[54]}},_current_y_9_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_9_T_3 = $signed(current_y_8) - $signed(_GEN_93); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_9_T_2 = $signed(current_theta_8) + 64'sh729766e; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_9_T_7 = $signed(current_x_8) - $signed(_GEN_92); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_9_T_7 = $signed(current_y_8) + $signed(_GEN_93); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_9_T_5 = $signed(current_theta_8) - 64'sh729766e; // @[Cordic_CR.scala 70:50]
  wire [53:0] _current_x_10_T = current_y_9[63:10]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_96 = {{10{_current_x_10_T[53]}},_current_x_10_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_10_T_3 = $signed(current_x_9) + $signed(_GEN_96); // @[Cordic_CR.scala 64:42]
  wire [53:0] _current_y_10_T = current_x_9[63:10]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_97 = {{10{_current_y_10_T[53]}},_current_y_10_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_10_T_3 = $signed(current_y_9) - $signed(_GEN_97); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_10_T_2 = $signed(current_theta_9) + 64'sh394bb70; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_10_T_7 = $signed(current_x_9) - $signed(_GEN_96); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_10_T_7 = $signed(current_y_9) + $signed(_GEN_97); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_10_T_5 = $signed(current_theta_9) - 64'sh394bb70; // @[Cordic_CR.scala 70:50]
  wire [52:0] _current_x_11_T = current_y_10[63:11]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_100 = {{11{_current_x_11_T[52]}},_current_x_11_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_11_T_3 = $signed(current_x_10) + $signed(_GEN_100); // @[Cordic_CR.scala 64:42]
  wire [52:0] _current_y_11_T = current_x_10[63:11]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_101 = {{11{_current_y_11_T[52]}},_current_y_11_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_11_T_3 = $signed(current_y_10) - $signed(_GEN_101); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_11_T_2 = $signed(current_theta_10) + 64'sh1ca5dbf; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_11_T_7 = $signed(current_x_10) - $signed(_GEN_100); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_11_T_7 = $signed(current_y_10) + $signed(_GEN_101); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_11_T_5 = $signed(current_theta_10) - 64'sh1ca5dbf; // @[Cordic_CR.scala 70:50]
  wire [51:0] _current_x_12_T = current_y_11[63:12]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_104 = {{12{_current_x_12_T[51]}},_current_x_12_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_12_T_3 = $signed(current_x_11) + $signed(_GEN_104); // @[Cordic_CR.scala 64:42]
  wire [51:0] _current_y_12_T = current_x_11[63:12]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_105 = {{12{_current_y_12_T[51]}},_current_y_12_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_12_T_3 = $signed(current_y_11) - $signed(_GEN_105); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_12_T_2 = $signed(current_theta_11) + 64'she52ee1; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_12_T_7 = $signed(current_x_11) - $signed(_GEN_104); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_12_T_7 = $signed(current_y_11) + $signed(_GEN_105); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_12_T_5 = $signed(current_theta_11) - 64'she52ee1; // @[Cordic_CR.scala 70:50]
  wire [50:0] _current_x_13_T = current_y_12[63:13]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_108 = {{13{_current_x_13_T[50]}},_current_x_13_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_13_T_3 = $signed(current_x_12) + $signed(_GEN_108); // @[Cordic_CR.scala 64:42]
  wire [50:0] _current_y_13_T = current_x_12[63:13]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_109 = {{13{_current_y_13_T[50]}},_current_y_13_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_13_T_3 = $signed(current_y_12) - $signed(_GEN_109); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_13_T_2 = $signed(current_theta_12) + 64'sh729770; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_13_T_7 = $signed(current_x_12) - $signed(_GEN_108); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_13_T_7 = $signed(current_y_12) + $signed(_GEN_109); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_13_T_5 = $signed(current_theta_12) - 64'sh729770; // @[Cordic_CR.scala 70:50]
  wire [49:0] _current_x_14_T = current_y_13[63:14]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_112 = {{14{_current_x_14_T[49]}},_current_x_14_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_14_T_3 = $signed(current_x_13) + $signed(_GEN_112); // @[Cordic_CR.scala 64:42]
  wire [49:0] _current_y_14_T = current_x_13[63:14]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_113 = {{14{_current_y_14_T[49]}},_current_y_14_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_14_T_3 = $signed(current_y_13) - $signed(_GEN_113); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_14_T_2 = $signed(current_theta_13) + 64'sh394bb8; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_14_T_7 = $signed(current_x_13) - $signed(_GEN_112); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_14_T_7 = $signed(current_y_13) + $signed(_GEN_113); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_14_T_5 = $signed(current_theta_13) - 64'sh394bb8; // @[Cordic_CR.scala 70:50]
  wire [48:0] _current_x_15_T = current_y_14[63:15]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_116 = {{15{_current_x_15_T[48]}},_current_x_15_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_15_T_3 = $signed(current_x_14) + $signed(_GEN_116); // @[Cordic_CR.scala 64:42]
  wire [48:0] _current_y_15_T = current_x_14[63:15]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_117 = {{15{_current_y_15_T[48]}},_current_y_15_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_15_T_3 = $signed(current_y_14) - $signed(_GEN_117); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_15_T_2 = $signed(current_theta_14) + 64'sh1ca5dc; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_15_T_7 = $signed(current_x_14) - $signed(_GEN_116); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_15_T_7 = $signed(current_y_14) + $signed(_GEN_117); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_15_T_5 = $signed(current_theta_14) - 64'sh1ca5dc; // @[Cordic_CR.scala 70:50]
  wire [47:0] _current_x_16_T = current_y_15[63:16]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_120 = {{16{_current_x_16_T[47]}},_current_x_16_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_16_T_3 = $signed(current_x_15) + $signed(_GEN_120); // @[Cordic_CR.scala 64:42]
  wire [47:0] _current_y_16_T = current_x_15[63:16]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_121 = {{16{_current_y_16_T[47]}},_current_y_16_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_16_T_3 = $signed(current_y_15) - $signed(_GEN_121); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_16_T_2 = $signed(current_theta_15) + 64'she52ee; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_16_T_7 = $signed(current_x_15) - $signed(_GEN_120); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_16_T_7 = $signed(current_y_15) + $signed(_GEN_121); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_16_T_5 = $signed(current_theta_15) - 64'she52ee; // @[Cordic_CR.scala 70:50]
  wire [46:0] _current_x_17_T = current_y_16[63:17]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_124 = {{17{_current_x_17_T[46]}},_current_x_17_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_17_T_3 = $signed(current_x_16) + $signed(_GEN_124); // @[Cordic_CR.scala 64:42]
  wire [46:0] _current_y_17_T = current_x_16[63:17]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_125 = {{17{_current_y_17_T[46]}},_current_y_17_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_17_T_3 = $signed(current_y_16) - $signed(_GEN_125); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_17_T_2 = $signed(current_theta_16) + 64'sh72977; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_17_T_7 = $signed(current_x_16) - $signed(_GEN_124); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_17_T_7 = $signed(current_y_16) + $signed(_GEN_125); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_17_T_5 = $signed(current_theta_16) - 64'sh72977; // @[Cordic_CR.scala 70:50]
  wire [45:0] _current_x_18_T = current_y_17[63:18]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_128 = {{18{_current_x_18_T[45]}},_current_x_18_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_18_T_3 = $signed(current_x_17) + $signed(_GEN_128); // @[Cordic_CR.scala 64:42]
  wire [45:0] _current_y_18_T = current_x_17[63:18]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_129 = {{18{_current_y_18_T[45]}},_current_y_18_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_18_T_3 = $signed(current_y_17) - $signed(_GEN_129); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_theta_18_T_2 = $signed(current_theta_17) + 64'sh394bc; // @[Cordic_CR.scala 66:50]
  wire [63:0] _current_x_18_T_7 = $signed(current_x_17) - $signed(_GEN_128); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_18_T_7 = $signed(current_y_17) + $signed(_GEN_129); // @[Cordic_CR.scala 69:42]
  wire [63:0] _current_theta_18_T_5 = $signed(current_theta_17) - 64'sh394bc; // @[Cordic_CR.scala 70:50]
  wire [44:0] _current_x_19_T = current_y_18[63:19]; // @[Cordic_CR.scala 64:62]
  wire [63:0] _GEN_132 = {{19{_current_x_19_T[44]}},_current_x_19_T}; // @[Cordic_CR.scala 64:42]
  wire [63:0] _current_x_19_T_3 = $signed(current_x_18) + $signed(_GEN_132); // @[Cordic_CR.scala 64:42]
  wire [44:0] _current_y_19_T = current_x_18[63:19]; // @[Cordic_CR.scala 65:62]
  wire [63:0] _GEN_133 = {{19{_current_y_19_T[44]}},_current_y_19_T}; // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_y_19_T_3 = $signed(current_y_18) - $signed(_GEN_133); // @[Cordic_CR.scala 65:42]
  wire [63:0] _current_x_19_T_7 = $signed(current_x_18) - $signed(_GEN_132); // @[Cordic_CR.scala 68:42]
  wire [63:0] _current_y_19_T_7 = $signed(current_y_18) + $signed(_GEN_133); // @[Cordic_CR.scala 69:42]
  wire [127:0] _io_x_n_T = $signed(current_x_19) * 64'sh26dd3b6a; // @[Cordic_CR.scala 80:43]
  wire [127:0] _io_y_n_T = $signed(current_y_19) * 64'sh26dd3b6a; // @[Cordic_CR.scala 81:43]
  wire [97:0] _GEN_136 = _io_x_n_T[127:30]; // @[Cordic_CR.scala 80:10]
  wire [97:0] _GEN_138 = _io_y_n_T[127:30]; // @[Cordic_CR.scala 81:10]
  assign io_x_n = _GEN_136[63:0]; // @[Cordic_CR.scala 80:10]
  assign io_y_n = _GEN_138[63:0]; // @[Cordic_CR.scala 81:10]
  always @(posedge clock) begin
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_0 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(io_theta) < 64'sh0) begin // @[Cordic_CR.scala 53:80]
      current_x_0 <= _current_x_0_T_2; // @[Cordic_CR.scala 54:22]
    end else begin
      current_x_0 <= _current_x_0_T_5; // @[Cordic_CR.scala 58:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_1 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_0) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_1 <= _current_x_1_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_1 <= _current_x_1_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_2 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_1) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_2 <= _current_x_2_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_2 <= _current_x_2_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_3 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_2) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_3 <= _current_x_3_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_3 <= _current_x_3_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_4 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_3) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_4 <= _current_x_4_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_4 <= _current_x_4_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_5 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_4) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_5 <= _current_x_5_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_5 <= _current_x_5_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_6 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_5) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_6 <= _current_x_6_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_6 <= _current_x_6_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_7 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_6) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_7 <= _current_x_7_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_7 <= _current_x_7_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_8 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_7) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_8 <= _current_x_8_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_8 <= _current_x_8_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_9 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_8) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_9 <= _current_x_9_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_9 <= _current_x_9_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_10 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_9) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_10 <= _current_x_10_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_10 <= _current_x_10_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_11 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_10) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_11 <= _current_x_11_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_11 <= _current_x_11_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_12 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_11) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_12 <= _current_x_12_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_12 <= _current_x_12_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_13 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_12) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_13 <= _current_x_13_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_13 <= _current_x_13_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_14 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_13) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_14 <= _current_x_14_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_14 <= _current_x_14_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_15 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_14) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_15 <= _current_x_15_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_15 <= _current_x_15_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_16 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_15) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_16 <= _current_x_16_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_16 <= _current_x_16_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_17 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_16) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_17 <= _current_x_17_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_17 <= _current_x_17_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_18 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_17) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_18 <= _current_x_18_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_18 <= _current_x_18_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:43]
      current_x_19 <= 64'sh0; // @[Cordic_CR.scala 42:43]
    end else if ($signed(current_theta_18) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_x_19 <= _current_x_19_T_3; // @[Cordic_CR.scala 64:22]
    end else begin
      current_x_19 <= _current_x_19_T_7; // @[Cordic_CR.scala 68:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_0 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(io_theta) < 64'sh0) begin // @[Cordic_CR.scala 53:80]
      current_y_0 <= _current_y_0_T_5; // @[Cordic_CR.scala 55:22]
    end else begin
      current_y_0 <= _current_x_0_T_2; // @[Cordic_CR.scala 59:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_1 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_0) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_1 <= _current_y_1_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_1 <= _current_y_1_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_2 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_1) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_2 <= _current_y_2_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_2 <= _current_y_2_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_3 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_2) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_3 <= _current_y_3_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_3 <= _current_y_3_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_4 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_3) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_4 <= _current_y_4_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_4 <= _current_y_4_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_5 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_4) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_5 <= _current_y_5_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_5 <= _current_y_5_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_6 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_5) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_6 <= _current_y_6_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_6 <= _current_y_6_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_7 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_6) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_7 <= _current_y_7_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_7 <= _current_y_7_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_8 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_7) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_8 <= _current_y_8_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_8 <= _current_y_8_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_9 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_8) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_9 <= _current_y_9_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_9 <= _current_y_9_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_10 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_9) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_10 <= _current_y_10_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_10 <= _current_y_10_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_11 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_10) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_11 <= _current_y_11_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_11 <= _current_y_11_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_12 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_11) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_12 <= _current_y_12_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_12 <= _current_y_12_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_13 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_12) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_13 <= _current_y_13_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_13 <= _current_y_13_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_14 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_13) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_14 <= _current_y_14_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_14 <= _current_y_14_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_15 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_14) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_15 <= _current_y_15_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_15 <= _current_y_15_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_16 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_15) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_16 <= _current_y_16_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_16 <= _current_y_16_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_17 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_16) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_17 <= _current_y_17_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_17 <= _current_y_17_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_18 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_17) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_18 <= _current_y_18_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_18 <= _current_y_18_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 43:43]
      current_y_19 <= 64'sh0; // @[Cordic_CR.scala 43:43]
    end else if ($signed(current_theta_18) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_y_19 <= _current_y_19_T_3; // @[Cordic_CR.scala 65:22]
    end else begin
      current_y_19 <= _current_y_19_T_7; // @[Cordic_CR.scala 69:22]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_0 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(io_theta) < 64'sh0) begin // @[Cordic_CR.scala 53:80]
      current_theta_0 <= _current_theta_0_T_2; // @[Cordic_CR.scala 56:26]
    end else begin
      current_theta_0 <= _current_theta_0_T_5; // @[Cordic_CR.scala 60:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_1 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_0) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_1 <= _current_theta_1_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_1 <= _current_theta_1_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_2 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_1) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_2 <= _current_theta_2_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_2 <= _current_theta_2_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_3 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_2) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_3 <= _current_theta_3_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_3 <= _current_theta_3_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_4 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_3) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_4 <= _current_theta_4_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_4 <= _current_theta_4_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_5 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_4) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_5 <= _current_theta_5_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_5 <= _current_theta_5_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_6 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_5) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_6 <= _current_theta_6_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_6 <= _current_theta_6_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_7 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_6) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_7 <= _current_theta_7_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_7 <= _current_theta_7_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_8 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_7) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_8 <= _current_theta_8_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_8 <= _current_theta_8_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_9 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_8) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_9 <= _current_theta_9_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_9 <= _current_theta_9_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_10 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_9) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_10 <= _current_theta_10_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_10 <= _current_theta_10_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_11 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_10) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_11 <= _current_theta_11_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_11 <= _current_theta_11_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_12 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_11) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_12 <= _current_theta_12_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_12 <= _current_theta_12_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_13 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_12) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_13 <= _current_theta_13_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_13 <= _current_theta_13_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_14 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_13) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_14 <= _current_theta_14_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_14 <= _current_theta_14_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_15 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_14) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_15 <= _current_theta_15_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_15 <= _current_theta_15_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_16 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_15) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_16 <= _current_theta_16_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_16 <= _current_theta_16_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_17 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_16) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_17 <= _current_theta_17_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_17 <= _current_theta_17_T_5; // @[Cordic_CR.scala 70:26]
    end
    if (reset) begin // @[Cordic_CR.scala 44:47]
      current_theta_18 <= 64'sh0; // @[Cordic_CR.scala 44:47]
    end else if ($signed(current_theta_17) < 64'sh0) begin // @[Cordic_CR.scala 63:92]
      current_theta_18 <= _current_theta_18_T_2; // @[Cordic_CR.scala 66:26]
    end else begin
      current_theta_18 <= _current_theta_18_T_5; // @[Cordic_CR.scala 70:26]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  current_x_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  current_x_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  current_x_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  current_x_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  current_x_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  current_x_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  current_x_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  current_x_7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  current_x_8 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  current_x_9 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  current_x_10 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  current_x_11 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  current_x_12 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  current_x_13 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  current_x_14 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  current_x_15 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  current_x_16 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  current_x_17 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  current_x_18 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  current_x_19 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  current_y_0 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  current_y_1 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  current_y_2 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  current_y_3 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  current_y_4 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  current_y_5 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  current_y_6 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  current_y_7 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  current_y_8 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  current_y_9 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  current_y_10 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  current_y_11 = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  current_y_12 = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  current_y_13 = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  current_y_14 = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  current_y_15 = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  current_y_16 = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  current_y_17 = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  current_y_18 = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  current_y_19 = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  current_theta_0 = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  current_theta_1 = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  current_theta_2 = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  current_theta_3 = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  current_theta_4 = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  current_theta_5 = _RAND_45[63:0];
  _RAND_46 = {2{`RANDOM}};
  current_theta_6 = _RAND_46[63:0];
  _RAND_47 = {2{`RANDOM}};
  current_theta_7 = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  current_theta_8 = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  current_theta_9 = _RAND_49[63:0];
  _RAND_50 = {2{`RANDOM}};
  current_theta_10 = _RAND_50[63:0];
  _RAND_51 = {2{`RANDOM}};
  current_theta_11 = _RAND_51[63:0];
  _RAND_52 = {2{`RANDOM}};
  current_theta_12 = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  current_theta_13 = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  current_theta_14 = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  current_theta_15 = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  current_theta_16 = _RAND_56[63:0];
  _RAND_57 = {2{`RANDOM}};
  current_theta_17 = _RAND_57[63:0];
  _RAND_58 = {2{`RANDOM}};
  current_theta_18 = _RAND_58[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module cordic_complex_divide(
  input         clock,
  input         reset,
  input  [63:0] io_op2_re,
  input  [63:0] io_op2_im,
  output [63:0] io_res_re,
  output [63:0] io_res_im
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [63:0] _RAND_60;
  reg [63:0] _RAND_61;
  reg [63:0] _RAND_62;
  reg [63:0] _RAND_63;
  reg [63:0] _RAND_64;
  reg [63:0] _RAND_65;
  reg [63:0] _RAND_66;
  reg [63:0] _RAND_67;
  reg [63:0] _RAND_68;
  reg [63:0] _RAND_69;
  reg [63:0] _RAND_70;
  reg [63:0] _RAND_71;
  reg [63:0] _RAND_72;
  reg [63:0] _RAND_73;
  reg [63:0] _RAND_74;
  reg [63:0] _RAND_75;
  reg [63:0] _RAND_76;
  reg [63:0] _RAND_77;
  reg [63:0] _RAND_78;
  reg [63:0] _RAND_79;
  reg [63:0] _RAND_80;
  reg [63:0] _RAND_81;
  reg [63:0] _RAND_82;
  reg [63:0] _RAND_83;
  reg [63:0] _RAND_84;
  reg [63:0] _RAND_85;
  reg [63:0] _RAND_86;
  reg [63:0] _RAND_87;
  reg [63:0] _RAND_88;
  reg [63:0] _RAND_89;
  reg [63:0] _RAND_90;
  reg [63:0] _RAND_91;
  reg [63:0] _RAND_92;
  reg [63:0] _RAND_93;
  reg [63:0] _RAND_94;
  reg [63:0] _RAND_95;
  reg [63:0] _RAND_96;
  reg [63:0] _RAND_97;
  reg [63:0] _RAND_98;
  reg [63:0] _RAND_99;
`endif // RANDOMIZE_REG_INIT
  wire  cordic_cv_clock; // @[Cordic_CV.scala 141:27]
  wire  cordic_cv_reset; // @[Cordic_CV.scala 141:27]
  wire [63:0] cordic_cv_io_x; // @[Cordic_CV.scala 141:27]
  wire [63:0] cordic_cv_io_y; // @[Cordic_CV.scala 141:27]
  wire [63:0] cordic_cv_io_theta; // @[Cordic_CV.scala 141:27]
  wire [63:0] cordic_cv_io_r; // @[Cordic_CV.scala 141:27]
  wire  z_a_divide_clock; // @[Cordic_LV.scala 211:24]
  wire  z_a_divide_reset; // @[Cordic_LV.scala 211:24]
  wire [63:0] z_a_divide_io_x; // @[Cordic_LV.scala 211:24]
  wire [63:0] z_a_divide_io_y; // @[Cordic_LV.scala 211:24]
  wire [63:0] z_a_divide_io_z; // @[Cordic_LV.scala 211:24]
  wire  z_b_divide_clock; // @[Cordic_LV.scala 211:24]
  wire  z_b_divide_reset; // @[Cordic_LV.scala 211:24]
  wire [63:0] z_b_divide_io_x; // @[Cordic_LV.scala 211:24]
  wire [63:0] z_b_divide_io_y; // @[Cordic_LV.scala 211:24]
  wire [63:0] z_b_divide_io_z; // @[Cordic_LV.scala 211:24]
  wire  cordic_unit_clock; // @[Cordic_CR.scala 96:47]
  wire  cordic_unit_reset; // @[Cordic_CR.scala 96:47]
  wire [63:0] cordic_unit_io_x; // @[Cordic_CR.scala 96:47]
  wire [63:0] cordic_unit_io_y; // @[Cordic_CR.scala 96:47]
  wire [63:0] cordic_unit_io_theta; // @[Cordic_CR.scala 96:47]
  wire [63:0] cordic_unit_io_x_n; // @[Cordic_CR.scala 96:47]
  wire [63:0] cordic_unit_io_y_n; // @[Cordic_CR.scala 96:47]
  reg  flag_reg_0; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_1; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_2; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_3; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_4; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_5; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_6; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_7; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_8; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_9; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_10; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_11; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_12; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_13; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_14; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_15; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_16; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_17; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_18; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_19; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_20; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_21; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_22; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_23; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_24; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_25; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_26; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_27; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_28; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_29; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_30; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_31; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_32; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_33; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_34; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_35; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_36; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_37; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_38; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_39; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_40; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_41; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_42; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_43; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_44; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_45; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_46; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_47; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_48; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_49; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_50; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_51; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_52; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_53; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_54; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_55; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_56; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_57; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_58; // @[Cordic_Complex_Divide.scala 19:36]
  reg  flag_reg_59; // @[Cordic_Complex_Divide.scala 19:36]
  wire [63:0] _p_T_2 = 64'sh0 - $signed(io_op2_re); // @[Cordic_Complex_Divide.scala 21:10]
  wire [63:0] _q_T_2 = 64'sh0 - $signed(io_op2_im); // @[Cordic_Complex_Divide.scala 22:10]
  wire  _GEN_2 = $signed(io_op2_re) < 64'sh0 ? 1'h0 : 1'h1; // @[Cordic_Complex_Divide.scala 20:75 23:17 27:17]
  reg [63:0] a_reg_0; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_1; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_2; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_3; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_4; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_5; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_6; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_7; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_8; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_9; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_10; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_11; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_12; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_13; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_14; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_15; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_16; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_17; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_18; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] a_reg_19; // @[Cordic_Complex_Divide.scala 34:39]
  reg [63:0] theta_reg_0; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_1; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_2; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_3; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_4; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_5; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_6; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_7; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_8; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_9; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_10; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_11; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_12; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_13; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_14; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_15; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_16; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_17; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_18; // @[Cordic_Complex_Divide.scala 50:43]
  reg [63:0] theta_reg_19; // @[Cordic_Complex_Divide.scala 50:43]
  wire [63:0] _io_res_re_T_2 = 64'sh0 - $signed(cordic_unit_io_x_n); // @[Cordic_Complex_Divide.scala 70:18]
  wire [63:0] _io_res_im_T_2 = 64'sh0 - $signed(cordic_unit_io_y_n); // @[Cordic_Complex_Divide.scala 71:18]
  cordic_cv cordic_cv ( // @[Cordic_CV.scala 141:27]
    .clock(cordic_cv_clock),
    .reset(cordic_cv_reset),
    .io_x(cordic_cv_io_x),
    .io_y(cordic_cv_io_y),
    .io_theta(cordic_cv_io_theta),
    .io_r(cordic_cv_io_r)
  );
  cordic_divide z_a_divide ( // @[Cordic_LV.scala 211:24]
    .clock(z_a_divide_clock),
    .reset(z_a_divide_reset),
    .io_x(z_a_divide_io_x),
    .io_y(z_a_divide_io_y),
    .io_z(z_a_divide_io_z)
  );
  cordic_divide z_b_divide ( // @[Cordic_LV.scala 211:24]
    .clock(z_b_divide_clock),
    .reset(z_b_divide_reset),
    .io_x(z_b_divide_io_x),
    .io_y(z_b_divide_io_y),
    .io_z(z_b_divide_io_z)
  );
  CORDIC_CR_ORIGIN cordic_unit ( // @[Cordic_CR.scala 96:47]
    .clock(cordic_unit_clock),
    .reset(cordic_unit_reset),
    .io_x(cordic_unit_io_x),
    .io_y(cordic_unit_io_y),
    .io_theta(cordic_unit_io_theta),
    .io_x_n(cordic_unit_io_x_n),
    .io_y_n(cordic_unit_io_y_n)
  );
  assign io_res_re = flag_reg_59 ? $signed(cordic_unit_io_x_n) : $signed(_io_res_re_T_2); // @[Cordic_Complex_Divide.scala 66:42 67:15 70:15]
  assign io_res_im = flag_reg_59 ? $signed(cordic_unit_io_y_n) : $signed(_io_res_im_T_2); // @[Cordic_Complex_Divide.scala 66:42 68:15 71:15]
  assign cordic_cv_clock = clock;
  assign cordic_cv_reset = reset;
  assign cordic_cv_io_x = $signed(io_op2_re) < 64'sh0 ? $signed(_p_T_2) : $signed(io_op2_re); // @[Cordic_Complex_Divide.scala 20:75 21:7 25:7]
  assign cordic_cv_io_y = $signed(io_op2_re) < 64'sh0 ? $signed(_q_T_2) : $signed(io_op2_im); // @[Cordic_Complex_Divide.scala 20:75 22:7 26:7]
  assign z_a_divide_clock = clock;
  assign z_a_divide_reset = reset;
  assign z_a_divide_io_x = cordic_cv_io_r; // @[Cordic_LV.scala 212:17]
  assign z_a_divide_io_y = a_reg_19; // @[Cordic_LV.scala 213:17]
  assign z_b_divide_clock = clock;
  assign z_b_divide_reset = reset;
  assign z_b_divide_io_x = cordic_cv_io_r; // @[Cordic_LV.scala 212:17]
  assign z_b_divide_io_y = 64'sh0; // @[Cordic_LV.scala 213:17]
  assign cordic_unit_clock = clock;
  assign cordic_unit_reset = reset;
  assign cordic_unit_io_x = z_a_divide_io_z; // @[Cordic_CR.scala 97:22]
  assign cordic_unit_io_y = z_b_divide_io_z; // @[Cordic_CR.scala 98:22]
  assign cordic_unit_io_theta = 64'sh0 - $signed(theta_reg_19); // @[Cordic_Complex_Divide.scala 64:38]
  always @(posedge clock) begin
    flag_reg_0 <= reset | _GEN_2; // @[Cordic_Complex_Divide.scala 19:{36,36}]
    flag_reg_1 <= reset | flag_reg_0; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_2 <= reset | flag_reg_1; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_3 <= reset | flag_reg_2; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_4 <= reset | flag_reg_3; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_5 <= reset | flag_reg_4; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_6 <= reset | flag_reg_5; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_7 <= reset | flag_reg_6; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_8 <= reset | flag_reg_7; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_9 <= reset | flag_reg_8; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_10 <= reset | flag_reg_9; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_11 <= reset | flag_reg_10; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_12 <= reset | flag_reg_11; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_13 <= reset | flag_reg_12; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_14 <= reset | flag_reg_13; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_15 <= reset | flag_reg_14; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_16 <= reset | flag_reg_15; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_17 <= reset | flag_reg_16; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_18 <= reset | flag_reg_17; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_19 <= reset | flag_reg_18; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_20 <= reset | flag_reg_19; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_21 <= reset | flag_reg_20; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_22 <= reset | flag_reg_21; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_23 <= reset | flag_reg_22; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_24 <= reset | flag_reg_23; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_25 <= reset | flag_reg_24; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_26 <= reset | flag_reg_25; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_27 <= reset | flag_reg_26; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_28 <= reset | flag_reg_27; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_29 <= reset | flag_reg_28; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_30 <= reset | flag_reg_29; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_31 <= reset | flag_reg_30; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_32 <= reset | flag_reg_31; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_33 <= reset | flag_reg_32; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_34 <= reset | flag_reg_33; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_35 <= reset | flag_reg_34; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_36 <= reset | flag_reg_35; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_37 <= reset | flag_reg_36; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_38 <= reset | flag_reg_37; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_39 <= reset | flag_reg_38; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_40 <= reset | flag_reg_39; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_41 <= reset | flag_reg_40; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_42 <= reset | flag_reg_41; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_43 <= reset | flag_reg_42; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_44 <= reset | flag_reg_43; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_45 <= reset | flag_reg_44; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_46 <= reset | flag_reg_45; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_47 <= reset | flag_reg_46; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_48 <= reset | flag_reg_47; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_49 <= reset | flag_reg_48; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_50 <= reset | flag_reg_49; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_51 <= reset | flag_reg_50; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_52 <= reset | flag_reg_51; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_53 <= reset | flag_reg_52; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_54 <= reset | flag_reg_53; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_55 <= reset | flag_reg_54; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_56 <= reset | flag_reg_55; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_57 <= reset | flag_reg_56; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_58 <= reset | flag_reg_57; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    flag_reg_59 <= reset | flag_reg_58; // @[Cordic_Complex_Divide.scala 19:{36,36} 30:17]
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_0 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_0 <= 64'sh40000000; // @[Cordic_Complex_Divide.scala 38:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_1 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_1 <= a_reg_0; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_2 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_2 <= a_reg_1; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_3 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_3 <= a_reg_2; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_4 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_4 <= a_reg_3; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_5 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_5 <= a_reg_4; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_6 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_6 <= a_reg_5; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_7 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_7 <= a_reg_6; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_8 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_8 <= a_reg_7; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_9 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_9 <= a_reg_8; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_10 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_10 <= a_reg_9; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_11 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_11 <= a_reg_10; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_12 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_12 <= a_reg_11; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_13 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_13 <= a_reg_12; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_14 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_14 <= a_reg_13; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_15 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_15 <= a_reg_14; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_16 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_16 <= a_reg_15; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_17 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_17 <= a_reg_16; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_18 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_18 <= a_reg_17; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 34:39]
      a_reg_19 <= 64'sh0; // @[Cordic_Complex_Divide.scala 34:39]
    end else begin
      a_reg_19 <= a_reg_18; // @[Cordic_Complex_Divide.scala 41:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_0 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_0 <= cordic_cv_io_theta; // @[Cordic_Complex_Divide.scala 53:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_1 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_1 <= theta_reg_0; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_2 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_2 <= theta_reg_1; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_3 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_3 <= theta_reg_2; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_4 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_4 <= theta_reg_3; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_5 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_5 <= theta_reg_4; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_6 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_6 <= theta_reg_5; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_7 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_7 <= theta_reg_6; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_8 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_8 <= theta_reg_7; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_9 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_9 <= theta_reg_8; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_10 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_10 <= theta_reg_9; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_11 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_11 <= theta_reg_10; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_12 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_12 <= theta_reg_11; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_13 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_13 <= theta_reg_12; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_14 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_14 <= theta_reg_13; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_15 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_15 <= theta_reg_14; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_16 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_16 <= theta_reg_15; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_17 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_17 <= theta_reg_16; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_18 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_18 <= theta_reg_17; // @[Cordic_Complex_Divide.scala 55:20]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 50:43]
      theta_reg_19 <= 64'sh0; // @[Cordic_Complex_Divide.scala 50:43]
    end else begin
      theta_reg_19 <= theta_reg_18; // @[Cordic_Complex_Divide.scala 55:20]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  flag_reg_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  flag_reg_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  flag_reg_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  flag_reg_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  flag_reg_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  flag_reg_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  flag_reg_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  flag_reg_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  flag_reg_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  flag_reg_9 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  flag_reg_10 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  flag_reg_11 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  flag_reg_12 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  flag_reg_13 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  flag_reg_14 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  flag_reg_15 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  flag_reg_16 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  flag_reg_17 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  flag_reg_18 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  flag_reg_19 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  flag_reg_20 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  flag_reg_21 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  flag_reg_22 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  flag_reg_23 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  flag_reg_24 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  flag_reg_25 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  flag_reg_26 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  flag_reg_27 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  flag_reg_28 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  flag_reg_29 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  flag_reg_30 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  flag_reg_31 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  flag_reg_32 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  flag_reg_33 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  flag_reg_34 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  flag_reg_35 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  flag_reg_36 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  flag_reg_37 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  flag_reg_38 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  flag_reg_39 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  flag_reg_40 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  flag_reg_41 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  flag_reg_42 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  flag_reg_43 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  flag_reg_44 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  flag_reg_45 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  flag_reg_46 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  flag_reg_47 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  flag_reg_48 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  flag_reg_49 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  flag_reg_50 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  flag_reg_51 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  flag_reg_52 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  flag_reg_53 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  flag_reg_54 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  flag_reg_55 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  flag_reg_56 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  flag_reg_57 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  flag_reg_58 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  flag_reg_59 = _RAND_59[0:0];
  _RAND_60 = {2{`RANDOM}};
  a_reg_0 = _RAND_60[63:0];
  _RAND_61 = {2{`RANDOM}};
  a_reg_1 = _RAND_61[63:0];
  _RAND_62 = {2{`RANDOM}};
  a_reg_2 = _RAND_62[63:0];
  _RAND_63 = {2{`RANDOM}};
  a_reg_3 = _RAND_63[63:0];
  _RAND_64 = {2{`RANDOM}};
  a_reg_4 = _RAND_64[63:0];
  _RAND_65 = {2{`RANDOM}};
  a_reg_5 = _RAND_65[63:0];
  _RAND_66 = {2{`RANDOM}};
  a_reg_6 = _RAND_66[63:0];
  _RAND_67 = {2{`RANDOM}};
  a_reg_7 = _RAND_67[63:0];
  _RAND_68 = {2{`RANDOM}};
  a_reg_8 = _RAND_68[63:0];
  _RAND_69 = {2{`RANDOM}};
  a_reg_9 = _RAND_69[63:0];
  _RAND_70 = {2{`RANDOM}};
  a_reg_10 = _RAND_70[63:0];
  _RAND_71 = {2{`RANDOM}};
  a_reg_11 = _RAND_71[63:0];
  _RAND_72 = {2{`RANDOM}};
  a_reg_12 = _RAND_72[63:0];
  _RAND_73 = {2{`RANDOM}};
  a_reg_13 = _RAND_73[63:0];
  _RAND_74 = {2{`RANDOM}};
  a_reg_14 = _RAND_74[63:0];
  _RAND_75 = {2{`RANDOM}};
  a_reg_15 = _RAND_75[63:0];
  _RAND_76 = {2{`RANDOM}};
  a_reg_16 = _RAND_76[63:0];
  _RAND_77 = {2{`RANDOM}};
  a_reg_17 = _RAND_77[63:0];
  _RAND_78 = {2{`RANDOM}};
  a_reg_18 = _RAND_78[63:0];
  _RAND_79 = {2{`RANDOM}};
  a_reg_19 = _RAND_79[63:0];
  _RAND_80 = {2{`RANDOM}};
  theta_reg_0 = _RAND_80[63:0];
  _RAND_81 = {2{`RANDOM}};
  theta_reg_1 = _RAND_81[63:0];
  _RAND_82 = {2{`RANDOM}};
  theta_reg_2 = _RAND_82[63:0];
  _RAND_83 = {2{`RANDOM}};
  theta_reg_3 = _RAND_83[63:0];
  _RAND_84 = {2{`RANDOM}};
  theta_reg_4 = _RAND_84[63:0];
  _RAND_85 = {2{`RANDOM}};
  theta_reg_5 = _RAND_85[63:0];
  _RAND_86 = {2{`RANDOM}};
  theta_reg_6 = _RAND_86[63:0];
  _RAND_87 = {2{`RANDOM}};
  theta_reg_7 = _RAND_87[63:0];
  _RAND_88 = {2{`RANDOM}};
  theta_reg_8 = _RAND_88[63:0];
  _RAND_89 = {2{`RANDOM}};
  theta_reg_9 = _RAND_89[63:0];
  _RAND_90 = {2{`RANDOM}};
  theta_reg_10 = _RAND_90[63:0];
  _RAND_91 = {2{`RANDOM}};
  theta_reg_11 = _RAND_91[63:0];
  _RAND_92 = {2{`RANDOM}};
  theta_reg_12 = _RAND_92[63:0];
  _RAND_93 = {2{`RANDOM}};
  theta_reg_13 = _RAND_93[63:0];
  _RAND_94 = {2{`RANDOM}};
  theta_reg_14 = _RAND_94[63:0];
  _RAND_95 = {2{`RANDOM}};
  theta_reg_15 = _RAND_95[63:0];
  _RAND_96 = {2{`RANDOM}};
  theta_reg_16 = _RAND_96[63:0];
  _RAND_97 = {2{`RANDOM}};
  theta_reg_17 = _RAND_97[63:0];
  _RAND_98 = {2{`RANDOM}};
  theta_reg_18 = _RAND_98[63:0];
  _RAND_99 = {2{`RANDOM}};
  theta_reg_19 = _RAND_99[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module matrix_conjugate(
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
  output [63:0] io_matrixOut_0_re,
  output [63:0] io_matrixOut_0_im,
  output [63:0] io_matrixOut_1_re,
  output [63:0] io_matrixOut_1_im,
  output [63:0] io_matrixOut_2_re,
  output [63:0] io_matrixOut_2_im,
  output [63:0] io_matrixOut_3_re,
  output [63:0] io_matrixOut_3_im,
  output [63:0] io_matrixOut_4_re,
  output [63:0] io_matrixOut_4_im
);
  assign io_matrixOut_0_re = io_matrixIn_0_re; // @[Matrix_Conjugate.scala 22:34]
  assign io_matrixOut_0_im = 64'sh0 - $signed(io_matrixIn_0_im); // @[Matrix_Conjugate.scala 23:37]
  assign io_matrixOut_1_re = io_matrixIn_1_re; // @[Matrix_Conjugate.scala 22:34]
  assign io_matrixOut_1_im = 64'sh0 - $signed(io_matrixIn_1_im); // @[Matrix_Conjugate.scala 23:37]
  assign io_matrixOut_2_re = io_matrixIn_2_re; // @[Matrix_Conjugate.scala 22:34]
  assign io_matrixOut_2_im = 64'sh0 - $signed(io_matrixIn_2_im); // @[Matrix_Conjugate.scala 23:37]
  assign io_matrixOut_3_re = io_matrixIn_3_re; // @[Matrix_Conjugate.scala 22:34]
  assign io_matrixOut_3_im = 64'sh0 - $signed(io_matrixIn_3_im); // @[Matrix_Conjugate.scala 23:37]
  assign io_matrixOut_4_re = io_matrixIn_4_re; // @[Matrix_Conjugate.scala 22:34]
  assign io_matrixOut_4_im = 64'sh0 - $signed(io_matrixIn_4_im); // @[Matrix_Conjugate.scala 23:37]
endmodule
module matrix_transpose(
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
  output [63:0] io_matrixOut_0_re,
  output [63:0] io_matrixOut_0_im,
  output [63:0] io_matrixOut_1_re,
  output [63:0] io_matrixOut_1_im,
  output [63:0] io_matrixOut_2_re,
  output [63:0] io_matrixOut_2_im,
  output [63:0] io_matrixOut_3_re,
  output [63:0] io_matrixOut_3_im,
  output [63:0] io_matrixOut_4_re,
  output [63:0] io_matrixOut_4_im
);
  assign io_matrixOut_0_re = io_matrixIn_0_re; // @[Matrix_Transpose.scala 22:31]
  assign io_matrixOut_0_im = io_matrixIn_0_im; // @[Matrix_Transpose.scala 22:31]
  assign io_matrixOut_1_re = io_matrixIn_1_re; // @[Matrix_Transpose.scala 22:31]
  assign io_matrixOut_1_im = io_matrixIn_1_im; // @[Matrix_Transpose.scala 22:31]
  assign io_matrixOut_2_re = io_matrixIn_2_re; // @[Matrix_Transpose.scala 22:31]
  assign io_matrixOut_2_im = io_matrixIn_2_im; // @[Matrix_Transpose.scala 22:31]
  assign io_matrixOut_3_re = io_matrixIn_3_re; // @[Matrix_Transpose.scala 22:31]
  assign io_matrixOut_3_im = io_matrixIn_3_im; // @[Matrix_Transpose.scala 22:31]
  assign io_matrixOut_4_re = io_matrixIn_4_re; // @[Matrix_Transpose.scala 22:31]
  assign io_matrixOut_4_im = io_matrixIn_4_im; // @[Matrix_Transpose.scala 22:31]
endmodule
module matirx_conjugate_transpose(
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
  output [63:0] io_matrixOut_0_re,
  output [63:0] io_matrixOut_0_im,
  output [63:0] io_matrixOut_1_re,
  output [63:0] io_matrixOut_1_im,
  output [63:0] io_matrixOut_2_re,
  output [63:0] io_matrixOut_2_im,
  output [63:0] io_matrixOut_3_re,
  output [63:0] io_matrixOut_3_im,
  output [63:0] io_matrixOut_4_re,
  output [63:0] io_matrixOut_4_im
);
  wire [63:0] unit_io_matrixIn_0_re; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixIn_0_im; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixIn_1_re; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixIn_1_im; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixIn_2_re; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixIn_2_im; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixIn_3_re; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixIn_3_im; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixIn_4_re; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixIn_4_im; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixOut_0_re; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixOut_0_im; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixOut_1_re; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixOut_1_im; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixOut_2_re; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixOut_2_im; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixOut_3_re; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixOut_3_im; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixOut_4_re; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_io_matrixOut_4_im; // @[Matrix_Conjugate.scala 37:22]
  wire [63:0] unit_1_io_matrixIn_0_re; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixIn_0_im; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixIn_1_re; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixIn_1_im; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixIn_2_re; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixIn_2_im; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixIn_3_re; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixIn_3_im; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixIn_4_re; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixIn_4_im; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixOut_0_re; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixOut_0_im; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixOut_1_re; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixOut_1_im; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixOut_2_re; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixOut_2_im; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixOut_3_re; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixOut_3_im; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixOut_4_re; // @[Matrix_Transpose.scala 36:22]
  wire [63:0] unit_1_io_matrixOut_4_im; // @[Matrix_Transpose.scala 36:22]
  matrix_conjugate unit ( // @[Matrix_Conjugate.scala 37:22]
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
    .io_matrixOut_0_re(unit_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_io_matrixOut_4_im)
  );
  matrix_transpose unit_1 ( // @[Matrix_Transpose.scala 36:22]
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
    .io_matrixOut_0_re(unit_1_io_matrixOut_0_re),
    .io_matrixOut_0_im(unit_1_io_matrixOut_0_im),
    .io_matrixOut_1_re(unit_1_io_matrixOut_1_re),
    .io_matrixOut_1_im(unit_1_io_matrixOut_1_im),
    .io_matrixOut_2_re(unit_1_io_matrixOut_2_re),
    .io_matrixOut_2_im(unit_1_io_matrixOut_2_im),
    .io_matrixOut_3_re(unit_1_io_matrixOut_3_re),
    .io_matrixOut_3_im(unit_1_io_matrixOut_3_im),
    .io_matrixOut_4_re(unit_1_io_matrixOut_4_re),
    .io_matrixOut_4_im(unit_1_io_matrixOut_4_im)
  );
  assign io_matrixOut_0_re = unit_1_io_matrixOut_0_re; // @[Matirx_Conjugate_Transpose.scala 20:16]
  assign io_matrixOut_0_im = unit_1_io_matrixOut_0_im; // @[Matirx_Conjugate_Transpose.scala 20:16]
  assign io_matrixOut_1_re = unit_1_io_matrixOut_1_re; // @[Matirx_Conjugate_Transpose.scala 20:16]
  assign io_matrixOut_1_im = unit_1_io_matrixOut_1_im; // @[Matirx_Conjugate_Transpose.scala 20:16]
  assign io_matrixOut_2_re = unit_1_io_matrixOut_2_re; // @[Matirx_Conjugate_Transpose.scala 20:16]
  assign io_matrixOut_2_im = unit_1_io_matrixOut_2_im; // @[Matirx_Conjugate_Transpose.scala 20:16]
  assign io_matrixOut_3_re = unit_1_io_matrixOut_3_re; // @[Matirx_Conjugate_Transpose.scala 20:16]
  assign io_matrixOut_3_im = unit_1_io_matrixOut_3_im; // @[Matirx_Conjugate_Transpose.scala 20:16]
  assign io_matrixOut_4_re = unit_1_io_matrixOut_4_re; // @[Matirx_Conjugate_Transpose.scala 20:16]
  assign io_matrixOut_4_im = unit_1_io_matrixOut_4_im; // @[Matirx_Conjugate_Transpose.scala 20:16]
  assign unit_io_matrixIn_0_re = io_matrixIn_0_re; // @[Matrix_Conjugate.scala 38:22]
  assign unit_io_matrixIn_0_im = io_matrixIn_0_im; // @[Matrix_Conjugate.scala 38:22]
  assign unit_io_matrixIn_1_re = io_matrixIn_1_re; // @[Matrix_Conjugate.scala 38:22]
  assign unit_io_matrixIn_1_im = io_matrixIn_1_im; // @[Matrix_Conjugate.scala 38:22]
  assign unit_io_matrixIn_2_re = io_matrixIn_2_re; // @[Matrix_Conjugate.scala 38:22]
  assign unit_io_matrixIn_2_im = io_matrixIn_2_im; // @[Matrix_Conjugate.scala 38:22]
  assign unit_io_matrixIn_3_re = io_matrixIn_3_re; // @[Matrix_Conjugate.scala 38:22]
  assign unit_io_matrixIn_3_im = io_matrixIn_3_im; // @[Matrix_Conjugate.scala 38:22]
  assign unit_io_matrixIn_4_re = io_matrixIn_4_re; // @[Matrix_Conjugate.scala 38:22]
  assign unit_io_matrixIn_4_im = io_matrixIn_4_im; // @[Matrix_Conjugate.scala 38:22]
  assign unit_1_io_matrixIn_0_re = unit_io_matrixOut_0_re; // @[Matrix_Transpose.scala 37:22]
  assign unit_1_io_matrixIn_0_im = unit_io_matrixOut_0_im; // @[Matrix_Transpose.scala 37:22]
  assign unit_1_io_matrixIn_1_re = unit_io_matrixOut_1_re; // @[Matrix_Transpose.scala 37:22]
  assign unit_1_io_matrixIn_1_im = unit_io_matrixOut_1_im; // @[Matrix_Transpose.scala 37:22]
  assign unit_1_io_matrixIn_2_re = unit_io_matrixOut_2_re; // @[Matrix_Transpose.scala 37:22]
  assign unit_1_io_matrixIn_2_im = unit_io_matrixOut_2_im; // @[Matrix_Transpose.scala 37:22]
  assign unit_1_io_matrixIn_3_re = unit_io_matrixOut_3_re; // @[Matrix_Transpose.scala 37:22]
  assign unit_1_io_matrixIn_3_im = unit_io_matrixOut_3_im; // @[Matrix_Transpose.scala 37:22]
  assign unit_1_io_matrixIn_4_re = unit_io_matrixOut_4_re; // @[Matrix_Transpose.scala 37:22]
  assign unit_1_io_matrixIn_4_im = unit_io_matrixOut_4_im; // @[Matrix_Transpose.scala 37:22]
endmodule
module optimal_weight_vector(
  input         clock,
  input         reset,
  input         io_reset,
  input         io_ready,
  input  [63:0] io_matrixS_0_re,
  input  [63:0] io_matrixS_0_im,
  input  [63:0] io_matrixS_1_re,
  input  [63:0] io_matrixS_1_im,
  input  [63:0] io_matrixS_2_re,
  input  [63:0] io_matrixS_2_im,
  input  [63:0] io_matrixS_3_re,
  input  [63:0] io_matrixS_3_im,
  input  [63:0] io_matrixS_4_re,
  input  [63:0] io_matrixS_4_im,
  input  [63:0] io_matrixR_Inv_0_re,
  input  [63:0] io_matrixR_Inv_0_im,
  input  [63:0] io_matrixR_Inv_1_re,
  input  [63:0] io_matrixR_Inv_1_im,
  input  [63:0] io_matrixR_Inv_2_re,
  input  [63:0] io_matrixR_Inv_2_im,
  input  [63:0] io_matrixR_Inv_3_re,
  input  [63:0] io_matrixR_Inv_3_im,
  input  [63:0] io_matrixR_Inv_4_re,
  input  [63:0] io_matrixR_Inv_4_im,
  input  [63:0] io_matrixR_Inv_5_re,
  input  [63:0] io_matrixR_Inv_5_im,
  input  [63:0] io_matrixR_Inv_6_re,
  input  [63:0] io_matrixR_Inv_6_im,
  input  [63:0] io_matrixR_Inv_7_re,
  input  [63:0] io_matrixR_Inv_7_im,
  input  [63:0] io_matrixR_Inv_8_re,
  input  [63:0] io_matrixR_Inv_8_im,
  input  [63:0] io_matrixR_Inv_9_re,
  input  [63:0] io_matrixR_Inv_9_im,
  input  [63:0] io_matrixR_Inv_10_re,
  input  [63:0] io_matrixR_Inv_10_im,
  input  [63:0] io_matrixR_Inv_11_re,
  input  [63:0] io_matrixR_Inv_11_im,
  input  [63:0] io_matrixR_Inv_12_re,
  input  [63:0] io_matrixR_Inv_12_im,
  input  [63:0] io_matrixR_Inv_13_re,
  input  [63:0] io_matrixR_Inv_13_im,
  input  [63:0] io_matrixR_Inv_14_re,
  input  [63:0] io_matrixR_Inv_14_im,
  input  [63:0] io_matrixR_Inv_15_re,
  input  [63:0] io_matrixR_Inv_15_im,
  input  [63:0] io_matrixR_Inv_16_re,
  input  [63:0] io_matrixR_Inv_16_im,
  input  [63:0] io_matrixR_Inv_17_re,
  input  [63:0] io_matrixR_Inv_17_im,
  input  [63:0] io_matrixR_Inv_18_re,
  input  [63:0] io_matrixR_Inv_18_im,
  input  [63:0] io_matrixR_Inv_19_re,
  input  [63:0] io_matrixR_Inv_19_im,
  input  [63:0] io_matrixR_Inv_20_re,
  input  [63:0] io_matrixR_Inv_20_im,
  input  [63:0] io_matrixR_Inv_21_re,
  input  [63:0] io_matrixR_Inv_21_im,
  input  [63:0] io_matrixR_Inv_22_re,
  input  [63:0] io_matrixR_Inv_22_im,
  input  [63:0] io_matrixR_Inv_23_re,
  input  [63:0] io_matrixR_Inv_23_im,
  input  [63:0] io_matrixR_Inv_24_re,
  input  [63:0] io_matrixR_Inv_24_im,
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
  output        io_valid,
  output [7:0]  io_debug_status,
  output [63:0] io_debug_matrix_R_Comp_0_re,
  output [63:0] io_debug_matrix_R_Comp_0_im,
  output [63:0] io_debug_matrix_R_Comp_1_re,
  output [63:0] io_debug_matrix_R_Comp_1_im,
  output [63:0] io_debug_matrix_R_Comp_2_re,
  output [63:0] io_debug_matrix_R_Comp_2_im,
  output [63:0] io_debug_matrix_R_Comp_3_re,
  output [63:0] io_debug_matrix_R_Comp_3_im,
  output [63:0] io_debug_matrix_R_Comp_4_re,
  output [63:0] io_debug_matrix_R_Comp_4_im,
  output [63:0] io_debug_matrix_R_Comp_5_re,
  output [63:0] io_debug_matrix_R_Comp_5_im,
  output [63:0] io_debug_matrix_R_Comp_6_re,
  output [63:0] io_debug_matrix_R_Comp_6_im,
  output [63:0] io_debug_matrix_R_Comp_7_re,
  output [63:0] io_debug_matrix_R_Comp_7_im,
  output [63:0] io_debug_matrix_R_Comp_8_re,
  output [63:0] io_debug_matrix_R_Comp_8_im,
  output [63:0] io_debug_matrix_R_Comp_9_re,
  output [63:0] io_debug_matrix_R_Comp_9_im,
  output [63:0] io_debug_matrix_R_Comp_10_re,
  output [63:0] io_debug_matrix_R_Comp_10_im,
  output [63:0] io_debug_matrix_R_Comp_11_re,
  output [63:0] io_debug_matrix_R_Comp_11_im,
  output [63:0] io_debug_matrix_R_Comp_12_re,
  output [63:0] io_debug_matrix_R_Comp_12_im,
  output [63:0] io_debug_matrix_R_Comp_13_re,
  output [63:0] io_debug_matrix_R_Comp_13_im,
  output [63:0] io_debug_matrix_R_Comp_14_re,
  output [63:0] io_debug_matrix_R_Comp_14_im,
  output [63:0] io_debug_matrix_R_Comp_15_re,
  output [63:0] io_debug_matrix_R_Comp_15_im,
  output [63:0] io_debug_matrix_R_Comp_16_re,
  output [63:0] io_debug_matrix_R_Comp_16_im,
  output [63:0] io_debug_matrix_R_Comp_17_re,
  output [63:0] io_debug_matrix_R_Comp_17_im,
  output [63:0] io_debug_matrix_R_Comp_18_re,
  output [63:0] io_debug_matrix_R_Comp_18_im,
  output [63:0] io_debug_matrix_R_Comp_19_re,
  output [63:0] io_debug_matrix_R_Comp_19_im,
  output [63:0] io_debug_matrix_R_Comp_20_re,
  output [63:0] io_debug_matrix_R_Comp_20_im,
  output [63:0] io_debug_matrix_R_Comp_21_re,
  output [63:0] io_debug_matrix_R_Comp_21_im,
  output [63:0] io_debug_matrix_R_Comp_22_re,
  output [63:0] io_debug_matrix_R_Comp_22_im,
  output [63:0] io_debug_matrix_R_Comp_23_re,
  output [63:0] io_debug_matrix_R_Comp_23_im,
  output [63:0] io_debug_matrix_R_Comp_24_re,
  output [63:0] io_debug_matrix_R_Comp_24_im,
  output [63:0] io_debug_matrix_S_Comp_0_re,
  output [63:0] io_debug_matrix_S_Comp_0_im,
  output [63:0] io_debug_matrix_S_Comp_1_re,
  output [63:0] io_debug_matrix_S_Comp_1_im,
  output [63:0] io_debug_matrix_S_Comp_2_re,
  output [63:0] io_debug_matrix_S_Comp_2_im,
  output [63:0] io_debug_matrix_S_Comp_3_re,
  output [63:0] io_debug_matrix_S_Comp_3_im,
  output [63:0] io_debug_matrix_S_Comp_4_re,
  output [63:0] io_debug_matrix_S_Comp_4_im,
  output [63:0] io_debug_matrix_mul_re_0_re,
  output [63:0] io_debug_matrix_mul_re_0_im,
  output [63:0] io_debug_matrix_mul_re_1_re,
  output [63:0] io_debug_matrix_mul_re_1_im,
  output [63:0] io_debug_matrix_mul_re_2_re,
  output [63:0] io_debug_matrix_mul_re_2_im,
  output [63:0] io_debug_matrix_mul_re_3_re,
  output [63:0] io_debug_matrix_mul_re_3_im,
  output [63:0] io_debug_matrix_mul_re_4_re,
  output [63:0] io_debug_matrix_mul_re_4_im,
  output [63:0] io_debug_u_re,
  output [63:0] io_debug_u_im,
  output [63:0] io_debug_1_divide_u_re,
  output [63:0] io_debug_1_divide_u_im,
  output        io_debug_mul_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
  reg [63:0] _RAND_3;
  reg [63:0] _RAND_4;
  reg [63:0] _RAND_5;
  reg [63:0] _RAND_6;
  reg [63:0] _RAND_7;
  reg [63:0] _RAND_8;
  reg [63:0] _RAND_9;
  reg [63:0] _RAND_10;
  reg [63:0] _RAND_11;
  reg [63:0] _RAND_12;
  reg [63:0] _RAND_13;
  reg [63:0] _RAND_14;
  reg [63:0] _RAND_15;
  reg [63:0] _RAND_16;
  reg [63:0] _RAND_17;
  reg [63:0] _RAND_18;
  reg [63:0] _RAND_19;
  reg [63:0] _RAND_20;
  reg [63:0] _RAND_21;
  reg [63:0] _RAND_22;
  reg [63:0] _RAND_23;
  reg [63:0] _RAND_24;
  reg [63:0] _RAND_25;
  reg [63:0] _RAND_26;
  reg [63:0] _RAND_27;
  reg [63:0] _RAND_28;
  reg [63:0] _RAND_29;
  reg [63:0] _RAND_30;
  reg [63:0] _RAND_31;
  reg [63:0] _RAND_32;
  reg [63:0] _RAND_33;
  reg [63:0] _RAND_34;
  reg [63:0] _RAND_35;
  reg [63:0] _RAND_36;
  reg [63:0] _RAND_37;
  reg [63:0] _RAND_38;
  reg [63:0] _RAND_39;
  reg [63:0] _RAND_40;
  reg [63:0] _RAND_41;
  reg [63:0] _RAND_42;
  reg [63:0] _RAND_43;
  reg [63:0] _RAND_44;
  reg [63:0] _RAND_45;
  reg [63:0] _RAND_46;
  reg [63:0] _RAND_47;
  reg [63:0] _RAND_48;
  reg [63:0] _RAND_49;
  reg [63:0] _RAND_50;
  reg [63:0] _RAND_51;
  reg [63:0] _RAND_52;
  reg [63:0] _RAND_53;
  reg [63:0] _RAND_54;
  reg [63:0] _RAND_55;
  reg [63:0] _RAND_56;
  reg [63:0] _RAND_57;
  reg [63:0] _RAND_58;
  reg [63:0] _RAND_59;
  reg [63:0] _RAND_60;
  reg [63:0] _RAND_61;
  reg [31:0] _RAND_62;
`endif // RANDOMIZE_REG_INIT
  wire  complex_matirx_mul_unit_clock; // @[Optimal_Weight_Vector.scala 38:54]
  wire  complex_matirx_mul_unit_io_reset; // @[Optimal_Weight_Vector.scala 38:54]
  wire  complex_matirx_mul_unit_io_ready; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_0_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_0_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_1_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_1_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_2_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_2_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_3_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_3_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_4_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_4_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_5_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_5_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_6_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_6_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_7_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_7_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_8_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_8_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_9_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_9_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_10_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_10_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_11_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_11_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_12_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_12_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_13_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_13_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_14_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_14_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_15_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_15_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_16_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_16_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_17_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_17_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_18_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_18_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_19_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_19_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_20_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_20_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_21_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_21_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_22_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_22_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_23_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_23_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_24_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixA_24_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixB_0_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixB_0_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixB_1_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixB_1_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixB_2_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixB_2_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixB_3_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixB_3_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixB_4_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixB_4_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixC_0_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixC_0_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixC_1_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixC_1_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixC_2_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixC_2_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixC_3_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixC_3_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixC_4_re; // @[Optimal_Weight_Vector.scala 38:54]
  wire [63:0] complex_matirx_mul_unit_io_matrixC_4_im; // @[Optimal_Weight_Vector.scala 38:54]
  wire  complex_matirx_mul_unit_io_valid; // @[Optimal_Weight_Vector.scala 38:54]
  wire  complex_divide_unit_clock; // @[Optimal_Weight_Vector.scala 39:58]
  wire  complex_divide_unit_reset; // @[Optimal_Weight_Vector.scala 39:58]
  wire [63:0] complex_divide_unit_io_op2_re; // @[Optimal_Weight_Vector.scala 39:58]
  wire [63:0] complex_divide_unit_io_op2_im; // @[Optimal_Weight_Vector.scala 39:58]
  wire [63:0] complex_divide_unit_io_res_re; // @[Optimal_Weight_Vector.scala 39:58]
  wire [63:0] complex_divide_unit_io_res_im; // @[Optimal_Weight_Vector.scala 39:58]
  wire [63:0] S_c_t_unit_io_matrixIn_0_re; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixIn_0_im; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixIn_1_re; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixIn_1_im; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixIn_2_re; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixIn_2_im; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixIn_3_re; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixIn_3_im; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixIn_4_re; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixIn_4_im; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixOut_0_re; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixOut_0_im; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixOut_1_re; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixOut_1_im; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixOut_2_re; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixOut_2_im; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixOut_3_re; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixOut_3_im; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixOut_4_re; // @[Matirx_Conjugate_Transpose.scala 32:22]
  wire [63:0] S_c_t_unit_io_matrixOut_4_im; // @[Matirx_Conjugate_Transpose.scala 32:22]
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
  reg [63:0] matrix_R_Comp_0_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_0_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_1_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_1_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_2_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_2_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_3_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_3_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_4_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_4_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_5_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_5_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_6_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_6_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_7_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_7_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_8_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_8_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_9_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_9_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_10_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_10_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_11_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_11_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_12_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_12_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_13_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_13_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_14_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_14_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_15_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_15_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_16_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_16_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_17_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_17_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_18_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_18_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_19_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_19_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_20_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_20_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_21_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_21_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_22_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_22_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_23_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_23_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_24_re; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_R_Comp_24_im; // @[Optimal_Weight_Vector.scala 33:40]
  reg [63:0] matrix_S_Comp_0_re; // @[Optimal_Weight_Vector.scala 34:40]
  reg [63:0] matrix_S_Comp_0_im; // @[Optimal_Weight_Vector.scala 34:40]
  reg [63:0] matrix_S_Comp_1_re; // @[Optimal_Weight_Vector.scala 34:40]
  reg [63:0] matrix_S_Comp_1_im; // @[Optimal_Weight_Vector.scala 34:40]
  reg [63:0] matrix_S_Comp_2_re; // @[Optimal_Weight_Vector.scala 34:40]
  reg [63:0] matrix_S_Comp_2_im; // @[Optimal_Weight_Vector.scala 34:40]
  reg [63:0] matrix_S_Comp_3_re; // @[Optimal_Weight_Vector.scala 34:40]
  reg [63:0] matrix_S_Comp_3_im; // @[Optimal_Weight_Vector.scala 34:40]
  reg [63:0] matrix_S_Comp_4_re; // @[Optimal_Weight_Vector.scala 34:40]
  reg [63:0] matrix_S_Comp_4_im; // @[Optimal_Weight_Vector.scala 34:40]
  reg [63:0] u_re; // @[Optimal_Weight_Vector.scala 35:23]
  reg [63:0] u_im; // @[Optimal_Weight_Vector.scala 35:23]
  reg [7:0] status; // @[Optimal_Weight_Vector.scala 36:29]
  wire [7:0] _status_T_1 = status + 8'h1; // @[Optimal_Weight_Vector.scala 80:24]
  wire [63:0] _GEN_0 = complex_matirx_mul_unit_io_valid ? $signed(complex_matirx_mul_unit_io_matrixC_0_im) : $signed(
    matrix_R_Comp_0_im); // @[Optimal_Weight_Vector.scala 84:46 86:28 33:40]
  wire [63:0] _GEN_1 = complex_matirx_mul_unit_io_valid ? $signed(complex_matirx_mul_unit_io_matrixC_0_re) : $signed(
    matrix_R_Comp_0_re); // @[Optimal_Weight_Vector.scala 84:46 86:28 33:40]
  wire [63:0] _GEN_2 = complex_matirx_mul_unit_io_valid ? $signed(complex_matirx_mul_unit_io_matrixC_1_im) : $signed(
    matrix_R_Comp_1_im); // @[Optimal_Weight_Vector.scala 84:46 86:28 33:40]
  wire [63:0] _GEN_3 = complex_matirx_mul_unit_io_valid ? $signed(complex_matirx_mul_unit_io_matrixC_1_re) : $signed(
    matrix_R_Comp_1_re); // @[Optimal_Weight_Vector.scala 84:46 86:28 33:40]
  wire [63:0] _GEN_4 = complex_matirx_mul_unit_io_valid ? $signed(complex_matirx_mul_unit_io_matrixC_2_im) : $signed(
    matrix_R_Comp_2_im); // @[Optimal_Weight_Vector.scala 84:46 86:28 33:40]
  wire [63:0] _GEN_5 = complex_matirx_mul_unit_io_valid ? $signed(complex_matirx_mul_unit_io_matrixC_2_re) : $signed(
    matrix_R_Comp_2_re); // @[Optimal_Weight_Vector.scala 84:46 86:28 33:40]
  wire [63:0] _GEN_6 = complex_matirx_mul_unit_io_valid ? $signed(complex_matirx_mul_unit_io_matrixC_3_im) : $signed(
    matrix_R_Comp_3_im); // @[Optimal_Weight_Vector.scala 84:46 86:28 33:40]
  wire [63:0] _GEN_7 = complex_matirx_mul_unit_io_valid ? $signed(complex_matirx_mul_unit_io_matrixC_3_re) : $signed(
    matrix_R_Comp_3_re); // @[Optimal_Weight_Vector.scala 84:46 86:28 33:40]
  wire [63:0] _GEN_8 = complex_matirx_mul_unit_io_valid ? $signed(complex_matirx_mul_unit_io_matrixC_4_im) : $signed(
    matrix_R_Comp_4_im); // @[Optimal_Weight_Vector.scala 84:46 86:28 33:40]
  wire [63:0] _GEN_9 = complex_matirx_mul_unit_io_valid ? $signed(complex_matirx_mul_unit_io_matrixC_4_re) : $signed(
    matrix_R_Comp_4_re); // @[Optimal_Weight_Vector.scala 84:46 86:28 33:40]
  wire [7:0] _GEN_10 = complex_matirx_mul_unit_io_valid ? _status_T_1 : status; // @[Optimal_Weight_Vector.scala 84:46 88:16 36:29]
  wire  _T_2 = status == 8'h3; // @[Optimal_Weight_Vector.scala 90:23]
  wire [63:0] _GEN_11 = complex_matirx_mul_unit_io_valid ? $signed(complex_matirx_mul_unit_io_matrixC_0_im) : $signed(
    u_im); // @[Optimal_Weight_Vector.scala 103:46 104:11 35:23]
  wire [63:0] _GEN_12 = complex_matirx_mul_unit_io_valid ? $signed(complex_matirx_mul_unit_io_matrixC_0_re) : $signed(
    u_re); // @[Optimal_Weight_Vector.scala 103:46 104:11 35:23]
  wire [63:0] _GEN_14 = status <= 8'h41 ? $signed(u_im) : $signed(64'sh40000000); // @[Optimal_Weight_Vector.scala 107:54 109:34 47:33]
  wire [63:0] _GEN_15 = status <= 8'h41 ? $signed(u_re) : $signed(64'sh40000000); // @[Optimal_Weight_Vector.scala 107:54 109:34 46:33]
  wire [7:0] _GEN_16 = status <= 8'h41 ? _status_T_1 : status; // @[Optimal_Weight_Vector.scala 107:54 110:14 36:29]
  wire [63:0] _GEN_18 = status == 8'h4 ? $signed(_GEN_11) : $signed(u_im); // @[Optimal_Weight_Vector.scala 100:32 35:23]
  wire [63:0] _GEN_19 = status == 8'h4 ? $signed(_GEN_12) : $signed(u_re); // @[Optimal_Weight_Vector.scala 100:32 35:23]
  wire [7:0] _GEN_20 = status == 8'h4 ? _GEN_10 : _GEN_16; // @[Optimal_Weight_Vector.scala 100:32]
  wire [63:0] _GEN_21 = status == 8'h4 ? $signed(64'sh40000000) : $signed(_GEN_14); // @[Optimal_Weight_Vector.scala 100:32 47:33]
  wire [63:0] _GEN_22 = status == 8'h4 ? $signed(64'sh40000000) : $signed(_GEN_15); // @[Optimal_Weight_Vector.scala 100:32 46:33]
  wire [63:0] _GEN_24 = S_c_t_unit_io_matrixOut_0_im; // @[Optimal_Weight_Vector.scala 90:32 96:47]
  wire [63:0] _GEN_25 = S_c_t_unit_io_matrixOut_0_re; // @[Optimal_Weight_Vector.scala 90:32 96:47]
  wire [63:0] _GEN_28 = S_c_t_unit_io_matrixOut_1_im; // @[Optimal_Weight_Vector.scala 90:32 96:47]
  wire [63:0] _GEN_29 = S_c_t_unit_io_matrixOut_1_re; // @[Optimal_Weight_Vector.scala 90:32 96:47]
  wire [63:0] _GEN_32 = S_c_t_unit_io_matrixOut_2_im; // @[Optimal_Weight_Vector.scala 90:32 96:47]
  wire [63:0] _GEN_33 = S_c_t_unit_io_matrixOut_2_re; // @[Optimal_Weight_Vector.scala 90:32 96:47]
  wire [63:0] _GEN_36 = S_c_t_unit_io_matrixOut_3_im; // @[Optimal_Weight_Vector.scala 90:32 96:47]
  wire [63:0] _GEN_37 = S_c_t_unit_io_matrixOut_3_re; // @[Optimal_Weight_Vector.scala 90:32 96:47]
  wire [63:0] _GEN_40 = S_c_t_unit_io_matrixOut_4_im; // @[Optimal_Weight_Vector.scala 90:32 96:47]
  wire [63:0] _GEN_41 = S_c_t_unit_io_matrixOut_4_re; // @[Optimal_Weight_Vector.scala 90:32 96:47]
  wire [7:0] _GEN_44 = status == 8'h3 ? _status_T_1 : _GEN_20; // @[Optimal_Weight_Vector.scala 90:32 99:14]
  wire [63:0] _GEN_45 = status == 8'h3 ? $signed(u_im) : $signed(_GEN_18); // @[Optimal_Weight_Vector.scala 35:23 90:32]
  wire [63:0] _GEN_46 = status == 8'h3 ? $signed(u_re) : $signed(_GEN_19); // @[Optimal_Weight_Vector.scala 35:23 90:32]
  wire [63:0] _GEN_47 = status == 8'h3 ? $signed(64'sh40000000) : $signed(_GEN_21); // @[Optimal_Weight_Vector.scala 90:32 47:33]
  wire [63:0] _GEN_48 = status == 8'h3 ? $signed(64'sh40000000) : $signed(_GEN_22); // @[Optimal_Weight_Vector.scala 90:32 46:33]
  wire  _GEN_49 = status == 8'h2 ? 1'h0 : _T_2; // @[Optimal_Weight_Vector.scala 81:32 83:40]
  wire [7:0] _GEN_60 = status == 8'h2 ? _GEN_10 : _GEN_44; // @[Optimal_Weight_Vector.scala 81:32]
  wire [63:0] _GEN_83 = status == 8'h2 ? $signed(64'sh40000000) : $signed(_GEN_47); // @[Optimal_Weight_Vector.scala 81:32 47:33]
  wire [63:0] _GEN_84 = status == 8'h2 ? $signed(64'sh40000000) : $signed(_GEN_48); // @[Optimal_Weight_Vector.scala 81:32 46:33]
  wire [63:0] _GEN_159 = status == 8'h1 ? $signed(64'sh40000000) : $signed(_GEN_83); // @[Optimal_Weight_Vector.scala 75:26 47:33]
  wire [63:0] _GEN_160 = status == 8'h1 ? $signed(64'sh40000000) : $signed(_GEN_84); // @[Optimal_Weight_Vector.scala 75:26 46:33]
  wire [63:0] _GEN_285 = io_ready ? $signed(64'sh40000000) : $signed(_GEN_159); // @[Optimal_Weight_Vector.scala 69:24 47:33]
  wire [63:0] _GEN_286 = io_ready ? $signed(64'sh40000000) : $signed(_GEN_160); // @[Optimal_Weight_Vector.scala 69:24 46:33]
  matrix_mul_v1 complex_matirx_mul_unit ( // @[Optimal_Weight_Vector.scala 38:54]
    .clock(complex_matirx_mul_unit_clock),
    .io_reset(complex_matirx_mul_unit_io_reset),
    .io_ready(complex_matirx_mul_unit_io_ready),
    .io_matrixA_0_re(complex_matirx_mul_unit_io_matrixA_0_re),
    .io_matrixA_0_im(complex_matirx_mul_unit_io_matrixA_0_im),
    .io_matrixA_1_re(complex_matirx_mul_unit_io_matrixA_1_re),
    .io_matrixA_1_im(complex_matirx_mul_unit_io_matrixA_1_im),
    .io_matrixA_2_re(complex_matirx_mul_unit_io_matrixA_2_re),
    .io_matrixA_2_im(complex_matirx_mul_unit_io_matrixA_2_im),
    .io_matrixA_3_re(complex_matirx_mul_unit_io_matrixA_3_re),
    .io_matrixA_3_im(complex_matirx_mul_unit_io_matrixA_3_im),
    .io_matrixA_4_re(complex_matirx_mul_unit_io_matrixA_4_re),
    .io_matrixA_4_im(complex_matirx_mul_unit_io_matrixA_4_im),
    .io_matrixA_5_re(complex_matirx_mul_unit_io_matrixA_5_re),
    .io_matrixA_5_im(complex_matirx_mul_unit_io_matrixA_5_im),
    .io_matrixA_6_re(complex_matirx_mul_unit_io_matrixA_6_re),
    .io_matrixA_6_im(complex_matirx_mul_unit_io_matrixA_6_im),
    .io_matrixA_7_re(complex_matirx_mul_unit_io_matrixA_7_re),
    .io_matrixA_7_im(complex_matirx_mul_unit_io_matrixA_7_im),
    .io_matrixA_8_re(complex_matirx_mul_unit_io_matrixA_8_re),
    .io_matrixA_8_im(complex_matirx_mul_unit_io_matrixA_8_im),
    .io_matrixA_9_re(complex_matirx_mul_unit_io_matrixA_9_re),
    .io_matrixA_9_im(complex_matirx_mul_unit_io_matrixA_9_im),
    .io_matrixA_10_re(complex_matirx_mul_unit_io_matrixA_10_re),
    .io_matrixA_10_im(complex_matirx_mul_unit_io_matrixA_10_im),
    .io_matrixA_11_re(complex_matirx_mul_unit_io_matrixA_11_re),
    .io_matrixA_11_im(complex_matirx_mul_unit_io_matrixA_11_im),
    .io_matrixA_12_re(complex_matirx_mul_unit_io_matrixA_12_re),
    .io_matrixA_12_im(complex_matirx_mul_unit_io_matrixA_12_im),
    .io_matrixA_13_re(complex_matirx_mul_unit_io_matrixA_13_re),
    .io_matrixA_13_im(complex_matirx_mul_unit_io_matrixA_13_im),
    .io_matrixA_14_re(complex_matirx_mul_unit_io_matrixA_14_re),
    .io_matrixA_14_im(complex_matirx_mul_unit_io_matrixA_14_im),
    .io_matrixA_15_re(complex_matirx_mul_unit_io_matrixA_15_re),
    .io_matrixA_15_im(complex_matirx_mul_unit_io_matrixA_15_im),
    .io_matrixA_16_re(complex_matirx_mul_unit_io_matrixA_16_re),
    .io_matrixA_16_im(complex_matirx_mul_unit_io_matrixA_16_im),
    .io_matrixA_17_re(complex_matirx_mul_unit_io_matrixA_17_re),
    .io_matrixA_17_im(complex_matirx_mul_unit_io_matrixA_17_im),
    .io_matrixA_18_re(complex_matirx_mul_unit_io_matrixA_18_re),
    .io_matrixA_18_im(complex_matirx_mul_unit_io_matrixA_18_im),
    .io_matrixA_19_re(complex_matirx_mul_unit_io_matrixA_19_re),
    .io_matrixA_19_im(complex_matirx_mul_unit_io_matrixA_19_im),
    .io_matrixA_20_re(complex_matirx_mul_unit_io_matrixA_20_re),
    .io_matrixA_20_im(complex_matirx_mul_unit_io_matrixA_20_im),
    .io_matrixA_21_re(complex_matirx_mul_unit_io_matrixA_21_re),
    .io_matrixA_21_im(complex_matirx_mul_unit_io_matrixA_21_im),
    .io_matrixA_22_re(complex_matirx_mul_unit_io_matrixA_22_re),
    .io_matrixA_22_im(complex_matirx_mul_unit_io_matrixA_22_im),
    .io_matrixA_23_re(complex_matirx_mul_unit_io_matrixA_23_re),
    .io_matrixA_23_im(complex_matirx_mul_unit_io_matrixA_23_im),
    .io_matrixA_24_re(complex_matirx_mul_unit_io_matrixA_24_re),
    .io_matrixA_24_im(complex_matirx_mul_unit_io_matrixA_24_im),
    .io_matrixB_0_re(complex_matirx_mul_unit_io_matrixB_0_re),
    .io_matrixB_0_im(complex_matirx_mul_unit_io_matrixB_0_im),
    .io_matrixB_1_re(complex_matirx_mul_unit_io_matrixB_1_re),
    .io_matrixB_1_im(complex_matirx_mul_unit_io_matrixB_1_im),
    .io_matrixB_2_re(complex_matirx_mul_unit_io_matrixB_2_re),
    .io_matrixB_2_im(complex_matirx_mul_unit_io_matrixB_2_im),
    .io_matrixB_3_re(complex_matirx_mul_unit_io_matrixB_3_re),
    .io_matrixB_3_im(complex_matirx_mul_unit_io_matrixB_3_im),
    .io_matrixB_4_re(complex_matirx_mul_unit_io_matrixB_4_re),
    .io_matrixB_4_im(complex_matirx_mul_unit_io_matrixB_4_im),
    .io_matrixC_0_re(complex_matirx_mul_unit_io_matrixC_0_re),
    .io_matrixC_0_im(complex_matirx_mul_unit_io_matrixC_0_im),
    .io_matrixC_1_re(complex_matirx_mul_unit_io_matrixC_1_re),
    .io_matrixC_1_im(complex_matirx_mul_unit_io_matrixC_1_im),
    .io_matrixC_2_re(complex_matirx_mul_unit_io_matrixC_2_re),
    .io_matrixC_2_im(complex_matirx_mul_unit_io_matrixC_2_im),
    .io_matrixC_3_re(complex_matirx_mul_unit_io_matrixC_3_re),
    .io_matrixC_3_im(complex_matirx_mul_unit_io_matrixC_3_im),
    .io_matrixC_4_re(complex_matirx_mul_unit_io_matrixC_4_re),
    .io_matrixC_4_im(complex_matirx_mul_unit_io_matrixC_4_im),
    .io_valid(complex_matirx_mul_unit_io_valid)
  );
  cordic_complex_divide complex_divide_unit ( // @[Optimal_Weight_Vector.scala 39:58]
    .clock(complex_divide_unit_clock),
    .reset(complex_divide_unit_reset),
    .io_op2_re(complex_divide_unit_io_op2_re),
    .io_op2_im(complex_divide_unit_io_op2_im),
    .io_res_re(complex_divide_unit_io_res_re),
    .io_res_im(complex_divide_unit_io_res_im)
  );
  matirx_conjugate_transpose S_c_t_unit ( // @[Matirx_Conjugate_Transpose.scala 32:22]
    .io_matrixIn_0_re(S_c_t_unit_io_matrixIn_0_re),
    .io_matrixIn_0_im(S_c_t_unit_io_matrixIn_0_im),
    .io_matrixIn_1_re(S_c_t_unit_io_matrixIn_1_re),
    .io_matrixIn_1_im(S_c_t_unit_io_matrixIn_1_im),
    .io_matrixIn_2_re(S_c_t_unit_io_matrixIn_2_re),
    .io_matrixIn_2_im(S_c_t_unit_io_matrixIn_2_im),
    .io_matrixIn_3_re(S_c_t_unit_io_matrixIn_3_re),
    .io_matrixIn_3_im(S_c_t_unit_io_matrixIn_3_im),
    .io_matrixIn_4_re(S_c_t_unit_io_matrixIn_4_re),
    .io_matrixIn_4_im(S_c_t_unit_io_matrixIn_4_im),
    .io_matrixOut_0_re(S_c_t_unit_io_matrixOut_0_re),
    .io_matrixOut_0_im(S_c_t_unit_io_matrixOut_0_im),
    .io_matrixOut_1_re(S_c_t_unit_io_matrixOut_1_re),
    .io_matrixOut_1_im(S_c_t_unit_io_matrixOut_1_im),
    .io_matrixOut_2_re(S_c_t_unit_io_matrixOut_2_re),
    .io_matrixOut_2_im(S_c_t_unit_io_matrixOut_2_im),
    .io_matrixOut_3_re(S_c_t_unit_io_matrixOut_3_re),
    .io_matrixOut_3_im(S_c_t_unit_io_matrixOut_3_im),
    .io_matrixOut_4_re(S_c_t_unit_io_matrixOut_4_re),
    .io_matrixOut_4_im(S_c_t_unit_io_matrixOut_4_im)
  );
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
  assign io_matrixOut_0_re = io_matrixOut_0_mul_io_res_re; // @[Optimal_Weight_Vector.scala 121:21]
  assign io_matrixOut_0_im = io_matrixOut_0_mul_io_res_im; // @[Optimal_Weight_Vector.scala 121:21]
  assign io_matrixOut_1_re = io_matrixOut_1_mul_io_res_re; // @[Optimal_Weight_Vector.scala 121:21]
  assign io_matrixOut_1_im = io_matrixOut_1_mul_io_res_im; // @[Optimal_Weight_Vector.scala 121:21]
  assign io_matrixOut_2_re = io_matrixOut_2_mul_io_res_re; // @[Optimal_Weight_Vector.scala 121:21]
  assign io_matrixOut_2_im = io_matrixOut_2_mul_io_res_im; // @[Optimal_Weight_Vector.scala 121:21]
  assign io_matrixOut_3_re = io_matrixOut_3_mul_io_res_re; // @[Optimal_Weight_Vector.scala 121:21]
  assign io_matrixOut_3_im = io_matrixOut_3_mul_io_res_im; // @[Optimal_Weight_Vector.scala 121:21]
  assign io_matrixOut_4_re = io_matrixOut_4_mul_io_res_re; // @[Optimal_Weight_Vector.scala 121:21]
  assign io_matrixOut_4_im = io_matrixOut_4_mul_io_res_im; // @[Optimal_Weight_Vector.scala 121:21]
  assign io_valid = status > 8'h41; // @[Optimal_Weight_Vector.scala 114:15]
  assign io_debug_status = status; // @[Optimal_Weight_Vector.scala 124:19]
  assign io_debug_matrix_R_Comp_0_re = matrix_R_Comp_0_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_0_im = matrix_R_Comp_0_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_1_re = matrix_R_Comp_1_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_1_im = matrix_R_Comp_1_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_2_re = matrix_R_Comp_2_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_2_im = matrix_R_Comp_2_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_3_re = matrix_R_Comp_3_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_3_im = matrix_R_Comp_3_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_4_re = matrix_R_Comp_4_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_4_im = matrix_R_Comp_4_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_5_re = matrix_R_Comp_5_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_5_im = matrix_R_Comp_5_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_6_re = matrix_R_Comp_6_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_6_im = matrix_R_Comp_6_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_7_re = matrix_R_Comp_7_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_7_im = matrix_R_Comp_7_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_8_re = matrix_R_Comp_8_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_8_im = matrix_R_Comp_8_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_9_re = matrix_R_Comp_9_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_9_im = matrix_R_Comp_9_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_10_re = matrix_R_Comp_10_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_10_im = matrix_R_Comp_10_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_11_re = matrix_R_Comp_11_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_11_im = matrix_R_Comp_11_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_12_re = matrix_R_Comp_12_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_12_im = matrix_R_Comp_12_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_13_re = matrix_R_Comp_13_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_13_im = matrix_R_Comp_13_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_14_re = matrix_R_Comp_14_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_14_im = matrix_R_Comp_14_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_15_re = matrix_R_Comp_15_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_15_im = matrix_R_Comp_15_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_16_re = matrix_R_Comp_16_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_16_im = matrix_R_Comp_16_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_17_re = matrix_R_Comp_17_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_17_im = matrix_R_Comp_17_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_18_re = matrix_R_Comp_18_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_18_im = matrix_R_Comp_18_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_19_re = matrix_R_Comp_19_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_19_im = matrix_R_Comp_19_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_20_re = matrix_R_Comp_20_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_20_im = matrix_R_Comp_20_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_21_re = matrix_R_Comp_21_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_21_im = matrix_R_Comp_21_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_22_re = matrix_R_Comp_22_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_22_im = matrix_R_Comp_22_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_23_re = matrix_R_Comp_23_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_23_im = matrix_R_Comp_23_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_24_re = matrix_R_Comp_24_re; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_R_Comp_24_im = matrix_R_Comp_24_im; // @[Optimal_Weight_Vector.scala 52:26]
  assign io_debug_matrix_S_Comp_0_re = matrix_S_Comp_0_re; // @[Optimal_Weight_Vector.scala 53:26]
  assign io_debug_matrix_S_Comp_0_im = matrix_S_Comp_0_im; // @[Optimal_Weight_Vector.scala 53:26]
  assign io_debug_matrix_S_Comp_1_re = matrix_S_Comp_1_re; // @[Optimal_Weight_Vector.scala 53:26]
  assign io_debug_matrix_S_Comp_1_im = matrix_S_Comp_1_im; // @[Optimal_Weight_Vector.scala 53:26]
  assign io_debug_matrix_S_Comp_2_re = matrix_S_Comp_2_re; // @[Optimal_Weight_Vector.scala 53:26]
  assign io_debug_matrix_S_Comp_2_im = matrix_S_Comp_2_im; // @[Optimal_Weight_Vector.scala 53:26]
  assign io_debug_matrix_S_Comp_3_re = matrix_S_Comp_3_re; // @[Optimal_Weight_Vector.scala 53:26]
  assign io_debug_matrix_S_Comp_3_im = matrix_S_Comp_3_im; // @[Optimal_Weight_Vector.scala 53:26]
  assign io_debug_matrix_S_Comp_4_re = matrix_S_Comp_4_re; // @[Optimal_Weight_Vector.scala 53:26]
  assign io_debug_matrix_S_Comp_4_im = matrix_S_Comp_4_im; // @[Optimal_Weight_Vector.scala 53:26]
  assign io_debug_matrix_mul_re_0_re = complex_matirx_mul_unit_io_matrixC_0_re; // @[Optimal_Weight_Vector.scala 50:26]
  assign io_debug_matrix_mul_re_0_im = complex_matirx_mul_unit_io_matrixC_0_im; // @[Optimal_Weight_Vector.scala 50:26]
  assign io_debug_matrix_mul_re_1_re = complex_matirx_mul_unit_io_matrixC_1_re; // @[Optimal_Weight_Vector.scala 50:26]
  assign io_debug_matrix_mul_re_1_im = complex_matirx_mul_unit_io_matrixC_1_im; // @[Optimal_Weight_Vector.scala 50:26]
  assign io_debug_matrix_mul_re_2_re = complex_matirx_mul_unit_io_matrixC_2_re; // @[Optimal_Weight_Vector.scala 50:26]
  assign io_debug_matrix_mul_re_2_im = complex_matirx_mul_unit_io_matrixC_2_im; // @[Optimal_Weight_Vector.scala 50:26]
  assign io_debug_matrix_mul_re_3_re = complex_matirx_mul_unit_io_matrixC_3_re; // @[Optimal_Weight_Vector.scala 50:26]
  assign io_debug_matrix_mul_re_3_im = complex_matirx_mul_unit_io_matrixC_3_im; // @[Optimal_Weight_Vector.scala 50:26]
  assign io_debug_matrix_mul_re_4_re = complex_matirx_mul_unit_io_matrixC_4_re; // @[Optimal_Weight_Vector.scala 50:26]
  assign io_debug_matrix_mul_re_4_im = complex_matirx_mul_unit_io_matrixC_4_im; // @[Optimal_Weight_Vector.scala 50:26]
  assign io_debug_u_re = complex_matirx_mul_unit_io_matrixC_0_re; // @[Optimal_Weight_Vector.scala 51:14]
  assign io_debug_u_im = complex_matirx_mul_unit_io_matrixC_0_im; // @[Optimal_Weight_Vector.scala 51:14]
  assign io_debug_1_divide_u_re = complex_divide_unit_io_res_re; // @[Optimal_Weight_Vector.scala 125:23]
  assign io_debug_1_divide_u_im = complex_divide_unit_io_res_im; // @[Optimal_Weight_Vector.scala 125:23]
  assign io_debug_mul_valid = complex_matirx_mul_unit_io_valid; // @[Optimal_Weight_Vector.scala 54:22]
  assign complex_matirx_mul_unit_clock = clock;
  assign complex_matirx_mul_unit_io_reset = io_reset; // @[Optimal_Weight_Vector.scala 40:36]
  assign complex_matirx_mul_unit_io_ready = status == 8'h1 | _GEN_49; // @[Optimal_Weight_Vector.scala 75:26 77:40]
  assign complex_matirx_mul_unit_io_matrixA_0_re = status == 8'h1 ? $signed(matrix_R_Comp_0_re) : $signed(_GEN_25); // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_0_im = status == 8'h1 ? $signed(matrix_R_Comp_0_im) : $signed(_GEN_24); // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_1_re = status == 8'h1 ? $signed(matrix_R_Comp_1_re) : $signed(_GEN_29); // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_1_im = status == 8'h1 ? $signed(matrix_R_Comp_1_im) : $signed(_GEN_28); // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_2_re = status == 8'h1 ? $signed(matrix_R_Comp_2_re) : $signed(_GEN_33); // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_2_im = status == 8'h1 ? $signed(matrix_R_Comp_2_im) : $signed(_GEN_32); // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_3_re = status == 8'h1 ? $signed(matrix_R_Comp_3_re) : $signed(_GEN_37); // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_3_im = status == 8'h1 ? $signed(matrix_R_Comp_3_im) : $signed(_GEN_36); // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_4_re = status == 8'h1 ? $signed(matrix_R_Comp_4_re) : $signed(_GEN_41); // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_4_im = status == 8'h1 ? $signed(matrix_R_Comp_4_im) : $signed(_GEN_40); // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_5_re = matrix_R_Comp_5_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_5_im = matrix_R_Comp_5_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_6_re = matrix_R_Comp_6_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_6_im = matrix_R_Comp_6_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_7_re = matrix_R_Comp_7_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_7_im = matrix_R_Comp_7_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_8_re = matrix_R_Comp_8_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_8_im = matrix_R_Comp_8_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_9_re = matrix_R_Comp_9_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_9_im = matrix_R_Comp_9_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_10_re = matrix_R_Comp_10_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_10_im = matrix_R_Comp_10_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_11_re = matrix_R_Comp_11_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_11_im = matrix_R_Comp_11_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_12_re = matrix_R_Comp_12_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_12_im = matrix_R_Comp_12_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_13_re = matrix_R_Comp_13_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_13_im = matrix_R_Comp_13_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_14_re = matrix_R_Comp_14_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_14_im = matrix_R_Comp_14_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_15_re = matrix_R_Comp_15_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_15_im = matrix_R_Comp_15_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_16_re = matrix_R_Comp_16_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_16_im = matrix_R_Comp_16_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_17_re = matrix_R_Comp_17_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_17_im = matrix_R_Comp_17_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_18_re = matrix_R_Comp_18_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_18_im = matrix_R_Comp_18_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_19_re = matrix_R_Comp_19_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_19_im = matrix_R_Comp_19_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_20_re = matrix_R_Comp_20_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_20_im = matrix_R_Comp_20_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_21_re = matrix_R_Comp_21_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_21_im = matrix_R_Comp_21_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_22_re = matrix_R_Comp_22_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_22_im = matrix_R_Comp_22_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_23_re = matrix_R_Comp_23_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_23_im = matrix_R_Comp_23_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_24_re = matrix_R_Comp_24_re; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixA_24_im = matrix_R_Comp_24_im; // @[Optimal_Weight_Vector.scala 75:26 78:42]
  assign complex_matirx_mul_unit_io_matrixB_0_re = status == 8'h1 ? $signed(matrix_S_Comp_0_re) : $signed(
    matrix_R_Comp_0_re); // @[Optimal_Weight_Vector.scala 75:26 79:42]
  assign complex_matirx_mul_unit_io_matrixB_0_im = status == 8'h1 ? $signed(matrix_S_Comp_0_im) : $signed(
    matrix_R_Comp_0_im); // @[Optimal_Weight_Vector.scala 75:26 79:42]
  assign complex_matirx_mul_unit_io_matrixB_1_re = status == 8'h1 ? $signed(matrix_S_Comp_1_re) : $signed(
    matrix_R_Comp_1_re); // @[Optimal_Weight_Vector.scala 75:26 79:42]
  assign complex_matirx_mul_unit_io_matrixB_1_im = status == 8'h1 ? $signed(matrix_S_Comp_1_im) : $signed(
    matrix_R_Comp_1_im); // @[Optimal_Weight_Vector.scala 75:26 79:42]
  assign complex_matirx_mul_unit_io_matrixB_2_re = status == 8'h1 ? $signed(matrix_S_Comp_2_re) : $signed(
    matrix_R_Comp_2_re); // @[Optimal_Weight_Vector.scala 75:26 79:42]
  assign complex_matirx_mul_unit_io_matrixB_2_im = status == 8'h1 ? $signed(matrix_S_Comp_2_im) : $signed(
    matrix_R_Comp_2_im); // @[Optimal_Weight_Vector.scala 75:26 79:42]
  assign complex_matirx_mul_unit_io_matrixB_3_re = status == 8'h1 ? $signed(matrix_S_Comp_3_re) : $signed(
    matrix_R_Comp_3_re); // @[Optimal_Weight_Vector.scala 75:26 79:42]
  assign complex_matirx_mul_unit_io_matrixB_3_im = status == 8'h1 ? $signed(matrix_S_Comp_3_im) : $signed(
    matrix_R_Comp_3_im); // @[Optimal_Weight_Vector.scala 75:26 79:42]
  assign complex_matirx_mul_unit_io_matrixB_4_re = status == 8'h1 ? $signed(matrix_S_Comp_4_re) : $signed(
    matrix_R_Comp_4_re); // @[Optimal_Weight_Vector.scala 75:26 79:42]
  assign complex_matirx_mul_unit_io_matrixB_4_im = status == 8'h1 ? $signed(matrix_S_Comp_4_im) : $signed(
    matrix_R_Comp_4_im); // @[Optimal_Weight_Vector.scala 75:26 79:42]
  assign complex_divide_unit_clock = clock;
  assign complex_divide_unit_reset = reset;
  assign complex_divide_unit_io_op2_re = io_reset ? $signed(64'sh40000000) : $signed(_GEN_286); // @[Optimal_Weight_Vector.scala 56:18 46:33]
  assign complex_divide_unit_io_op2_im = io_reset ? $signed(64'sh40000000) : $signed(_GEN_285); // @[Optimal_Weight_Vector.scala 56:18 47:33]
  assign S_c_t_unit_io_matrixIn_0_re = matrix_S_Comp_0_re; // @[Matirx_Conjugate_Transpose.scala 33:22]
  assign S_c_t_unit_io_matrixIn_0_im = matrix_S_Comp_0_im; // @[Matirx_Conjugate_Transpose.scala 33:22]
  assign S_c_t_unit_io_matrixIn_1_re = matrix_S_Comp_1_re; // @[Matirx_Conjugate_Transpose.scala 33:22]
  assign S_c_t_unit_io_matrixIn_1_im = matrix_S_Comp_1_im; // @[Matirx_Conjugate_Transpose.scala 33:22]
  assign S_c_t_unit_io_matrixIn_2_re = matrix_S_Comp_2_re; // @[Matirx_Conjugate_Transpose.scala 33:22]
  assign S_c_t_unit_io_matrixIn_2_im = matrix_S_Comp_2_im; // @[Matirx_Conjugate_Transpose.scala 33:22]
  assign S_c_t_unit_io_matrixIn_3_re = matrix_S_Comp_3_re; // @[Matirx_Conjugate_Transpose.scala 33:22]
  assign S_c_t_unit_io_matrixIn_3_im = matrix_S_Comp_3_im; // @[Matirx_Conjugate_Transpose.scala 33:22]
  assign S_c_t_unit_io_matrixIn_4_re = matrix_S_Comp_4_re; // @[Matirx_Conjugate_Transpose.scala 33:22]
  assign S_c_t_unit_io_matrixIn_4_im = matrix_S_Comp_4_im; // @[Matirx_Conjugate_Transpose.scala 33:22]
  assign io_matrixOut_0_mul_io_op1_re = complex_divide_unit_io_res_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_0_mul_io_op1_im = complex_divide_unit_io_res_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_0_mul_io_op2_re = matrix_R_Comp_0_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_0_mul_io_op2_im = matrix_R_Comp_0_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_1_mul_io_op1_re = complex_divide_unit_io_res_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_1_mul_io_op1_im = complex_divide_unit_io_res_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_1_mul_io_op2_re = matrix_R_Comp_1_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_1_mul_io_op2_im = matrix_R_Comp_1_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_2_mul_io_op1_re = complex_divide_unit_io_res_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_2_mul_io_op1_im = complex_divide_unit_io_res_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_2_mul_io_op2_re = matrix_R_Comp_2_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_2_mul_io_op2_im = matrix_R_Comp_2_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_3_mul_io_op1_re = complex_divide_unit_io_res_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_3_mul_io_op1_im = complex_divide_unit_io_res_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_3_mul_io_op2_re = matrix_R_Comp_3_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_3_mul_io_op2_im = matrix_R_Comp_3_im; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_4_mul_io_op1_re = complex_divide_unit_io_res_re; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_4_mul_io_op1_im = complex_divide_unit_io_res_im; // @[Complex_Operater.scala 48:16]
  assign io_matrixOut_4_mul_io_op2_re = matrix_R_Comp_4_re; // @[Complex_Operater.scala 49:16]
  assign io_matrixOut_4_mul_io_op2_im = matrix_R_Comp_4_im; // @[Complex_Operater.scala 49:16]
  always @(posedge clock) begin
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_0_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_0_re <= io_matrixR_Inv_0_re; // @[Optimal_Weight_Vector.scala 71:19]
    end else if (!(status == 8'h1)) begin // @[Optimal_Weight_Vector.scala 75:26]
      if (status == 8'h2) begin // @[Optimal_Weight_Vector.scala 81:32]
        matrix_R_Comp_0_re <= _GEN_1;
      end
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_0_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_0_im <= io_matrixR_Inv_0_im; // @[Optimal_Weight_Vector.scala 71:19]
    end else if (!(status == 8'h1)) begin // @[Optimal_Weight_Vector.scala 75:26]
      if (status == 8'h2) begin // @[Optimal_Weight_Vector.scala 81:32]
        matrix_R_Comp_0_im <= _GEN_0;
      end
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_1_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_1_re <= io_matrixR_Inv_1_re; // @[Optimal_Weight_Vector.scala 71:19]
    end else if (!(status == 8'h1)) begin // @[Optimal_Weight_Vector.scala 75:26]
      if (status == 8'h2) begin // @[Optimal_Weight_Vector.scala 81:32]
        matrix_R_Comp_1_re <= _GEN_3;
      end
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_1_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_1_im <= io_matrixR_Inv_1_im; // @[Optimal_Weight_Vector.scala 71:19]
    end else if (!(status == 8'h1)) begin // @[Optimal_Weight_Vector.scala 75:26]
      if (status == 8'h2) begin // @[Optimal_Weight_Vector.scala 81:32]
        matrix_R_Comp_1_im <= _GEN_2;
      end
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_2_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_2_re <= io_matrixR_Inv_2_re; // @[Optimal_Weight_Vector.scala 71:19]
    end else if (!(status == 8'h1)) begin // @[Optimal_Weight_Vector.scala 75:26]
      if (status == 8'h2) begin // @[Optimal_Weight_Vector.scala 81:32]
        matrix_R_Comp_2_re <= _GEN_5;
      end
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_2_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_2_im <= io_matrixR_Inv_2_im; // @[Optimal_Weight_Vector.scala 71:19]
    end else if (!(status == 8'h1)) begin // @[Optimal_Weight_Vector.scala 75:26]
      if (status == 8'h2) begin // @[Optimal_Weight_Vector.scala 81:32]
        matrix_R_Comp_2_im <= _GEN_4;
      end
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_3_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_3_re <= io_matrixR_Inv_3_re; // @[Optimal_Weight_Vector.scala 71:19]
    end else if (!(status == 8'h1)) begin // @[Optimal_Weight_Vector.scala 75:26]
      if (status == 8'h2) begin // @[Optimal_Weight_Vector.scala 81:32]
        matrix_R_Comp_3_re <= _GEN_7;
      end
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_3_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_3_im <= io_matrixR_Inv_3_im; // @[Optimal_Weight_Vector.scala 71:19]
    end else if (!(status == 8'h1)) begin // @[Optimal_Weight_Vector.scala 75:26]
      if (status == 8'h2) begin // @[Optimal_Weight_Vector.scala 81:32]
        matrix_R_Comp_3_im <= _GEN_6;
      end
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_4_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_4_re <= io_matrixR_Inv_4_re; // @[Optimal_Weight_Vector.scala 71:19]
    end else if (!(status == 8'h1)) begin // @[Optimal_Weight_Vector.scala 75:26]
      if (status == 8'h2) begin // @[Optimal_Weight_Vector.scala 81:32]
        matrix_R_Comp_4_re <= _GEN_9;
      end
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_4_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_4_im <= io_matrixR_Inv_4_im; // @[Optimal_Weight_Vector.scala 71:19]
    end else if (!(status == 8'h1)) begin // @[Optimal_Weight_Vector.scala 75:26]
      if (status == 8'h2) begin // @[Optimal_Weight_Vector.scala 81:32]
        matrix_R_Comp_4_im <= _GEN_8;
      end
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_5_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_5_re <= io_matrixR_Inv_5_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_5_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_5_im <= io_matrixR_Inv_5_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_6_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_6_re <= io_matrixR_Inv_6_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_6_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_6_im <= io_matrixR_Inv_6_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_7_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_7_re <= io_matrixR_Inv_7_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_7_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_7_im <= io_matrixR_Inv_7_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_8_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_8_re <= io_matrixR_Inv_8_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_8_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_8_im <= io_matrixR_Inv_8_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_9_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_9_re <= io_matrixR_Inv_9_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_9_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_9_im <= io_matrixR_Inv_9_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_10_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_10_re <= io_matrixR_Inv_10_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_10_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_10_im <= io_matrixR_Inv_10_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_11_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_11_re <= io_matrixR_Inv_11_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_11_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_11_im <= io_matrixR_Inv_11_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_12_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_12_re <= io_matrixR_Inv_12_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_12_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_12_im <= io_matrixR_Inv_12_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_13_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_13_re <= io_matrixR_Inv_13_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_13_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_13_im <= io_matrixR_Inv_13_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_14_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_14_re <= io_matrixR_Inv_14_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_14_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_14_im <= io_matrixR_Inv_14_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_15_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_15_re <= io_matrixR_Inv_15_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_15_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_15_im <= io_matrixR_Inv_15_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_16_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_16_re <= io_matrixR_Inv_16_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_16_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_16_im <= io_matrixR_Inv_16_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_17_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_17_re <= io_matrixR_Inv_17_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_17_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_17_im <= io_matrixR_Inv_17_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_18_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_18_re <= io_matrixR_Inv_18_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_18_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_18_im <= io_matrixR_Inv_18_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_19_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_19_re <= io_matrixR_Inv_19_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_19_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_19_im <= io_matrixR_Inv_19_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_20_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_20_re <= io_matrixR_Inv_20_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_20_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_20_im <= io_matrixR_Inv_20_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_21_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_21_re <= io_matrixR_Inv_21_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_21_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_21_im <= io_matrixR_Inv_21_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_22_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_22_re <= io_matrixR_Inv_22_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_22_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_22_im <= io_matrixR_Inv_22_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_23_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_23_re <= io_matrixR_Inv_23_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_23_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_23_im <= io_matrixR_Inv_23_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_24_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 59:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_24_re <= io_matrixR_Inv_24_re; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_R_Comp_24_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 60:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_R_Comp_24_im <= io_matrixR_Inv_24_im; // @[Optimal_Weight_Vector.scala 71:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_S_Comp_0_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 63:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_S_Comp_0_re <= io_matrixS_0_re; // @[Optimal_Weight_Vector.scala 72:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_S_Comp_0_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 64:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_S_Comp_0_im <= io_matrixS_0_im; // @[Optimal_Weight_Vector.scala 72:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_S_Comp_1_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 63:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_S_Comp_1_re <= io_matrixS_1_re; // @[Optimal_Weight_Vector.scala 72:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_S_Comp_1_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 64:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_S_Comp_1_im <= io_matrixS_1_im; // @[Optimal_Weight_Vector.scala 72:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_S_Comp_2_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 63:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_S_Comp_2_re <= io_matrixS_2_re; // @[Optimal_Weight_Vector.scala 72:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_S_Comp_2_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 64:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_S_Comp_2_im <= io_matrixS_2_im; // @[Optimal_Weight_Vector.scala 72:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_S_Comp_3_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 63:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_S_Comp_3_re <= io_matrixS_3_re; // @[Optimal_Weight_Vector.scala 72:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_S_Comp_3_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 64:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_S_Comp_3_im <= io_matrixS_3_im; // @[Optimal_Weight_Vector.scala 72:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_S_Comp_4_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 63:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_S_Comp_4_re <= io_matrixS_4_re; // @[Optimal_Weight_Vector.scala 72:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      matrix_S_Comp_4_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 64:27]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      matrix_S_Comp_4_im <= io_matrixS_4_im; // @[Optimal_Weight_Vector.scala 72:19]
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      u_re <= 64'sh0; // @[Optimal_Weight_Vector.scala 66:10]
    end else if (!(io_ready)) begin // @[Optimal_Weight_Vector.scala 69:24]
      if (!(status == 8'h1)) begin // @[Optimal_Weight_Vector.scala 75:26]
        if (!(status == 8'h2)) begin // @[Optimal_Weight_Vector.scala 81:32]
          u_re <= _GEN_46;
        end
      end
    end
    if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      u_im <= 64'sh0; // @[Optimal_Weight_Vector.scala 67:10]
    end else if (!(io_ready)) begin // @[Optimal_Weight_Vector.scala 69:24]
      if (!(status == 8'h1)) begin // @[Optimal_Weight_Vector.scala 75:26]
        if (!(status == 8'h2)) begin // @[Optimal_Weight_Vector.scala 81:32]
          u_im <= _GEN_45;
        end
      end
    end
    if (reset) begin // @[Optimal_Weight_Vector.scala 36:29]
      status <= 8'h0; // @[Optimal_Weight_Vector.scala 36:29]
    end else if (io_reset) begin // @[Optimal_Weight_Vector.scala 56:18]
      status <= 8'h0; // @[Optimal_Weight_Vector.scala 68:12]
    end else if (io_ready) begin // @[Optimal_Weight_Vector.scala 69:24]
      status <= 8'h1; // @[Optimal_Weight_Vector.scala 73:12]
    end else if (status == 8'h1) begin // @[Optimal_Weight_Vector.scala 75:26]
      status <= _status_T_1; // @[Optimal_Weight_Vector.scala 80:14]
    end else begin
      status <= _GEN_60;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  matrix_R_Comp_0_re = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  matrix_R_Comp_0_im = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  matrix_R_Comp_1_re = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  matrix_R_Comp_1_im = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  matrix_R_Comp_2_re = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  matrix_R_Comp_2_im = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  matrix_R_Comp_3_re = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  matrix_R_Comp_3_im = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  matrix_R_Comp_4_re = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  matrix_R_Comp_4_im = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  matrix_R_Comp_5_re = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  matrix_R_Comp_5_im = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  matrix_R_Comp_6_re = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  matrix_R_Comp_6_im = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  matrix_R_Comp_7_re = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  matrix_R_Comp_7_im = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  matrix_R_Comp_8_re = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  matrix_R_Comp_8_im = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  matrix_R_Comp_9_re = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  matrix_R_Comp_9_im = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  matrix_R_Comp_10_re = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  matrix_R_Comp_10_im = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  matrix_R_Comp_11_re = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  matrix_R_Comp_11_im = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  matrix_R_Comp_12_re = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  matrix_R_Comp_12_im = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  matrix_R_Comp_13_re = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  matrix_R_Comp_13_im = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  matrix_R_Comp_14_re = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  matrix_R_Comp_14_im = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  matrix_R_Comp_15_re = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  matrix_R_Comp_15_im = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  matrix_R_Comp_16_re = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  matrix_R_Comp_16_im = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  matrix_R_Comp_17_re = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  matrix_R_Comp_17_im = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  matrix_R_Comp_18_re = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  matrix_R_Comp_18_im = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  matrix_R_Comp_19_re = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  matrix_R_Comp_19_im = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  matrix_R_Comp_20_re = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  matrix_R_Comp_20_im = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  matrix_R_Comp_21_re = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  matrix_R_Comp_21_im = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  matrix_R_Comp_22_re = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  matrix_R_Comp_22_im = _RAND_45[63:0];
  _RAND_46 = {2{`RANDOM}};
  matrix_R_Comp_23_re = _RAND_46[63:0];
  _RAND_47 = {2{`RANDOM}};
  matrix_R_Comp_23_im = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  matrix_R_Comp_24_re = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  matrix_R_Comp_24_im = _RAND_49[63:0];
  _RAND_50 = {2{`RANDOM}};
  matrix_S_Comp_0_re = _RAND_50[63:0];
  _RAND_51 = {2{`RANDOM}};
  matrix_S_Comp_0_im = _RAND_51[63:0];
  _RAND_52 = {2{`RANDOM}};
  matrix_S_Comp_1_re = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  matrix_S_Comp_1_im = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  matrix_S_Comp_2_re = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  matrix_S_Comp_2_im = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  matrix_S_Comp_3_re = _RAND_56[63:0];
  _RAND_57 = {2{`RANDOM}};
  matrix_S_Comp_3_im = _RAND_57[63:0];
  _RAND_58 = {2{`RANDOM}};
  matrix_S_Comp_4_re = _RAND_58[63:0];
  _RAND_59 = {2{`RANDOM}};
  matrix_S_Comp_4_im = _RAND_59[63:0];
  _RAND_60 = {2{`RANDOM}};
  u_re = _RAND_60[63:0];
  _RAND_61 = {2{`RANDOM}};
  u_im = _RAND_61[63:0];
  _RAND_62 = {1{`RANDOM}};
  status = _RAND_62[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
