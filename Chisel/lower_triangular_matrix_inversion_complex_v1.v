module PE_FixedPoint(
  input         clock,
  input         io_reset,
  input  [63:0] io_in_x,
  input  [63:0] io_in_y,
  output [63:0] io_out_pe,
  output [63:0] io_out_x,
  output [63:0] io_out_y
);
`ifdef RANDOMIZE_REG_INIT
  reg [63:0] _RAND_0;
  reg [63:0] _RAND_1;
  reg [63:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] pe_reg; // @[Matrix_FixedPoint_Mul.scala 29:31]
  reg [63:0] x_reg; // @[Matrix_FixedPoint_Mul.scala 30:30]
  reg [63:0] y_reg; // @[Matrix_FixedPoint_Mul.scala 31:30]
  wire [127:0] _pe_reg_T = $signed(io_in_x) * $signed(io_in_y); // @[Matrix_FixedPoint_Mul.scala 40:32]
  wire [83:0] _GEN_3 = {$signed(pe_reg), 20'h0}; // @[Matrix_FixedPoint_Mul.scala 40:22]
  wire [127:0] _GEN_4 = {{44{_GEN_3[83]}},_GEN_3}; // @[Matrix_FixedPoint_Mul.scala 40:22]
  wire [127:0] _pe_reg_T_3 = $signed(_GEN_4) + $signed(_pe_reg_T); // @[Matrix_FixedPoint_Mul.scala 40:22]
  wire [127:0] _GEN_0 = io_reset ? $signed(128'sh0) : $signed(_pe_reg_T_3); // @[Matrix_FixedPoint_Mul.scala 33:18 35:12 40:12]
  wire [107:0] _GEN_5 = _GEN_0[127:20];
  assign io_out_pe = pe_reg; // @[Matrix_FixedPoint_Mul.scala 47:13]
  assign io_out_x = x_reg; // @[Matrix_FixedPoint_Mul.scala 48:12]
  assign io_out_y = y_reg; // @[Matrix_FixedPoint_Mul.scala 49:12]
  always @(posedge clock) begin
    pe_reg <= _GEN_5[63:0];
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 33:18]
      x_reg <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 36:11]
    end else begin
      x_reg <= io_in_x; // @[Matrix_FixedPoint_Mul.scala 42:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 33:18]
      y_reg <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 37:11]
    end else begin
      y_reg <= io_in_y; // @[Matrix_FixedPoint_Mul.scala 43:11]
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
  pe_reg = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  x_reg = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  y_reg = _RAND_2[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module matrix_fixedPoint_mul(
  input         clock,
  input         io_reset,
  input         io_ready,
  input  [63:0] io_matrixA_0,
  input  [63:0] io_matrixA_4,
  input  [63:0] io_matrixA_5,
  input  [63:0] io_matrixA_8,
  input  [63:0] io_matrixA_9,
  input  [63:0] io_matrixA_10,
  input  [63:0] io_matrixA_12,
  input  [63:0] io_matrixA_13,
  input  [63:0] io_matrixA_14,
  input  [63:0] io_matrixA_15,
  input  [63:0] io_matrixB_0,
  input  [63:0] io_matrixB_4,
  input  [63:0] io_matrixB_5,
  input  [63:0] io_matrixB_8,
  input  [63:0] io_matrixB_9,
  input  [63:0] io_matrixB_10,
  input  [63:0] io_matrixB_12,
  input  [63:0] io_matrixB_13,
  input  [63:0] io_matrixB_14,
  input  [63:0] io_matrixB_15,
  output [63:0] io_matrixC_0,
  output [63:0] io_matrixC_4,
  output [63:0] io_matrixC_5,
  output [63:0] io_matrixC_8,
  output [63:0] io_matrixC_9,
  output [63:0] io_matrixC_10,
  output [63:0] io_matrixC_12,
  output [63:0] io_matrixC_13,
  output [63:0] io_matrixC_14,
  output [63:0] io_matrixC_15,
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
  reg [31:0] _RAND_20;
`endif // RANDOMIZE_REG_INIT
  wire  PE_FixedPoint_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_1_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_1_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_1_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_1_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_1_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_1_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_1_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_2_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_2_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_2_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_2_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_2_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_2_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_2_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_3_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_3_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_3_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_3_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_3_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_3_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_3_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_4_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_4_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_4_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_4_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_4_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_4_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_4_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_5_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_5_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_5_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_5_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_5_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_5_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_5_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_6_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_6_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_6_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_6_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_6_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_6_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_6_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_7_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_7_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_7_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_7_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_7_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_7_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_7_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_8_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_8_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_8_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_8_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_8_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_8_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_8_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_9_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_9_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_9_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_9_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_9_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_9_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_9_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_10_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_10_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_10_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_10_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_10_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_10_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_10_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_11_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_11_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_11_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_11_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_11_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_11_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_11_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_12_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_12_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_12_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_12_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_12_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_12_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_12_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_13_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_13_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_13_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_13_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_13_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_13_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_13_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_14_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_14_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_14_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_14_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_14_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_14_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_14_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_15_clock; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire  PE_FixedPoint_15_io_reset; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_15_io_in_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_15_io_in_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_15_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_15_io_out_x; // @[Matrix_FixedPoint_Mul.scala 83:35]
  wire [63:0] PE_FixedPoint_15_io_out_y; // @[Matrix_FixedPoint_Mul.scala 83:35]
  reg [63:0] regsA_0; // @[Matrix_FixedPoint_Mul.scala 79:35]
  reg [63:0] regsA_4; // @[Matrix_FixedPoint_Mul.scala 79:35]
  reg [63:0] regsA_5; // @[Matrix_FixedPoint_Mul.scala 79:35]
  reg [63:0] regsA_8; // @[Matrix_FixedPoint_Mul.scala 79:35]
  reg [63:0] regsA_9; // @[Matrix_FixedPoint_Mul.scala 79:35]
  reg [63:0] regsA_10; // @[Matrix_FixedPoint_Mul.scala 79:35]
  reg [63:0] regsA_12; // @[Matrix_FixedPoint_Mul.scala 79:35]
  reg [63:0] regsA_13; // @[Matrix_FixedPoint_Mul.scala 79:35]
  reg [63:0] regsA_14; // @[Matrix_FixedPoint_Mul.scala 79:35]
  reg [63:0] regsA_15; // @[Matrix_FixedPoint_Mul.scala 79:35]
  reg [63:0] regsB_0; // @[Matrix_FixedPoint_Mul.scala 80:35]
  reg [63:0] regsB_4; // @[Matrix_FixedPoint_Mul.scala 80:35]
  reg [63:0] regsB_5; // @[Matrix_FixedPoint_Mul.scala 80:35]
  reg [63:0] regsB_8; // @[Matrix_FixedPoint_Mul.scala 80:35]
  reg [63:0] regsB_9; // @[Matrix_FixedPoint_Mul.scala 80:35]
  reg [63:0] regsB_10; // @[Matrix_FixedPoint_Mul.scala 80:35]
  reg [63:0] regsB_12; // @[Matrix_FixedPoint_Mul.scala 80:35]
  reg [63:0] regsB_13; // @[Matrix_FixedPoint_Mul.scala 80:35]
  reg [63:0] regsB_14; // @[Matrix_FixedPoint_Mul.scala 80:35]
  reg [63:0] regsB_15; // @[Matrix_FixedPoint_Mul.scala 80:35]
  reg [4:0] input_point; // @[Matrix_FixedPoint_Mul.scala 81:30]
  wire [4:0] _input_point_T_1 = input_point + 5'h1; // @[Matrix_FixedPoint_Mul.scala 110:32]
  wire  _T = input_point < 5'h7; // @[Matrix_FixedPoint_Mul.scala 137:20]
  wire [3:0] _T_1 = 1'h0 * 3'h7; // @[Matrix_FixedPoint_Mul.scala 140:44]
  wire [4:0] _GEN_301 = {{1'd0}, _T_1}; // @[Matrix_FixedPoint_Mul.scala 140:60]
  wire [4:0] _T_3 = _GEN_301 + input_point; // @[Matrix_FixedPoint_Mul.scala 140:60]
  wire [63:0] _GEN_69 = 5'h1 == _T_3 ? $signed(64'sh0) : $signed(regsA_0); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_70 = 5'h2 == _T_3 ? $signed(64'sh0) : $signed(_GEN_69); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_71 = 5'h3 == _T_3 ? $signed(64'sh0) : $signed(_GEN_70); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_72 = 5'h4 == _T_3 ? $signed(64'sh0) : $signed(_GEN_71); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_73 = 5'h5 == _T_3 ? $signed(64'sh0) : $signed(_GEN_72); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_74 = 5'h6 == _T_3 ? $signed(64'sh0) : $signed(_GEN_73); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_75 = 5'h7 == _T_3 ? $signed(64'sh0) : $signed(_GEN_74); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_76 = 5'h8 == _T_3 ? $signed(regsA_4) : $signed(_GEN_75); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_77 = 5'h9 == _T_3 ? $signed(regsA_5) : $signed(_GEN_76); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_78 = 5'ha == _T_3 ? $signed(64'sh0) : $signed(_GEN_77); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_79 = 5'hb == _T_3 ? $signed(64'sh0) : $signed(_GEN_78); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_80 = 5'hc == _T_3 ? $signed(64'sh0) : $signed(_GEN_79); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_81 = 5'hd == _T_3 ? $signed(64'sh0) : $signed(_GEN_80); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_82 = 5'he == _T_3 ? $signed(64'sh0) : $signed(_GEN_81); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_83 = 5'hf == _T_3 ? $signed(64'sh0) : $signed(_GEN_82); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_84 = 5'h10 == _T_3 ? $signed(regsA_8) : $signed(_GEN_83); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_85 = 5'h11 == _T_3 ? $signed(regsA_9) : $signed(_GEN_84); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_86 = 5'h12 == _T_3 ? $signed(regsA_10) : $signed(_GEN_85); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_87 = 5'h13 == _T_3 ? $signed(64'sh0) : $signed(_GEN_86); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_88 = 5'h14 == _T_3 ? $signed(64'sh0) : $signed(_GEN_87); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_89 = 5'h15 == _T_3 ? $signed(64'sh0) : $signed(_GEN_88); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_90 = 5'h16 == _T_3 ? $signed(64'sh0) : $signed(_GEN_89); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_91 = 5'h17 == _T_3 ? $signed(64'sh0) : $signed(_GEN_90); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_92 = 5'h18 == _T_3 ? $signed(regsA_12) : $signed(_GEN_91); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_93 = 5'h19 == _T_3 ? $signed(regsA_13) : $signed(_GEN_92); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_94 = 5'h1a == _T_3 ? $signed(regsA_14) : $signed(_GEN_93); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_95 = 5'h1b == _T_3 ? $signed(regsA_15) : $signed(_GEN_94); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [3:0] _T_4 = 1'h1 * 3'h7; // @[Matrix_FixedPoint_Mul.scala 140:44]
  wire [4:0] _GEN_302 = {{1'd0}, _T_4}; // @[Matrix_FixedPoint_Mul.scala 140:60]
  wire [4:0] _T_6 = _GEN_302 + input_point; // @[Matrix_FixedPoint_Mul.scala 140:60]
  wire [63:0] _GEN_97 = 5'h1 == _T_6 ? $signed(64'sh0) : $signed(regsA_0); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_98 = 5'h2 == _T_6 ? $signed(64'sh0) : $signed(_GEN_97); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_99 = 5'h3 == _T_6 ? $signed(64'sh0) : $signed(_GEN_98); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_100 = 5'h4 == _T_6 ? $signed(64'sh0) : $signed(_GEN_99); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_101 = 5'h5 == _T_6 ? $signed(64'sh0) : $signed(_GEN_100); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_102 = 5'h6 == _T_6 ? $signed(64'sh0) : $signed(_GEN_101); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_103 = 5'h7 == _T_6 ? $signed(64'sh0) : $signed(_GEN_102); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_104 = 5'h8 == _T_6 ? $signed(regsA_4) : $signed(_GEN_103); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_105 = 5'h9 == _T_6 ? $signed(regsA_5) : $signed(_GEN_104); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_106 = 5'ha == _T_6 ? $signed(64'sh0) : $signed(_GEN_105); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_107 = 5'hb == _T_6 ? $signed(64'sh0) : $signed(_GEN_106); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_108 = 5'hc == _T_6 ? $signed(64'sh0) : $signed(_GEN_107); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_109 = 5'hd == _T_6 ? $signed(64'sh0) : $signed(_GEN_108); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_110 = 5'he == _T_6 ? $signed(64'sh0) : $signed(_GEN_109); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_111 = 5'hf == _T_6 ? $signed(64'sh0) : $signed(_GEN_110); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_112 = 5'h10 == _T_6 ? $signed(regsA_8) : $signed(_GEN_111); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_113 = 5'h11 == _T_6 ? $signed(regsA_9) : $signed(_GEN_112); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_114 = 5'h12 == _T_6 ? $signed(regsA_10) : $signed(_GEN_113); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_115 = 5'h13 == _T_6 ? $signed(64'sh0) : $signed(_GEN_114); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_116 = 5'h14 == _T_6 ? $signed(64'sh0) : $signed(_GEN_115); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_117 = 5'h15 == _T_6 ? $signed(64'sh0) : $signed(_GEN_116); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_118 = 5'h16 == _T_6 ? $signed(64'sh0) : $signed(_GEN_117); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_119 = 5'h17 == _T_6 ? $signed(64'sh0) : $signed(_GEN_118); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_120 = 5'h18 == _T_6 ? $signed(regsA_12) : $signed(_GEN_119); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_121 = 5'h19 == _T_6 ? $signed(regsA_13) : $signed(_GEN_120); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_122 = 5'h1a == _T_6 ? $signed(regsA_14) : $signed(_GEN_121); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_123 = 5'h1b == _T_6 ? $signed(regsA_15) : $signed(_GEN_122); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [4:0] _T_7 = 2'h2 * 3'h7; // @[Matrix_FixedPoint_Mul.scala 140:44]
  wire [4:0] _T_9 = _T_7 + input_point; // @[Matrix_FixedPoint_Mul.scala 140:60]
  wire [63:0] _GEN_125 = 5'h1 == _T_9 ? $signed(64'sh0) : $signed(regsA_0); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_126 = 5'h2 == _T_9 ? $signed(64'sh0) : $signed(_GEN_125); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_127 = 5'h3 == _T_9 ? $signed(64'sh0) : $signed(_GEN_126); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_128 = 5'h4 == _T_9 ? $signed(64'sh0) : $signed(_GEN_127); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_129 = 5'h5 == _T_9 ? $signed(64'sh0) : $signed(_GEN_128); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_130 = 5'h6 == _T_9 ? $signed(64'sh0) : $signed(_GEN_129); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_131 = 5'h7 == _T_9 ? $signed(64'sh0) : $signed(_GEN_130); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_132 = 5'h8 == _T_9 ? $signed(regsA_4) : $signed(_GEN_131); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_133 = 5'h9 == _T_9 ? $signed(regsA_5) : $signed(_GEN_132); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_134 = 5'ha == _T_9 ? $signed(64'sh0) : $signed(_GEN_133); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_135 = 5'hb == _T_9 ? $signed(64'sh0) : $signed(_GEN_134); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_136 = 5'hc == _T_9 ? $signed(64'sh0) : $signed(_GEN_135); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_137 = 5'hd == _T_9 ? $signed(64'sh0) : $signed(_GEN_136); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_138 = 5'he == _T_9 ? $signed(64'sh0) : $signed(_GEN_137); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_139 = 5'hf == _T_9 ? $signed(64'sh0) : $signed(_GEN_138); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_140 = 5'h10 == _T_9 ? $signed(regsA_8) : $signed(_GEN_139); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_141 = 5'h11 == _T_9 ? $signed(regsA_9) : $signed(_GEN_140); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_142 = 5'h12 == _T_9 ? $signed(regsA_10) : $signed(_GEN_141); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_143 = 5'h13 == _T_9 ? $signed(64'sh0) : $signed(_GEN_142); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_144 = 5'h14 == _T_9 ? $signed(64'sh0) : $signed(_GEN_143); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_145 = 5'h15 == _T_9 ? $signed(64'sh0) : $signed(_GEN_144); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_146 = 5'h16 == _T_9 ? $signed(64'sh0) : $signed(_GEN_145); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_147 = 5'h17 == _T_9 ? $signed(64'sh0) : $signed(_GEN_146); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_148 = 5'h18 == _T_9 ? $signed(regsA_12) : $signed(_GEN_147); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_149 = 5'h19 == _T_9 ? $signed(regsA_13) : $signed(_GEN_148); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_150 = 5'h1a == _T_9 ? $signed(regsA_14) : $signed(_GEN_149); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_151 = 5'h1b == _T_9 ? $signed(regsA_15) : $signed(_GEN_150); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [4:0] _T_10 = 2'h3 * 3'h7; // @[Matrix_FixedPoint_Mul.scala 140:44]
  wire [4:0] _T_12 = _T_10 + input_point; // @[Matrix_FixedPoint_Mul.scala 140:60]
  wire [63:0] _GEN_153 = 5'h1 == _T_12 ? $signed(64'sh0) : $signed(regsA_0); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_154 = 5'h2 == _T_12 ? $signed(64'sh0) : $signed(_GEN_153); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_155 = 5'h3 == _T_12 ? $signed(64'sh0) : $signed(_GEN_154); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_156 = 5'h4 == _T_12 ? $signed(64'sh0) : $signed(_GEN_155); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_157 = 5'h5 == _T_12 ? $signed(64'sh0) : $signed(_GEN_156); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_158 = 5'h6 == _T_12 ? $signed(64'sh0) : $signed(_GEN_157); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_159 = 5'h7 == _T_12 ? $signed(64'sh0) : $signed(_GEN_158); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_160 = 5'h8 == _T_12 ? $signed(regsA_4) : $signed(_GEN_159); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_161 = 5'h9 == _T_12 ? $signed(regsA_5) : $signed(_GEN_160); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_162 = 5'ha == _T_12 ? $signed(64'sh0) : $signed(_GEN_161); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_163 = 5'hb == _T_12 ? $signed(64'sh0) : $signed(_GEN_162); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_164 = 5'hc == _T_12 ? $signed(64'sh0) : $signed(_GEN_163); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_165 = 5'hd == _T_12 ? $signed(64'sh0) : $signed(_GEN_164); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_166 = 5'he == _T_12 ? $signed(64'sh0) : $signed(_GEN_165); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_167 = 5'hf == _T_12 ? $signed(64'sh0) : $signed(_GEN_166); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_168 = 5'h10 == _T_12 ? $signed(regsA_8) : $signed(_GEN_167); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_169 = 5'h11 == _T_12 ? $signed(regsA_9) : $signed(_GEN_168); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_170 = 5'h12 == _T_12 ? $signed(regsA_10) : $signed(_GEN_169); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_171 = 5'h13 == _T_12 ? $signed(64'sh0) : $signed(_GEN_170); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_172 = 5'h14 == _T_12 ? $signed(64'sh0) : $signed(_GEN_171); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_173 = 5'h15 == _T_12 ? $signed(64'sh0) : $signed(_GEN_172); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_174 = 5'h16 == _T_12 ? $signed(64'sh0) : $signed(_GEN_173); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_175 = 5'h17 == _T_12 ? $signed(64'sh0) : $signed(_GEN_174); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_176 = 5'h18 == _T_12 ? $signed(regsA_12) : $signed(_GEN_175); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_177 = 5'h19 == _T_12 ? $signed(regsA_13) : $signed(_GEN_176); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_178 = 5'h1a == _T_12 ? $signed(regsA_14) : $signed(_GEN_177); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_179 = 5'h1b == _T_12 ? $signed(regsA_15) : $signed(_GEN_178); // @[Matrix_FixedPoint_Mul.scala 140:{27,27}]
  wire [63:0] _GEN_185 = 5'h1 == _T_3 ? $signed(regsB_4) : $signed(regsB_0); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_186 = 5'h2 == _T_3 ? $signed(regsB_8) : $signed(_GEN_185); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_187 = 5'h3 == _T_3 ? $signed(regsB_12) : $signed(_GEN_186); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_188 = 5'h4 == _T_3 ? $signed(64'sh0) : $signed(_GEN_187); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_189 = 5'h5 == _T_3 ? $signed(64'sh0) : $signed(_GEN_188); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_190 = 5'h6 == _T_3 ? $signed(64'sh0) : $signed(_GEN_189); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_191 = 5'h7 == _T_3 ? $signed(64'sh0) : $signed(_GEN_190); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_192 = 5'h8 == _T_3 ? $signed(64'sh0) : $signed(_GEN_191); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_193 = 5'h9 == _T_3 ? $signed(regsB_5) : $signed(_GEN_192); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_194 = 5'ha == _T_3 ? $signed(regsB_9) : $signed(_GEN_193); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_195 = 5'hb == _T_3 ? $signed(regsB_13) : $signed(_GEN_194); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_196 = 5'hc == _T_3 ? $signed(64'sh0) : $signed(_GEN_195); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_197 = 5'hd == _T_3 ? $signed(64'sh0) : $signed(_GEN_196); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_198 = 5'he == _T_3 ? $signed(64'sh0) : $signed(_GEN_197); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_199 = 5'hf == _T_3 ? $signed(64'sh0) : $signed(_GEN_198); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_200 = 5'h10 == _T_3 ? $signed(64'sh0) : $signed(_GEN_199); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_201 = 5'h11 == _T_3 ? $signed(64'sh0) : $signed(_GEN_200); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_202 = 5'h12 == _T_3 ? $signed(regsB_10) : $signed(_GEN_201); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_203 = 5'h13 == _T_3 ? $signed(regsB_14) : $signed(_GEN_202); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_204 = 5'h14 == _T_3 ? $signed(64'sh0) : $signed(_GEN_203); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_205 = 5'h15 == _T_3 ? $signed(64'sh0) : $signed(_GEN_204); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_206 = 5'h16 == _T_3 ? $signed(64'sh0) : $signed(_GEN_205); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_207 = 5'h17 == _T_3 ? $signed(64'sh0) : $signed(_GEN_206); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_208 = 5'h18 == _T_3 ? $signed(64'sh0) : $signed(_GEN_207); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_209 = 5'h19 == _T_3 ? $signed(64'sh0) : $signed(_GEN_208); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_210 = 5'h1a == _T_3 ? $signed(64'sh0) : $signed(_GEN_209); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_211 = 5'h1b == _T_3 ? $signed(regsB_15) : $signed(_GEN_210); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_213 = 5'h1 == _T_6 ? $signed(regsB_4) : $signed(regsB_0); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_214 = 5'h2 == _T_6 ? $signed(regsB_8) : $signed(_GEN_213); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_215 = 5'h3 == _T_6 ? $signed(regsB_12) : $signed(_GEN_214); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_216 = 5'h4 == _T_6 ? $signed(64'sh0) : $signed(_GEN_215); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_217 = 5'h5 == _T_6 ? $signed(64'sh0) : $signed(_GEN_216); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_218 = 5'h6 == _T_6 ? $signed(64'sh0) : $signed(_GEN_217); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_219 = 5'h7 == _T_6 ? $signed(64'sh0) : $signed(_GEN_218); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_220 = 5'h8 == _T_6 ? $signed(64'sh0) : $signed(_GEN_219); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_221 = 5'h9 == _T_6 ? $signed(regsB_5) : $signed(_GEN_220); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_222 = 5'ha == _T_6 ? $signed(regsB_9) : $signed(_GEN_221); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_223 = 5'hb == _T_6 ? $signed(regsB_13) : $signed(_GEN_222); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_224 = 5'hc == _T_6 ? $signed(64'sh0) : $signed(_GEN_223); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_225 = 5'hd == _T_6 ? $signed(64'sh0) : $signed(_GEN_224); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_226 = 5'he == _T_6 ? $signed(64'sh0) : $signed(_GEN_225); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_227 = 5'hf == _T_6 ? $signed(64'sh0) : $signed(_GEN_226); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_228 = 5'h10 == _T_6 ? $signed(64'sh0) : $signed(_GEN_227); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_229 = 5'h11 == _T_6 ? $signed(64'sh0) : $signed(_GEN_228); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_230 = 5'h12 == _T_6 ? $signed(regsB_10) : $signed(_GEN_229); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_231 = 5'h13 == _T_6 ? $signed(regsB_14) : $signed(_GEN_230); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_232 = 5'h14 == _T_6 ? $signed(64'sh0) : $signed(_GEN_231); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_233 = 5'h15 == _T_6 ? $signed(64'sh0) : $signed(_GEN_232); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_234 = 5'h16 == _T_6 ? $signed(64'sh0) : $signed(_GEN_233); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_235 = 5'h17 == _T_6 ? $signed(64'sh0) : $signed(_GEN_234); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_236 = 5'h18 == _T_6 ? $signed(64'sh0) : $signed(_GEN_235); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_237 = 5'h19 == _T_6 ? $signed(64'sh0) : $signed(_GEN_236); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_238 = 5'h1a == _T_6 ? $signed(64'sh0) : $signed(_GEN_237); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_239 = 5'h1b == _T_6 ? $signed(regsB_15) : $signed(_GEN_238); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_241 = 5'h1 == _T_9 ? $signed(regsB_4) : $signed(regsB_0); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_242 = 5'h2 == _T_9 ? $signed(regsB_8) : $signed(_GEN_241); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_243 = 5'h3 == _T_9 ? $signed(regsB_12) : $signed(_GEN_242); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_244 = 5'h4 == _T_9 ? $signed(64'sh0) : $signed(_GEN_243); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_245 = 5'h5 == _T_9 ? $signed(64'sh0) : $signed(_GEN_244); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_246 = 5'h6 == _T_9 ? $signed(64'sh0) : $signed(_GEN_245); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_247 = 5'h7 == _T_9 ? $signed(64'sh0) : $signed(_GEN_246); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_248 = 5'h8 == _T_9 ? $signed(64'sh0) : $signed(_GEN_247); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_249 = 5'h9 == _T_9 ? $signed(regsB_5) : $signed(_GEN_248); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_250 = 5'ha == _T_9 ? $signed(regsB_9) : $signed(_GEN_249); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_251 = 5'hb == _T_9 ? $signed(regsB_13) : $signed(_GEN_250); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_252 = 5'hc == _T_9 ? $signed(64'sh0) : $signed(_GEN_251); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_253 = 5'hd == _T_9 ? $signed(64'sh0) : $signed(_GEN_252); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_254 = 5'he == _T_9 ? $signed(64'sh0) : $signed(_GEN_253); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_255 = 5'hf == _T_9 ? $signed(64'sh0) : $signed(_GEN_254); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_256 = 5'h10 == _T_9 ? $signed(64'sh0) : $signed(_GEN_255); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_257 = 5'h11 == _T_9 ? $signed(64'sh0) : $signed(_GEN_256); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_258 = 5'h12 == _T_9 ? $signed(regsB_10) : $signed(_GEN_257); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_259 = 5'h13 == _T_9 ? $signed(regsB_14) : $signed(_GEN_258); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_260 = 5'h14 == _T_9 ? $signed(64'sh0) : $signed(_GEN_259); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_261 = 5'h15 == _T_9 ? $signed(64'sh0) : $signed(_GEN_260); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_262 = 5'h16 == _T_9 ? $signed(64'sh0) : $signed(_GEN_261); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_263 = 5'h17 == _T_9 ? $signed(64'sh0) : $signed(_GEN_262); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_264 = 5'h18 == _T_9 ? $signed(64'sh0) : $signed(_GEN_263); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_265 = 5'h19 == _T_9 ? $signed(64'sh0) : $signed(_GEN_264); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_266 = 5'h1a == _T_9 ? $signed(64'sh0) : $signed(_GEN_265); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_267 = 5'h1b == _T_9 ? $signed(regsB_15) : $signed(_GEN_266); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_269 = 5'h1 == _T_12 ? $signed(regsB_4) : $signed(regsB_0); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_270 = 5'h2 == _T_12 ? $signed(regsB_8) : $signed(_GEN_269); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_271 = 5'h3 == _T_12 ? $signed(regsB_12) : $signed(_GEN_270); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_272 = 5'h4 == _T_12 ? $signed(64'sh0) : $signed(_GEN_271); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_273 = 5'h5 == _T_12 ? $signed(64'sh0) : $signed(_GEN_272); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_274 = 5'h6 == _T_12 ? $signed(64'sh0) : $signed(_GEN_273); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_275 = 5'h7 == _T_12 ? $signed(64'sh0) : $signed(_GEN_274); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_276 = 5'h8 == _T_12 ? $signed(64'sh0) : $signed(_GEN_275); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_277 = 5'h9 == _T_12 ? $signed(regsB_5) : $signed(_GEN_276); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_278 = 5'ha == _T_12 ? $signed(regsB_9) : $signed(_GEN_277); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_279 = 5'hb == _T_12 ? $signed(regsB_13) : $signed(_GEN_278); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_280 = 5'hc == _T_12 ? $signed(64'sh0) : $signed(_GEN_279); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_281 = 5'hd == _T_12 ? $signed(64'sh0) : $signed(_GEN_280); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_282 = 5'he == _T_12 ? $signed(64'sh0) : $signed(_GEN_281); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_283 = 5'hf == _T_12 ? $signed(64'sh0) : $signed(_GEN_282); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_284 = 5'h10 == _T_12 ? $signed(64'sh0) : $signed(_GEN_283); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_285 = 5'h11 == _T_12 ? $signed(64'sh0) : $signed(_GEN_284); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_286 = 5'h12 == _T_12 ? $signed(regsB_10) : $signed(_GEN_285); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_287 = 5'h13 == _T_12 ? $signed(regsB_14) : $signed(_GEN_286); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_288 = 5'h14 == _T_12 ? $signed(64'sh0) : $signed(_GEN_287); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_289 = 5'h15 == _T_12 ? $signed(64'sh0) : $signed(_GEN_288); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_290 = 5'h16 == _T_12 ? $signed(64'sh0) : $signed(_GEN_289); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_291 = 5'h17 == _T_12 ? $signed(64'sh0) : $signed(_GEN_290); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_292 = 5'h18 == _T_12 ? $signed(64'sh0) : $signed(_GEN_291); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_293 = 5'h19 == _T_12 ? $signed(64'sh0) : $signed(_GEN_292); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_294 = 5'h1a == _T_12 ? $signed(64'sh0) : $signed(_GEN_293); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  wire [63:0] _GEN_295 = 5'h1b == _T_12 ? $signed(regsB_15) : $signed(_GEN_294); // @[Matrix_FixedPoint_Mul.scala 152:{19,19}]
  PE_FixedPoint PE_FixedPoint ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_clock),
    .io_reset(PE_FixedPoint_io_reset),
    .io_in_x(PE_FixedPoint_io_in_x),
    .io_in_y(PE_FixedPoint_io_in_y),
    .io_out_pe(PE_FixedPoint_io_out_pe),
    .io_out_x(PE_FixedPoint_io_out_x),
    .io_out_y(PE_FixedPoint_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_1 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_1_clock),
    .io_reset(PE_FixedPoint_1_io_reset),
    .io_in_x(PE_FixedPoint_1_io_in_x),
    .io_in_y(PE_FixedPoint_1_io_in_y),
    .io_out_pe(PE_FixedPoint_1_io_out_pe),
    .io_out_x(PE_FixedPoint_1_io_out_x),
    .io_out_y(PE_FixedPoint_1_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_2 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_2_clock),
    .io_reset(PE_FixedPoint_2_io_reset),
    .io_in_x(PE_FixedPoint_2_io_in_x),
    .io_in_y(PE_FixedPoint_2_io_in_y),
    .io_out_pe(PE_FixedPoint_2_io_out_pe),
    .io_out_x(PE_FixedPoint_2_io_out_x),
    .io_out_y(PE_FixedPoint_2_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_3 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_3_clock),
    .io_reset(PE_FixedPoint_3_io_reset),
    .io_in_x(PE_FixedPoint_3_io_in_x),
    .io_in_y(PE_FixedPoint_3_io_in_y),
    .io_out_pe(PE_FixedPoint_3_io_out_pe),
    .io_out_x(PE_FixedPoint_3_io_out_x),
    .io_out_y(PE_FixedPoint_3_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_4 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_4_clock),
    .io_reset(PE_FixedPoint_4_io_reset),
    .io_in_x(PE_FixedPoint_4_io_in_x),
    .io_in_y(PE_FixedPoint_4_io_in_y),
    .io_out_pe(PE_FixedPoint_4_io_out_pe),
    .io_out_x(PE_FixedPoint_4_io_out_x),
    .io_out_y(PE_FixedPoint_4_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_5 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_5_clock),
    .io_reset(PE_FixedPoint_5_io_reset),
    .io_in_x(PE_FixedPoint_5_io_in_x),
    .io_in_y(PE_FixedPoint_5_io_in_y),
    .io_out_pe(PE_FixedPoint_5_io_out_pe),
    .io_out_x(PE_FixedPoint_5_io_out_x),
    .io_out_y(PE_FixedPoint_5_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_6 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_6_clock),
    .io_reset(PE_FixedPoint_6_io_reset),
    .io_in_x(PE_FixedPoint_6_io_in_x),
    .io_in_y(PE_FixedPoint_6_io_in_y),
    .io_out_pe(PE_FixedPoint_6_io_out_pe),
    .io_out_x(PE_FixedPoint_6_io_out_x),
    .io_out_y(PE_FixedPoint_6_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_7 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_7_clock),
    .io_reset(PE_FixedPoint_7_io_reset),
    .io_in_x(PE_FixedPoint_7_io_in_x),
    .io_in_y(PE_FixedPoint_7_io_in_y),
    .io_out_pe(PE_FixedPoint_7_io_out_pe),
    .io_out_x(PE_FixedPoint_7_io_out_x),
    .io_out_y(PE_FixedPoint_7_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_8 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_8_clock),
    .io_reset(PE_FixedPoint_8_io_reset),
    .io_in_x(PE_FixedPoint_8_io_in_x),
    .io_in_y(PE_FixedPoint_8_io_in_y),
    .io_out_pe(PE_FixedPoint_8_io_out_pe),
    .io_out_x(PE_FixedPoint_8_io_out_x),
    .io_out_y(PE_FixedPoint_8_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_9 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_9_clock),
    .io_reset(PE_FixedPoint_9_io_reset),
    .io_in_x(PE_FixedPoint_9_io_in_x),
    .io_in_y(PE_FixedPoint_9_io_in_y),
    .io_out_pe(PE_FixedPoint_9_io_out_pe),
    .io_out_x(PE_FixedPoint_9_io_out_x),
    .io_out_y(PE_FixedPoint_9_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_10 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_10_clock),
    .io_reset(PE_FixedPoint_10_io_reset),
    .io_in_x(PE_FixedPoint_10_io_in_x),
    .io_in_y(PE_FixedPoint_10_io_in_y),
    .io_out_pe(PE_FixedPoint_10_io_out_pe),
    .io_out_x(PE_FixedPoint_10_io_out_x),
    .io_out_y(PE_FixedPoint_10_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_11 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_11_clock),
    .io_reset(PE_FixedPoint_11_io_reset),
    .io_in_x(PE_FixedPoint_11_io_in_x),
    .io_in_y(PE_FixedPoint_11_io_in_y),
    .io_out_pe(PE_FixedPoint_11_io_out_pe),
    .io_out_x(PE_FixedPoint_11_io_out_x),
    .io_out_y(PE_FixedPoint_11_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_12 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_12_clock),
    .io_reset(PE_FixedPoint_12_io_reset),
    .io_in_x(PE_FixedPoint_12_io_in_x),
    .io_in_y(PE_FixedPoint_12_io_in_y),
    .io_out_pe(PE_FixedPoint_12_io_out_pe),
    .io_out_x(PE_FixedPoint_12_io_out_x),
    .io_out_y(PE_FixedPoint_12_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_13 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_13_clock),
    .io_reset(PE_FixedPoint_13_io_reset),
    .io_in_x(PE_FixedPoint_13_io_in_x),
    .io_in_y(PE_FixedPoint_13_io_in_y),
    .io_out_pe(PE_FixedPoint_13_io_out_pe),
    .io_out_x(PE_FixedPoint_13_io_out_x),
    .io_out_y(PE_FixedPoint_13_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_14 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_14_clock),
    .io_reset(PE_FixedPoint_14_io_reset),
    .io_in_x(PE_FixedPoint_14_io_in_x),
    .io_in_y(PE_FixedPoint_14_io_in_y),
    .io_out_pe(PE_FixedPoint_14_io_out_pe),
    .io_out_x(PE_FixedPoint_14_io_out_x),
    .io_out_y(PE_FixedPoint_14_io_out_y)
  );
  PE_FixedPoint PE_FixedPoint_15 ( // @[Matrix_FixedPoint_Mul.scala 83:35]
    .clock(PE_FixedPoint_15_clock),
    .io_reset(PE_FixedPoint_15_io_reset),
    .io_in_x(PE_FixedPoint_15_io_in_x),
    .io_in_y(PE_FixedPoint_15_io_in_y),
    .io_out_pe(PE_FixedPoint_15_io_out_pe),
    .io_out_x(PE_FixedPoint_15_io_out_x),
    .io_out_y(PE_FixedPoint_15_io_out_y)
  );
  assign io_matrixC_0 = PE_FixedPoint_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 184:19]
  assign io_matrixC_4 = PE_FixedPoint_4_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 184:19]
  assign io_matrixC_5 = PE_FixedPoint_5_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 184:19]
  assign io_matrixC_8 = PE_FixedPoint_8_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 184:19]
  assign io_matrixC_9 = PE_FixedPoint_9_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 184:19]
  assign io_matrixC_10 = PE_FixedPoint_10_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 184:19]
  assign io_matrixC_12 = PE_FixedPoint_12_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 184:19]
  assign io_matrixC_13 = PE_FixedPoint_13_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 184:19]
  assign io_matrixC_14 = PE_FixedPoint_14_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 184:19]
  assign io_matrixC_15 = PE_FixedPoint_15_io_out_pe; // @[Matrix_FixedPoint_Mul.scala 184:19]
  assign io_valid = input_point >= 5'ha; // @[Matrix_FixedPoint_Mul.scala 177:20]
  assign PE_FixedPoint_clock = clock;
  assign PE_FixedPoint_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_io_in_x = input_point < 5'h7 ? $signed(_GEN_95) : $signed(64'sh0); // @[Matrix_FixedPoint_Mul.scala 137:37 140:27 145:27]
  assign PE_FixedPoint_io_in_y = _T ? $signed(_GEN_211) : $signed(64'sh0); // @[Matrix_FixedPoint_Mul.scala 149:37 152:19 157:19]
  assign PE_FixedPoint_1_clock = clock;
  assign PE_FixedPoint_1_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_1_io_in_x = PE_FixedPoint_io_out_x; // @[Matrix_FixedPoint_Mul.scala 167:17]
  assign PE_FixedPoint_1_io_in_y = _T ? $signed(_GEN_239) : $signed(64'sh0); // @[Matrix_FixedPoint_Mul.scala 149:37 152:19 157:19]
  assign PE_FixedPoint_2_clock = clock;
  assign PE_FixedPoint_2_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_2_io_in_x = PE_FixedPoint_1_io_out_x; // @[Matrix_FixedPoint_Mul.scala 167:17]
  assign PE_FixedPoint_2_io_in_y = _T ? $signed(_GEN_267) : $signed(64'sh0); // @[Matrix_FixedPoint_Mul.scala 149:37 152:19 157:19]
  assign PE_FixedPoint_3_clock = clock;
  assign PE_FixedPoint_3_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_3_io_in_x = PE_FixedPoint_2_io_out_x; // @[Matrix_FixedPoint_Mul.scala 167:17]
  assign PE_FixedPoint_3_io_in_y = _T ? $signed(_GEN_295) : $signed(64'sh0); // @[Matrix_FixedPoint_Mul.scala 149:37 152:19 157:19]
  assign PE_FixedPoint_4_clock = clock;
  assign PE_FixedPoint_4_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_4_io_in_x = input_point < 5'h7 ? $signed(_GEN_123) : $signed(64'sh0); // @[Matrix_FixedPoint_Mul.scala 137:37 140:27 145:27]
  assign PE_FixedPoint_4_io_in_y = PE_FixedPoint_io_out_y; // @[Matrix_FixedPoint_Mul.scala 164:25]
  assign PE_FixedPoint_5_clock = clock;
  assign PE_FixedPoint_5_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_5_io_in_x = PE_FixedPoint_4_io_out_x; // @[Matrix_FixedPoint_Mul.scala 172:27]
  assign PE_FixedPoint_5_io_in_y = PE_FixedPoint_1_io_out_y; // @[Matrix_FixedPoint_Mul.scala 171:27]
  assign PE_FixedPoint_6_clock = clock;
  assign PE_FixedPoint_6_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_6_io_in_x = PE_FixedPoint_5_io_out_x; // @[Matrix_FixedPoint_Mul.scala 172:27]
  assign PE_FixedPoint_6_io_in_y = PE_FixedPoint_2_io_out_y; // @[Matrix_FixedPoint_Mul.scala 171:27]
  assign PE_FixedPoint_7_clock = clock;
  assign PE_FixedPoint_7_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_7_io_in_x = PE_FixedPoint_6_io_out_x; // @[Matrix_FixedPoint_Mul.scala 172:27]
  assign PE_FixedPoint_7_io_in_y = PE_FixedPoint_3_io_out_y; // @[Matrix_FixedPoint_Mul.scala 171:27]
  assign PE_FixedPoint_8_clock = clock;
  assign PE_FixedPoint_8_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_8_io_in_x = input_point < 5'h7 ? $signed(_GEN_151) : $signed(64'sh0); // @[Matrix_FixedPoint_Mul.scala 137:37 140:27 145:27]
  assign PE_FixedPoint_8_io_in_y = PE_FixedPoint_4_io_out_y; // @[Matrix_FixedPoint_Mul.scala 164:25]
  assign PE_FixedPoint_9_clock = clock;
  assign PE_FixedPoint_9_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_9_io_in_x = PE_FixedPoint_8_io_out_x; // @[Matrix_FixedPoint_Mul.scala 172:27]
  assign PE_FixedPoint_9_io_in_y = PE_FixedPoint_5_io_out_y; // @[Matrix_FixedPoint_Mul.scala 171:27]
  assign PE_FixedPoint_10_clock = clock;
  assign PE_FixedPoint_10_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_10_io_in_x = PE_FixedPoint_9_io_out_x; // @[Matrix_FixedPoint_Mul.scala 172:27]
  assign PE_FixedPoint_10_io_in_y = PE_FixedPoint_6_io_out_y; // @[Matrix_FixedPoint_Mul.scala 171:27]
  assign PE_FixedPoint_11_clock = clock;
  assign PE_FixedPoint_11_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_11_io_in_x = PE_FixedPoint_10_io_out_x; // @[Matrix_FixedPoint_Mul.scala 172:27]
  assign PE_FixedPoint_11_io_in_y = PE_FixedPoint_7_io_out_y; // @[Matrix_FixedPoint_Mul.scala 171:27]
  assign PE_FixedPoint_12_clock = clock;
  assign PE_FixedPoint_12_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_12_io_in_x = input_point < 5'h7 ? $signed(_GEN_179) : $signed(64'sh0); // @[Matrix_FixedPoint_Mul.scala 137:37 140:27 145:27]
  assign PE_FixedPoint_12_io_in_y = PE_FixedPoint_8_io_out_y; // @[Matrix_FixedPoint_Mul.scala 164:25]
  assign PE_FixedPoint_13_clock = clock;
  assign PE_FixedPoint_13_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_13_io_in_x = PE_FixedPoint_12_io_out_x; // @[Matrix_FixedPoint_Mul.scala 172:27]
  assign PE_FixedPoint_13_io_in_y = PE_FixedPoint_9_io_out_y; // @[Matrix_FixedPoint_Mul.scala 171:27]
  assign PE_FixedPoint_14_clock = clock;
  assign PE_FixedPoint_14_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_14_io_in_x = PE_FixedPoint_13_io_out_x; // @[Matrix_FixedPoint_Mul.scala 172:27]
  assign PE_FixedPoint_14_io_in_y = PE_FixedPoint_10_io_out_y; // @[Matrix_FixedPoint_Mul.scala 171:27]
  assign PE_FixedPoint_15_clock = clock;
  assign PE_FixedPoint_15_io_reset = io_reset | io_ready; // @[Matrix_FixedPoint_Mul.scala 85:18 95:20]
  assign PE_FixedPoint_15_io_in_x = PE_FixedPoint_14_io_out_x; // @[Matrix_FixedPoint_Mul.scala 172:27]
  assign PE_FixedPoint_15_io_in_y = PE_FixedPoint_11_io_out_y; // @[Matrix_FixedPoint_Mul.scala 171:27]
  always @(posedge clock) begin
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsA_0 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 88:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsA_0 <= io_matrixA_0; // @[Matrix_FixedPoint_Mul.scala 99:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsA_4 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 88:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsA_4 <= io_matrixA_4; // @[Matrix_FixedPoint_Mul.scala 99:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsA_5 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 88:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsA_5 <= io_matrixA_5; // @[Matrix_FixedPoint_Mul.scala 99:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsA_8 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 88:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsA_8 <= io_matrixA_8; // @[Matrix_FixedPoint_Mul.scala 99:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsA_9 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 88:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsA_9 <= io_matrixA_9; // @[Matrix_FixedPoint_Mul.scala 99:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsA_10 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 88:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsA_10 <= io_matrixA_10; // @[Matrix_FixedPoint_Mul.scala 99:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsA_12 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 88:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsA_12 <= io_matrixA_12; // @[Matrix_FixedPoint_Mul.scala 99:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsA_13 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 88:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsA_13 <= io_matrixA_13; // @[Matrix_FixedPoint_Mul.scala 99:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsA_14 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 88:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsA_14 <= io_matrixA_14; // @[Matrix_FixedPoint_Mul.scala 99:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsA_15 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 88:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsA_15 <= io_matrixA_15; // @[Matrix_FixedPoint_Mul.scala 99:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsB_0 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 91:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsB_0 <= io_matrixB_0; // @[Matrix_FixedPoint_Mul.scala 100:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsB_4 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 91:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsB_4 <= io_matrixB_4; // @[Matrix_FixedPoint_Mul.scala 100:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsB_5 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 91:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsB_5 <= io_matrixB_5; // @[Matrix_FixedPoint_Mul.scala 100:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsB_8 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 91:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsB_8 <= io_matrixB_8; // @[Matrix_FixedPoint_Mul.scala 100:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsB_9 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 91:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsB_9 <= io_matrixB_9; // @[Matrix_FixedPoint_Mul.scala 100:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsB_10 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 91:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsB_10 <= io_matrixB_10; // @[Matrix_FixedPoint_Mul.scala 100:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsB_12 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 91:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsB_12 <= io_matrixB_12; // @[Matrix_FixedPoint_Mul.scala 100:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsB_13 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 91:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsB_13 <= io_matrixB_13; // @[Matrix_FixedPoint_Mul.scala 100:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsB_14 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 91:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsB_14 <= io_matrixB_14; // @[Matrix_FixedPoint_Mul.scala 100:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      regsB_15 <= 64'sh0; // @[Matrix_FixedPoint_Mul.scala 91:16]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      regsB_15 <= io_matrixB_15; // @[Matrix_FixedPoint_Mul.scala 100:11]
    end
    if (io_reset) begin // @[Matrix_FixedPoint_Mul.scala 85:18]
      input_point <= 5'h0; // @[Matrix_FixedPoint_Mul.scala 93:17]
    end else if (io_ready) begin // @[Matrix_FixedPoint_Mul.scala 97:24]
      input_point <= 5'h0; // @[Matrix_FixedPoint_Mul.scala 102:17]
    end else begin
      input_point <= _input_point_T_1; // @[Matrix_FixedPoint_Mul.scala 110:17]
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
  regsA_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  regsA_4 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  regsA_5 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  regsA_8 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  regsA_9 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  regsA_10 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  regsA_12 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  regsA_13 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  regsA_14 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  regsA_15 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  regsB_0 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  regsB_4 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  regsB_5 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  regsB_8 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  regsB_9 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  regsB_10 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  regsB_12 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  regsB_13 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  regsB_14 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  regsB_15 = _RAND_19[63:0];
  _RAND_20 = {1{`RANDOM}};
  input_point = _RAND_20[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module shift_2_range(
  input  [63:0] io_x,
  output [63:0] io_out,
  output [5:0]  io_cnt,
  output        io_flag
);
  wire [63:0] _temp_x_T_2 = 64'sh0 - $signed(io_x); // @[Cordic_LV.scala 77:15]
  wire [63:0] temp_x = $signed(io_x) < 64'sh0 ? $signed(_temp_x_T_2) : $signed(io_x); // @[Cordic_LV.scala 76:71 77:12 80:12]
  wire  _T_1 = $signed(temp_x) < 64'sh80000; // @[Cordic_LV.scala 84:15]
  wire  index__0 = _T_1 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [64:0] _T_4 = {$signed(temp_x), 1'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__1 = $signed(_T_4) < 65'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [65:0] _T_6 = {$signed(temp_x), 2'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__2 = $signed(_T_6) < 66'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [66:0] _T_8 = {$signed(temp_x), 3'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__3 = $signed(_T_8) < 67'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [67:0] _T_10 = {$signed(temp_x), 4'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__4 = $signed(_T_10) < 68'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [68:0] _T_12 = {$signed(temp_x), 5'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__5 = $signed(_T_12) < 69'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [69:0] _T_14 = {$signed(temp_x), 6'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__6 = $signed(_T_14) < 70'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [70:0] _T_16 = {$signed(temp_x), 7'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__7 = $signed(_T_16) < 71'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [71:0] _T_18 = {$signed(temp_x), 8'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__8 = $signed(_T_18) < 72'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [72:0] _T_20 = {$signed(temp_x), 9'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__9 = $signed(_T_20) < 73'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [73:0] _T_22 = {$signed(temp_x), 10'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__10 = $signed(_T_22) < 74'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [74:0] _T_24 = {$signed(temp_x), 11'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__11 = $signed(_T_24) < 75'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [75:0] _T_26 = {$signed(temp_x), 12'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__12 = $signed(_T_26) < 76'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [76:0] _T_28 = {$signed(temp_x), 13'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__13 = $signed(_T_28) < 77'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [77:0] _T_30 = {$signed(temp_x), 14'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__14 = $signed(_T_30) < 78'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [78:0] _T_32 = {$signed(temp_x), 15'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__15 = $signed(_T_32) < 79'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [79:0] _T_34 = {$signed(temp_x), 16'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__16 = $signed(_T_34) < 80'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [80:0] _T_36 = {$signed(temp_x), 17'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__17 = $signed(_T_36) < 81'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [81:0] _T_38 = {$signed(temp_x), 18'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__18 = $signed(_T_38) < 82'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [82:0] _T_40 = {$signed(temp_x), 19'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__19 = $signed(_T_40) < 83'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [9:0] temp_cnt_lo = {index__9,index__8,index__7,index__6,index__5,index__4,index__3,index__2,index__1,index__0}; // @[Cordic_LV.scala 95:48]
  wire [9:0] temp_cnt_hi = {index__19,index__18,index__17,index__16,index__15,index__14,index__13,index__12,index__11,
    index__10}; // @[Cordic_LV.scala 95:48]
  wire [19:0] _temp_cnt_T = {temp_cnt_hi,temp_cnt_lo}; // @[Cordic_LV.scala 95:48]
  wire [4:0] _temp_cnt_T_21 = _temp_cnt_T[18] ? 5'h12 : 5'h13; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_22 = _temp_cnt_T[17] ? 5'h11 : _temp_cnt_T_21; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_23 = _temp_cnt_T[16] ? 5'h10 : _temp_cnt_T_22; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_24 = _temp_cnt_T[15] ? 5'hf : _temp_cnt_T_23; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_25 = _temp_cnt_T[14] ? 5'he : _temp_cnt_T_24; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_26 = _temp_cnt_T[13] ? 5'hd : _temp_cnt_T_25; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_27 = _temp_cnt_T[12] ? 5'hc : _temp_cnt_T_26; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_28 = _temp_cnt_T[11] ? 5'hb : _temp_cnt_T_27; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_29 = _temp_cnt_T[10] ? 5'ha : _temp_cnt_T_28; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_30 = _temp_cnt_T[9] ? 5'h9 : _temp_cnt_T_29; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_31 = _temp_cnt_T[8] ? 5'h8 : _temp_cnt_T_30; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_32 = _temp_cnt_T[7] ? 5'h7 : _temp_cnt_T_31; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_33 = _temp_cnt_T[6] ? 5'h6 : _temp_cnt_T_32; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_34 = _temp_cnt_T[5] ? 5'h5 : _temp_cnt_T_33; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_35 = _temp_cnt_T[4] ? 5'h4 : _temp_cnt_T_34; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_36 = _temp_cnt_T[3] ? 5'h3 : _temp_cnt_T_35; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_37 = _temp_cnt_T[2] ? 5'h2 : _temp_cnt_T_36; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_38 = _temp_cnt_T[1] ? 5'h1 : _temp_cnt_T_37; // @[Mux.scala 47:70]
  wire [4:0] temp_cnt = _temp_cnt_T[0] ? 5'h0 : _temp_cnt_T_38; // @[Mux.scala 47:70]
  wire [4:0] _io_cnt_T = _temp_cnt_T[0] ? 5'h0 : _temp_cnt_T_38; // @[Cordic_LV.scala 96:30]
  wire [94:0] _GEN_0 = {{31{temp_x[63]}},temp_x}; // @[Cordic_LV.scala 97:23]
  wire [94:0] _io_out_T = $signed(_GEN_0) << temp_cnt; // @[Cordic_LV.scala 97:23]
  wire  _T_42 = $signed(temp_x) > 64'sh100000; // @[Cordic_LV.scala 98:21]
  wire  index_1_0 = _T_42 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [62:0] _T_45 = temp_x[63:1]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_90 = {{1{_T_45[62]}},_T_45}; // @[Cordic_LV.scala 102:26]
  wire  index_1_1 = $signed(_GEN_90) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [61:0] _T_47 = temp_x[63:2]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_91 = {{2{_T_47[61]}},_T_47}; // @[Cordic_LV.scala 102:26]
  wire  index_1_2 = $signed(_GEN_91) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [60:0] _T_49 = temp_x[63:3]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_92 = {{3{_T_49[60]}},_T_49}; // @[Cordic_LV.scala 102:26]
  wire  index_1_3 = $signed(_GEN_92) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [59:0] _T_51 = temp_x[63:4]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_93 = {{4{_T_51[59]}},_T_51}; // @[Cordic_LV.scala 102:26]
  wire  index_1_4 = $signed(_GEN_93) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [58:0] _T_53 = temp_x[63:5]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_94 = {{5{_T_53[58]}},_T_53}; // @[Cordic_LV.scala 102:26]
  wire  index_1_5 = $signed(_GEN_94) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [57:0] _T_55 = temp_x[63:6]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_95 = {{6{_T_55[57]}},_T_55}; // @[Cordic_LV.scala 102:26]
  wire  index_1_6 = $signed(_GEN_95) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [56:0] _T_57 = temp_x[63:7]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_96 = {{7{_T_57[56]}},_T_57}; // @[Cordic_LV.scala 102:26]
  wire  index_1_7 = $signed(_GEN_96) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [55:0] _T_59 = temp_x[63:8]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_97 = {{8{_T_59[55]}},_T_59}; // @[Cordic_LV.scala 102:26]
  wire  index_1_8 = $signed(_GEN_97) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [54:0] _T_61 = temp_x[63:9]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_98 = {{9{_T_61[54]}},_T_61}; // @[Cordic_LV.scala 102:26]
  wire  index_1_9 = $signed(_GEN_98) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [53:0] _T_63 = temp_x[63:10]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_99 = {{10{_T_63[53]}},_T_63}; // @[Cordic_LV.scala 102:26]
  wire  index_1_10 = $signed(_GEN_99) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [52:0] _T_65 = temp_x[63:11]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_100 = {{11{_T_65[52]}},_T_65}; // @[Cordic_LV.scala 102:26]
  wire  index_1_11 = $signed(_GEN_100) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [51:0] _T_67 = temp_x[63:12]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_101 = {{12{_T_67[51]}},_T_67}; // @[Cordic_LV.scala 102:26]
  wire  index_1_12 = $signed(_GEN_101) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [50:0] _T_69 = temp_x[63:13]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_102 = {{13{_T_69[50]}},_T_69}; // @[Cordic_LV.scala 102:26]
  wire  index_1_13 = $signed(_GEN_102) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [49:0] _T_71 = temp_x[63:14]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_103 = {{14{_T_71[49]}},_T_71}; // @[Cordic_LV.scala 102:26]
  wire  index_1_14 = $signed(_GEN_103) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [48:0] _T_73 = temp_x[63:15]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_104 = {{15{_T_73[48]}},_T_73}; // @[Cordic_LV.scala 102:26]
  wire  index_1_15 = $signed(_GEN_104) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [47:0] _T_75 = temp_x[63:16]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_105 = {{16{_T_75[47]}},_T_75}; // @[Cordic_LV.scala 102:26]
  wire  index_1_16 = $signed(_GEN_105) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [46:0] _T_77 = temp_x[63:17]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_106 = {{17{_T_77[46]}},_T_77}; // @[Cordic_LV.scala 102:26]
  wire  index_1_17 = $signed(_GEN_106) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [45:0] _T_79 = temp_x[63:18]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_107 = {{18{_T_79[45]}},_T_79}; // @[Cordic_LV.scala 102:26]
  wire  index_1_18 = $signed(_GEN_107) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [44:0] _T_81 = temp_x[63:19]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_108 = {{19{_T_81[44]}},_T_81}; // @[Cordic_LV.scala 102:26]
  wire  index_1_19 = $signed(_GEN_108) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [43:0] _T_83 = temp_x[63:20]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_109 = {{20{_T_83[43]}},_T_83}; // @[Cordic_LV.scala 102:26]
  wire  index_1_20 = $signed(_GEN_109) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [42:0] _T_85 = temp_x[63:21]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_110 = {{21{_T_85[42]}},_T_85}; // @[Cordic_LV.scala 102:26]
  wire  index_1_21 = $signed(_GEN_110) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [41:0] _T_87 = temp_x[63:22]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_111 = {{22{_T_87[41]}},_T_87}; // @[Cordic_LV.scala 102:26]
  wire  index_1_22 = $signed(_GEN_111) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [40:0] _T_89 = temp_x[63:23]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_112 = {{23{_T_89[40]}},_T_89}; // @[Cordic_LV.scala 102:26]
  wire  index_1_23 = $signed(_GEN_112) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [39:0] _T_91 = temp_x[63:24]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_113 = {{24{_T_91[39]}},_T_91}; // @[Cordic_LV.scala 102:26]
  wire  index_1_24 = $signed(_GEN_113) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [38:0] _T_93 = temp_x[63:25]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_114 = {{25{_T_93[38]}},_T_93}; // @[Cordic_LV.scala 102:26]
  wire  index_1_25 = $signed(_GEN_114) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [37:0] _T_95 = temp_x[63:26]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_115 = {{26{_T_95[37]}},_T_95}; // @[Cordic_LV.scala 102:26]
  wire  index_1_26 = $signed(_GEN_115) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [36:0] _T_97 = temp_x[63:27]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_116 = {{27{_T_97[36]}},_T_97}; // @[Cordic_LV.scala 102:26]
  wire  index_1_27 = $signed(_GEN_116) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [35:0] _T_99 = temp_x[63:28]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_117 = {{28{_T_99[35]}},_T_99}; // @[Cordic_LV.scala 102:26]
  wire  index_1_28 = $signed(_GEN_117) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [34:0] _T_101 = temp_x[63:29]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_118 = {{29{_T_101[34]}},_T_101}; // @[Cordic_LV.scala 102:26]
  wire  index_1_29 = $signed(_GEN_118) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [33:0] _T_103 = temp_x[63:30]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_119 = {{30{_T_103[33]}},_T_103}; // @[Cordic_LV.scala 102:26]
  wire  index_1_30 = $signed(_GEN_119) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [32:0] _T_105 = temp_x[63:31]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_120 = {{31{_T_105[32]}},_T_105}; // @[Cordic_LV.scala 102:26]
  wire  index_1_31 = $signed(_GEN_120) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [31:0] _T_107 = temp_x[63:32]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_121 = {{32{_T_107[31]}},_T_107}; // @[Cordic_LV.scala 102:26]
  wire  index_1_32 = $signed(_GEN_121) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [30:0] _T_109 = temp_x[63:33]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_122 = {{33{_T_109[30]}},_T_109}; // @[Cordic_LV.scala 102:26]
  wire  index_1_33 = $signed(_GEN_122) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [29:0] _T_111 = temp_x[63:34]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_123 = {{34{_T_111[29]}},_T_111}; // @[Cordic_LV.scala 102:26]
  wire  index_1_34 = $signed(_GEN_123) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [28:0] _T_113 = temp_x[63:35]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_124 = {{35{_T_113[28]}},_T_113}; // @[Cordic_LV.scala 102:26]
  wire  index_1_35 = $signed(_GEN_124) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [27:0] _T_115 = temp_x[63:36]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_125 = {{36{_T_115[27]}},_T_115}; // @[Cordic_LV.scala 102:26]
  wire  index_1_36 = $signed(_GEN_125) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [26:0] _T_117 = temp_x[63:37]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_126 = {{37{_T_117[26]}},_T_117}; // @[Cordic_LV.scala 102:26]
  wire  index_1_37 = $signed(_GEN_126) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [25:0] _T_119 = temp_x[63:38]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_127 = {{38{_T_119[25]}},_T_119}; // @[Cordic_LV.scala 102:26]
  wire  index_1_38 = $signed(_GEN_127) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [24:0] _T_121 = temp_x[63:39]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_128 = {{39{_T_121[24]}},_T_121}; // @[Cordic_LV.scala 102:26]
  wire  index_1_39 = $signed(_GEN_128) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [23:0] _T_123 = temp_x[63:40]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_129 = {{40{_T_123[23]}},_T_123}; // @[Cordic_LV.scala 102:26]
  wire  index_1_40 = $signed(_GEN_129) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [22:0] _T_125 = temp_x[63:41]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_130 = {{41{_T_125[22]}},_T_125}; // @[Cordic_LV.scala 102:26]
  wire  index_1_41 = $signed(_GEN_130) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [21:0] _T_127 = temp_x[63:42]; // @[Cordic_LV.scala 102:20]
  wire [63:0] _GEN_131 = {{42{_T_127[21]}},_T_127}; // @[Cordic_LV.scala 102:26]
  wire  index_1_42 = $signed(_GEN_131) > 64'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [7:0] temp_cnt_lo_lo_lo_1 = {index_1_7,index_1_6,index_1_5,index_1_4,index_1_3,index_1_2,index_1_1,index_1_0}; // @[Cordic_LV.scala 109:48]
  wire [15:0] temp_cnt_lo_lo_1 = {index_1_15,index_1_14,index_1_13,index_1_12,index_1_11,index_1_10,index_1_9,index_1_8,
    temp_cnt_lo_lo_lo_1}; // @[Cordic_LV.scala 109:48]
  wire [7:0] temp_cnt_lo_hi_lo_1 = {index_1_23,index_1_22,index_1_21,index_1_20,index_1_19,index_1_18,index_1_17,
    index_1_16}; // @[Cordic_LV.scala 109:48]
  wire [31:0] temp_cnt_lo_1 = {index_1_31,index_1_30,index_1_29,index_1_28,index_1_27,index_1_26,index_1_25,index_1_24,
    temp_cnt_lo_hi_lo_1,temp_cnt_lo_lo_1}; // @[Cordic_LV.scala 109:48]
  wire [7:0] temp_cnt_hi_lo_lo_1 = {index_1_39,index_1_38,index_1_37,index_1_36,index_1_35,index_1_34,index_1_33,
    index_1_32}; // @[Cordic_LV.scala 109:48]
  wire [63:0] _temp_cnt_T_39 = {16'hffff,4'hf,1'h1,index_1_42,index_1_41,index_1_40,temp_cnt_hi_lo_lo_1,temp_cnt_lo_1}; // @[Cordic_LV.scala 109:48]
  wire [5:0] _temp_cnt_T_104 = _temp_cnt_T_39[62] ? 6'h3e : 6'h3f; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_105 = _temp_cnt_T_39[61] ? 6'h3d : _temp_cnt_T_104; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_106 = _temp_cnt_T_39[60] ? 6'h3c : _temp_cnt_T_105; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_107 = _temp_cnt_T_39[59] ? 6'h3b : _temp_cnt_T_106; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_108 = _temp_cnt_T_39[58] ? 6'h3a : _temp_cnt_T_107; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_109 = _temp_cnt_T_39[57] ? 6'h39 : _temp_cnt_T_108; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_110 = _temp_cnt_T_39[56] ? 6'h38 : _temp_cnt_T_109; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_111 = _temp_cnt_T_39[55] ? 6'h37 : _temp_cnt_T_110; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_112 = _temp_cnt_T_39[54] ? 6'h36 : _temp_cnt_T_111; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_113 = _temp_cnt_T_39[53] ? 6'h35 : _temp_cnt_T_112; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_114 = _temp_cnt_T_39[52] ? 6'h34 : _temp_cnt_T_113; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_115 = _temp_cnt_T_39[51] ? 6'h33 : _temp_cnt_T_114; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_116 = _temp_cnt_T_39[50] ? 6'h32 : _temp_cnt_T_115; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_117 = _temp_cnt_T_39[49] ? 6'h31 : _temp_cnt_T_116; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_118 = _temp_cnt_T_39[48] ? 6'h30 : _temp_cnt_T_117; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_119 = _temp_cnt_T_39[47] ? 6'h2f : _temp_cnt_T_118; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_120 = _temp_cnt_T_39[46] ? 6'h2e : _temp_cnt_T_119; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_121 = _temp_cnt_T_39[45] ? 6'h2d : _temp_cnt_T_120; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_122 = _temp_cnt_T_39[44] ? 6'h2c : _temp_cnt_T_121; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_123 = _temp_cnt_T_39[43] ? 6'h2b : _temp_cnt_T_122; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_124 = _temp_cnt_T_39[42] ? 6'h2a : _temp_cnt_T_123; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_125 = _temp_cnt_T_39[41] ? 6'h29 : _temp_cnt_T_124; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_126 = _temp_cnt_T_39[40] ? 6'h28 : _temp_cnt_T_125; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_127 = _temp_cnt_T_39[39] ? 6'h27 : _temp_cnt_T_126; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_128 = _temp_cnt_T_39[38] ? 6'h26 : _temp_cnt_T_127; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_129 = _temp_cnt_T_39[37] ? 6'h25 : _temp_cnt_T_128; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_130 = _temp_cnt_T_39[36] ? 6'h24 : _temp_cnt_T_129; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_131 = _temp_cnt_T_39[35] ? 6'h23 : _temp_cnt_T_130; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_132 = _temp_cnt_T_39[34] ? 6'h22 : _temp_cnt_T_131; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_133 = _temp_cnt_T_39[33] ? 6'h21 : _temp_cnt_T_132; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_134 = _temp_cnt_T_39[32] ? 6'h20 : _temp_cnt_T_133; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_135 = _temp_cnt_T_39[31] ? 6'h1f : _temp_cnt_T_134; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_136 = _temp_cnt_T_39[30] ? 6'h1e : _temp_cnt_T_135; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_137 = _temp_cnt_T_39[29] ? 6'h1d : _temp_cnt_T_136; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_138 = _temp_cnt_T_39[28] ? 6'h1c : _temp_cnt_T_137; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_139 = _temp_cnt_T_39[27] ? 6'h1b : _temp_cnt_T_138; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_140 = _temp_cnt_T_39[26] ? 6'h1a : _temp_cnt_T_139; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_141 = _temp_cnt_T_39[25] ? 6'h19 : _temp_cnt_T_140; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_142 = _temp_cnt_T_39[24] ? 6'h18 : _temp_cnt_T_141; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_143 = _temp_cnt_T_39[23] ? 6'h17 : _temp_cnt_T_142; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_144 = _temp_cnt_T_39[22] ? 6'h16 : _temp_cnt_T_143; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_145 = _temp_cnt_T_39[21] ? 6'h15 : _temp_cnt_T_144; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_146 = _temp_cnt_T_39[20] ? 6'h14 : _temp_cnt_T_145; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_147 = _temp_cnt_T_39[19] ? 6'h13 : _temp_cnt_T_146; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_148 = _temp_cnt_T_39[18] ? 6'h12 : _temp_cnt_T_147; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_149 = _temp_cnt_T_39[17] ? 6'h11 : _temp_cnt_T_148; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_150 = _temp_cnt_T_39[16] ? 6'h10 : _temp_cnt_T_149; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_151 = _temp_cnt_T_39[15] ? 6'hf : _temp_cnt_T_150; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_152 = _temp_cnt_T_39[14] ? 6'he : _temp_cnt_T_151; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_153 = _temp_cnt_T_39[13] ? 6'hd : _temp_cnt_T_152; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_154 = _temp_cnt_T_39[12] ? 6'hc : _temp_cnt_T_153; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_155 = _temp_cnt_T_39[11] ? 6'hb : _temp_cnt_T_154; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_156 = _temp_cnt_T_39[10] ? 6'ha : _temp_cnt_T_155; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_157 = _temp_cnt_T_39[9] ? 6'h9 : _temp_cnt_T_156; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_158 = _temp_cnt_T_39[8] ? 6'h8 : _temp_cnt_T_157; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_159 = _temp_cnt_T_39[7] ? 6'h7 : _temp_cnt_T_158; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_160 = _temp_cnt_T_39[6] ? 6'h6 : _temp_cnt_T_159; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_161 = _temp_cnt_T_39[5] ? 6'h5 : _temp_cnt_T_160; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_162 = _temp_cnt_T_39[4] ? 6'h4 : _temp_cnt_T_161; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_163 = _temp_cnt_T_39[3] ? 6'h3 : _temp_cnt_T_162; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_164 = _temp_cnt_T_39[2] ? 6'h2 : _temp_cnt_T_163; // @[Mux.scala 47:70]
  wire [5:0] _temp_cnt_T_165 = _temp_cnt_T_39[1] ? 6'h1 : _temp_cnt_T_164; // @[Mux.scala 47:70]
  wire [5:0] temp_cnt_1 = _temp_cnt_T_39[0] ? 6'h0 : _temp_cnt_T_165; // @[Mux.scala 47:70]
  wire [5:0] _io_cnt_T_1 = _temp_cnt_T_39[0] ? 6'h0 : _temp_cnt_T_165; // @[Cordic_LV.scala 110:32]
  wire [5:0] _io_cnt_T_4 = 6'sh0 - $signed(_io_cnt_T_1); // @[Cordic_LV.scala 110:15]
  wire [63:0] _io_out_T_1 = $signed(temp_x) >>> temp_cnt_1; // @[Cordic_LV.scala 111:23]
  wire [5:0] _GEN_86 = $signed(temp_x) > 64'sh100000 ? $signed(_io_cnt_T_4) : $signed(6'sh0); // @[Cordic_LV.scala 110:12 113:12 98:77]
  wire [63:0] _GEN_87 = $signed(temp_x) > 64'sh100000 ? $signed(_io_out_T_1) : $signed(temp_x); // @[Cordic_LV.scala 111:12 114:12 98:77]
  wire [94:0] _GEN_89 = $signed(temp_x) < 64'sh80000 ? $signed(_io_out_T) : $signed({{31{_GEN_87[63]}},_GEN_87}); // @[Cordic_LV.scala 84:73 97:12]
  assign io_out = _GEN_89[63:0];
  assign io_cnt = $signed(temp_x) < 64'sh80000 ? $signed({{1{_io_cnt_T[4]}},_io_cnt_T}) : $signed(_GEN_86); // @[Cordic_LV.scala 84:73 96:12]
  assign io_flag = $signed(io_x) < 64'sh0 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 76:71 78:13 81:13]
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
  wire [63:0] _current_z_1_T_3 = $signed(current_z_0) - 64'sh80000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_1_T_7 = $signed(current_y_0) - $signed(_GEN_38); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_1_T_7 = $signed(current_z_0) + 64'sh80000; // @[Cordic_LV.scala 46:42]
  wire [61:0] _current_y_2_T = current_x_1[63:2]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_40 = {{2{_current_y_2_T[61]}},_current_y_2_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_2_T_3 = $signed(current_y_1) + $signed(_GEN_40); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_2_T_3 = $signed(current_z_1) - 64'sh40000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_2_T_7 = $signed(current_y_1) - $signed(_GEN_40); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_2_T_7 = $signed(current_z_1) + 64'sh40000; // @[Cordic_LV.scala 46:42]
  wire [60:0] _current_y_3_T = current_x_2[63:3]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_42 = {{3{_current_y_3_T[60]}},_current_y_3_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_3_T_3 = $signed(current_y_2) + $signed(_GEN_42); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_3_T_3 = $signed(current_z_2) - 64'sh20000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_3_T_7 = $signed(current_y_2) - $signed(_GEN_42); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_3_T_7 = $signed(current_z_2) + 64'sh20000; // @[Cordic_LV.scala 46:42]
  wire [59:0] _current_y_4_T = current_x_3[63:4]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_44 = {{4{_current_y_4_T[59]}},_current_y_4_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_4_T_3 = $signed(current_y_3) + $signed(_GEN_44); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_4_T_3 = $signed(current_z_3) - 64'sh10000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_4_T_7 = $signed(current_y_3) - $signed(_GEN_44); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_4_T_7 = $signed(current_z_3) + 64'sh10000; // @[Cordic_LV.scala 46:42]
  wire [58:0] _current_y_5_T = current_x_4[63:5]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_46 = {{5{_current_y_5_T[58]}},_current_y_5_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_5_T_3 = $signed(current_y_4) + $signed(_GEN_46); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_5_T_3 = $signed(current_z_4) - 64'sh8000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_5_T_7 = $signed(current_y_4) - $signed(_GEN_46); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_5_T_7 = $signed(current_z_4) + 64'sh8000; // @[Cordic_LV.scala 46:42]
  wire [57:0] _current_y_6_T = current_x_5[63:6]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_48 = {{6{_current_y_6_T[57]}},_current_y_6_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_6_T_3 = $signed(current_y_5) + $signed(_GEN_48); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_6_T_3 = $signed(current_z_5) - 64'sh4000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_6_T_7 = $signed(current_y_5) - $signed(_GEN_48); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_6_T_7 = $signed(current_z_5) + 64'sh4000; // @[Cordic_LV.scala 46:42]
  wire [56:0] _current_y_7_T = current_x_6[63:7]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_50 = {{7{_current_y_7_T[56]}},_current_y_7_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_7_T_3 = $signed(current_y_6) + $signed(_GEN_50); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_7_T_3 = $signed(current_z_6) - 64'sh2000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_7_T_7 = $signed(current_y_6) - $signed(_GEN_50); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_7_T_7 = $signed(current_z_6) + 64'sh2000; // @[Cordic_LV.scala 46:42]
  wire [55:0] _current_y_8_T = current_x_7[63:8]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_52 = {{8{_current_y_8_T[55]}},_current_y_8_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_8_T_3 = $signed(current_y_7) + $signed(_GEN_52); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_8_T_3 = $signed(current_z_7) - 64'sh1000; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_8_T_7 = $signed(current_y_7) - $signed(_GEN_52); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_8_T_7 = $signed(current_z_7) + 64'sh1000; // @[Cordic_LV.scala 46:42]
  wire [54:0] _current_y_9_T = current_x_8[63:9]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_54 = {{9{_current_y_9_T[54]}},_current_y_9_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_9_T_3 = $signed(current_y_8) + $signed(_GEN_54); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_9_T_3 = $signed(current_z_8) - 64'sh800; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_9_T_7 = $signed(current_y_8) - $signed(_GEN_54); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_9_T_7 = $signed(current_z_8) + 64'sh800; // @[Cordic_LV.scala 46:42]
  wire [53:0] _current_y_10_T = current_x_9[63:10]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_56 = {{10{_current_y_10_T[53]}},_current_y_10_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_10_T_3 = $signed(current_y_9) + $signed(_GEN_56); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_10_T_3 = $signed(current_z_9) - 64'sh400; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_10_T_7 = $signed(current_y_9) - $signed(_GEN_56); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_10_T_7 = $signed(current_z_9) + 64'sh400; // @[Cordic_LV.scala 46:42]
  wire [52:0] _current_y_11_T = current_x_10[63:11]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_58 = {{11{_current_y_11_T[52]}},_current_y_11_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_11_T_3 = $signed(current_y_10) + $signed(_GEN_58); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_11_T_3 = $signed(current_z_10) - 64'sh200; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_11_T_7 = $signed(current_y_10) - $signed(_GEN_58); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_11_T_7 = $signed(current_z_10) + 64'sh200; // @[Cordic_LV.scala 46:42]
  wire [51:0] _current_y_12_T = current_x_11[63:12]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_60 = {{12{_current_y_12_T[51]}},_current_y_12_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_12_T_3 = $signed(current_y_11) + $signed(_GEN_60); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_12_T_3 = $signed(current_z_11) - 64'sh100; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_12_T_7 = $signed(current_y_11) - $signed(_GEN_60); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_12_T_7 = $signed(current_z_11) + 64'sh100; // @[Cordic_LV.scala 46:42]
  wire [50:0] _current_y_13_T = current_x_12[63:13]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_62 = {{13{_current_y_13_T[50]}},_current_y_13_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_13_T_3 = $signed(current_y_12) + $signed(_GEN_62); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_13_T_3 = $signed(current_z_12) - 64'sh80; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_13_T_7 = $signed(current_y_12) - $signed(_GEN_62); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_13_T_7 = $signed(current_z_12) + 64'sh80; // @[Cordic_LV.scala 46:42]
  wire [49:0] _current_y_14_T = current_x_13[63:14]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_64 = {{14{_current_y_14_T[49]}},_current_y_14_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_14_T_3 = $signed(current_y_13) + $signed(_GEN_64); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_14_T_3 = $signed(current_z_13) - 64'sh40; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_14_T_7 = $signed(current_y_13) - $signed(_GEN_64); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_14_T_7 = $signed(current_z_13) + 64'sh40; // @[Cordic_LV.scala 46:42]
  wire [48:0] _current_y_15_T = current_x_14[63:15]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_66 = {{15{_current_y_15_T[48]}},_current_y_15_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_15_T_3 = $signed(current_y_14) + $signed(_GEN_66); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_15_T_3 = $signed(current_z_14) - 64'sh20; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_15_T_7 = $signed(current_y_14) - $signed(_GEN_66); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_15_T_7 = $signed(current_z_14) + 64'sh20; // @[Cordic_LV.scala 46:42]
  wire [47:0] _current_y_16_T = current_x_15[63:16]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_68 = {{16{_current_y_16_T[47]}},_current_y_16_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_16_T_3 = $signed(current_y_15) + $signed(_GEN_68); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_16_T_3 = $signed(current_z_15) - 64'sh10; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_16_T_7 = $signed(current_y_15) - $signed(_GEN_68); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_16_T_7 = $signed(current_z_15) + 64'sh10; // @[Cordic_LV.scala 46:42]
  wire [46:0] _current_y_17_T = current_x_16[63:17]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_70 = {{17{_current_y_17_T[46]}},_current_y_17_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_17_T_3 = $signed(current_y_16) + $signed(_GEN_70); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_17_T_3 = $signed(current_z_16) - 64'sh8; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_17_T_7 = $signed(current_y_16) - $signed(_GEN_70); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_17_T_7 = $signed(current_z_16) + 64'sh8; // @[Cordic_LV.scala 46:42]
  wire [45:0] _current_y_18_T = current_x_17[63:18]; // @[Cordic_LV.scala 42:62]
  wire [63:0] _GEN_72 = {{18{_current_y_18_T[45]}},_current_y_18_T}; // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_y_18_T_3 = $signed(current_y_17) + $signed(_GEN_72); // @[Cordic_LV.scala 42:42]
  wire [63:0] _current_z_18_T_3 = $signed(current_z_17) - 64'sh4; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_y_18_T_7 = $signed(current_y_17) - $signed(_GEN_72); // @[Cordic_LV.scala 45:42]
  wire [63:0] _current_z_18_T_7 = $signed(current_z_17) + 64'sh4; // @[Cordic_LV.scala 46:42]
  wire [63:0] _current_z_19_T_3 = $signed(current_z_18) - 64'sh2; // @[Cordic_LV.scala 43:42]
  wire [63:0] _current_z_19_T_7 = $signed(current_z_18) + 64'sh2; // @[Cordic_LV.scala 46:42]
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
      current_z_0 <= 64'sh100000; // @[Cordic_LV.scala 38:20]
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
  wire [63:0] unit_io_x; // @[Cordic_LV.scala 131:22]
  wire [63:0] unit_io_out; // @[Cordic_LV.scala 131:22]
  wire [5:0] unit_io_cnt; // @[Cordic_LV.scala 131:22]
  wire  unit_io_flag; // @[Cordic_LV.scala 131:22]
  wire [63:0] unit_1_io_x; // @[Cordic_LV.scala 131:22]
  wire [63:0] unit_1_io_out; // @[Cordic_LV.scala 131:22]
  wire [5:0] unit_1_io_cnt; // @[Cordic_LV.scala 131:22]
  wire  unit_1_io_flag; // @[Cordic_LV.scala 131:22]
  wire  cordic_lv_clock; // @[Cordic_LV.scala 157:43]
  wire  cordic_lv_reset; // @[Cordic_LV.scala 157:43]
  wire [63:0] cordic_lv_io_x; // @[Cordic_LV.scala 157:43]
  wire [63:0] cordic_lv_io_y; // @[Cordic_LV.scala 157:43]
  wire [63:0] cordic_lv_io_z; // @[Cordic_LV.scala 157:43]
  wire [63:0] _unnormed_z_T_2 = 64'sh0 - $signed(cordic_lv_io_z); // @[Cordic_LV.scala 164:19]
  wire [63:0] unnormed_z = unit_io_flag & ~unit_1_io_flag | ~unit_io_flag & unit_1_io_flag ? $signed(_unnormed_z_T_2) :
    $signed(cordic_lv_io_z); // @[Cordic_LV.scala 163:89 164:16 166:16]
  wire [5:0] shift_cnt = $signed(unit_1_io_cnt) - $signed(unit_io_cnt); // @[Cordic_LV.scala 168:25]
  wire [5:0] _io_z_T_3 = 6'sh0 - $signed(shift_cnt); // @[Cordic_LV.scala 170:46]
  wire [126:0] _GEN_0 = {{63{unnormed_z[63]}},unnormed_z}; // @[Cordic_LV.scala 170:24]
  wire [126:0] _io_z_T_4 = $signed(_GEN_0) << _io_z_T_3; // @[Cordic_LV.scala 170:24]
  wire [5:0] _io_z_T_5 = $signed(unit_1_io_cnt) - $signed(unit_io_cnt); // @[Cordic_LV.scala 172:43]
  wire [63:0] _io_z_T_6 = $signed(unnormed_z) >>> _io_z_T_5; // @[Cordic_LV.scala 172:24]
  wire [126:0] _GEN_1 = $signed(shift_cnt) < 6'sh0 ? $signed(_io_z_T_4) : $signed({{63{_io_z_T_6[63]}},_io_z_T_6}); // @[Cordic_LV.scala 169:24 170:10 172:10]
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
  CORDIC_LV_ORIGIN cordic_lv ( // @[Cordic_LV.scala 157:43]
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
  assign cordic_lv_io_x = unit_io_out; // @[Cordic_LV.scala 158:18]
  assign cordic_lv_io_y = unit_1_io_out; // @[Cordic_LV.scala 159:18]
endmodule
module mac_fixedpoint_v1(
  input  [63:0] io_vectorA_0,
  input  [63:0] io_vectorB_0,
  output [63:0] io_result
);
  wire [127:0] _res_0_T = $signed(io_vectorA_0) * $signed(io_vectorB_0); // @[Lower_Triangular_Matrix_Inversion_V1.scala 25:31]
  wire [107:0] _GEN_0 = _res_0_T[127:20]; // @[Lower_Triangular_Matrix_Inversion_V1.scala 21:17 25:14]
  assign io_result = _GEN_0[63:0]; // @[Lower_Triangular_Matrix_Inversion_V1.scala 21:17 25:14]
endmodule
module mac_fixedpoint_v1_3(
  input  [63:0] io_vectorA_0,
  input  [63:0] io_vectorA_1,
  input  [63:0] io_vectorB_0,
  input  [63:0] io_vectorB_1,
  output [63:0] io_result
);
  wire [127:0] _res_0_T = $signed(io_vectorA_0) * $signed(io_vectorB_0); // @[Lower_Triangular_Matrix_Inversion_V1.scala 25:31]
  wire [127:0] _res_1_T = $signed(io_vectorA_1) * $signed(io_vectorB_1); // @[Lower_Triangular_Matrix_Inversion_V1.scala 27:44]
  wire [107:0] _GEN_0 = _res_0_T[127:20]; // @[Lower_Triangular_Matrix_Inversion_V1.scala 21:17 25:14]
  wire [63:0] res_0 = _GEN_0[63:0]; // @[Lower_Triangular_Matrix_Inversion_V1.scala 21:17 25:14]
  wire [83:0] _GEN_2 = {$signed(res_0), 20'h0}; // @[Lower_Triangular_Matrix_Inversion_V1.scala 27:28]
  wire [127:0] _GEN_3 = {{44{_GEN_2[83]}},_GEN_2}; // @[Lower_Triangular_Matrix_Inversion_V1.scala 27:28]
  wire [127:0] _res_1_T_3 = $signed(_GEN_3) + $signed(_res_1_T); // @[Lower_Triangular_Matrix_Inversion_V1.scala 27:28]
  wire [107:0] _GEN_4 = _res_1_T_3[127:20]; // @[Lower_Triangular_Matrix_Inversion_V1.scala 21:17 27:14]
  assign io_result = _GEN_4[63:0]; // @[Lower_Triangular_Matrix_Inversion_V1.scala 21:17 27:14]
endmodule
module mac_fixedpoint_v1_5(
  input  [63:0] io_vectorA_0,
  input  [63:0] io_vectorA_1,
  input  [63:0] io_vectorA_2,
  input  [63:0] io_vectorB_0,
  input  [63:0] io_vectorB_1,
  input  [63:0] io_vectorB_2,
  output [63:0] io_result
);
  wire [127:0] _res_0_T = $signed(io_vectorA_0) * $signed(io_vectorB_0); // @[Lower_Triangular_Matrix_Inversion_V1.scala 25:31]
  wire [127:0] _res_1_T = $signed(io_vectorA_1) * $signed(io_vectorB_1); // @[Lower_Triangular_Matrix_Inversion_V1.scala 27:44]
  wire [107:0] _GEN_0 = _res_0_T[127:20]; // @[Lower_Triangular_Matrix_Inversion_V1.scala 21:17 25:14]
  wire [63:0] res_0 = _GEN_0[63:0]; // @[Lower_Triangular_Matrix_Inversion_V1.scala 21:17 25:14]
  wire [83:0] _GEN_2 = {$signed(res_0), 20'h0}; // @[Lower_Triangular_Matrix_Inversion_V1.scala 27:28]
  wire [127:0] _GEN_3 = {{44{_GEN_2[83]}},_GEN_2}; // @[Lower_Triangular_Matrix_Inversion_V1.scala 27:28]
  wire [127:0] _res_1_T_3 = $signed(_GEN_3) + $signed(_res_1_T); // @[Lower_Triangular_Matrix_Inversion_V1.scala 27:28]
  wire [127:0] _res_2_T = $signed(io_vectorA_2) * $signed(io_vectorB_2); // @[Lower_Triangular_Matrix_Inversion_V1.scala 27:44]
  wire [107:0] _GEN_4 = _res_1_T_3[127:20]; // @[Lower_Triangular_Matrix_Inversion_V1.scala 21:17 27:14]
  wire [63:0] res_1 = _GEN_4[63:0]; // @[Lower_Triangular_Matrix_Inversion_V1.scala 21:17 27:14]
  wire [83:0] _GEN_6 = {$signed(res_1), 20'h0}; // @[Lower_Triangular_Matrix_Inversion_V1.scala 27:28]
  wire [127:0] _GEN_7 = {{44{_GEN_6[83]}},_GEN_6}; // @[Lower_Triangular_Matrix_Inversion_V1.scala 27:28]
  wire [127:0] _res_2_T_3 = $signed(_GEN_7) + $signed(_res_2_T); // @[Lower_Triangular_Matrix_Inversion_V1.scala 27:28]
  wire [107:0] _GEN_8 = _res_2_T_3[127:20]; // @[Lower_Triangular_Matrix_Inversion_V1.scala 21:17 27:14]
  assign io_result = _GEN_8[63:0]; // @[Lower_Triangular_Matrix_Inversion_V1.scala 21:17 27:14]
endmodule
module lower_triangular_matrix_inversion_fixedpoint_v1(
  input         clock,
  input         reset,
  input         io_reset,
  input         io_ready,
  input  [63:0] io_matrixIn_0,
  input  [63:0] io_matrixIn_1,
  input  [63:0] io_matrixIn_2,
  input  [63:0] io_matrixIn_3,
  input  [63:0] io_matrixIn_4,
  input  [63:0] io_matrixIn_5,
  input  [63:0] io_matrixIn_6,
  input  [63:0] io_matrixIn_7,
  input  [63:0] io_matrixIn_8,
  input  [63:0] io_matrixIn_9,
  output [63:0] io_matrixOut_0,
  output [63:0] io_matrixOut_1,
  output [63:0] io_matrixOut_2,
  output [63:0] io_matrixOut_3,
  output [63:0] io_matrixOut_4,
  output [63:0] io_matrixOut_5,
  output [63:0] io_matrixOut_6,
  output [63:0] io_matrixOut_7,
  output [63:0] io_matrixOut_8,
  output [63:0] io_matrixOut_9,
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
  reg [31:0] _RAND_20;
`endif // RANDOMIZE_REG_INIT
  wire  reg_out_0_divide_clock; // @[Cordic_LV.scala 190:24]
  wire  reg_out_0_divide_reset; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_0_divide_io_x; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_0_divide_io_y; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_0_divide_io_z; // @[Cordic_LV.scala 190:24]
  wire  reg_out_2_divide_clock; // @[Cordic_LV.scala 190:24]
  wire  reg_out_2_divide_reset; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_2_divide_io_x; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_2_divide_io_y; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_2_divide_io_z; // @[Cordic_LV.scala 190:24]
  wire  reg_out_5_divide_clock; // @[Cordic_LV.scala 190:24]
  wire  reg_out_5_divide_reset; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_5_divide_io_x; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_5_divide_io_y; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_5_divide_io_z; // @[Cordic_LV.scala 190:24]
  wire  reg_out_9_divide_clock; // @[Cordic_LV.scala 190:24]
  wire  reg_out_9_divide_reset; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_9_divide_io_x; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_9_divide_io_y; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_9_divide_io_z; // @[Cordic_LV.scala 190:24]
  wire [63:0] mac_res_unit_io_vectorA_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_io_vectorB_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_io_result; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire  reg_out_1_divide_clock; // @[Cordic_LV.scala 190:24]
  wire  reg_out_1_divide_reset; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_1_divide_io_x; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_1_divide_io_y; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_1_divide_io_z; // @[Cordic_LV.scala 190:24]
  wire [63:0] mac_res_unit_1_io_vectorA_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_1_io_vectorB_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_1_io_result; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire  reg_out_4_divide_clock; // @[Cordic_LV.scala 190:24]
  wire  reg_out_4_divide_reset; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_4_divide_io_x; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_4_divide_io_y; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_4_divide_io_z; // @[Cordic_LV.scala 190:24]
  wire [63:0] mac_res_unit_2_io_vectorA_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_2_io_vectorB_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_2_io_result; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire  reg_out_8_divide_clock; // @[Cordic_LV.scala 190:24]
  wire  reg_out_8_divide_reset; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_8_divide_io_x; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_8_divide_io_y; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_8_divide_io_z; // @[Cordic_LV.scala 190:24]
  wire [63:0] mac_res_unit_3_io_vectorA_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_3_io_vectorA_1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_3_io_vectorB_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_3_io_vectorB_1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_3_io_result; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire  reg_out_3_divide_clock; // @[Cordic_LV.scala 190:24]
  wire  reg_out_3_divide_reset; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_3_divide_io_x; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_3_divide_io_y; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_3_divide_io_z; // @[Cordic_LV.scala 190:24]
  wire [63:0] mac_res_unit_4_io_vectorA_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_4_io_vectorA_1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_4_io_vectorB_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_4_io_vectorB_1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_4_io_result; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire  reg_out_7_divide_clock; // @[Cordic_LV.scala 190:24]
  wire  reg_out_7_divide_reset; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_7_divide_io_x; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_7_divide_io_y; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_7_divide_io_z; // @[Cordic_LV.scala 190:24]
  wire [63:0] mac_res_unit_5_io_vectorA_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_5_io_vectorA_1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_5_io_vectorA_2; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_5_io_vectorB_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_5_io_vectorB_1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_5_io_vectorB_2; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire [63:0] mac_res_unit_5_io_result; // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
  wire  reg_out_6_divide_clock; // @[Cordic_LV.scala 190:24]
  wire  reg_out_6_divide_reset; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_6_divide_io_x; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_6_divide_io_y; // @[Cordic_LV.scala 190:24]
  wire [63:0] reg_out_6_divide_io_z; // @[Cordic_LV.scala 190:24]
  reg [63:0] reg_in_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 75:36]
  reg [63:0] reg_in_1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 75:36]
  reg [63:0] reg_in_2; // @[Lower_Triangular_Matrix_Inversion_V1.scala 75:36]
  reg [63:0] reg_in_3; // @[Lower_Triangular_Matrix_Inversion_V1.scala 75:36]
  reg [63:0] reg_in_4; // @[Lower_Triangular_Matrix_Inversion_V1.scala 75:36]
  reg [63:0] reg_in_5; // @[Lower_Triangular_Matrix_Inversion_V1.scala 75:36]
  reg [63:0] reg_in_6; // @[Lower_Triangular_Matrix_Inversion_V1.scala 75:36]
  reg [63:0] reg_in_7; // @[Lower_Triangular_Matrix_Inversion_V1.scala 75:36]
  reg [63:0] reg_in_8; // @[Lower_Triangular_Matrix_Inversion_V1.scala 75:36]
  reg [63:0] reg_in_9; // @[Lower_Triangular_Matrix_Inversion_V1.scala 75:36]
  reg [63:0] reg_out_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 76:37]
  reg [63:0] reg_out_1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 76:37]
  reg [63:0] reg_out_2; // @[Lower_Triangular_Matrix_Inversion_V1.scala 76:37]
  reg [63:0] reg_out_3; // @[Lower_Triangular_Matrix_Inversion_V1.scala 76:37]
  reg [63:0] reg_out_4; // @[Lower_Triangular_Matrix_Inversion_V1.scala 76:37]
  reg [63:0] reg_out_5; // @[Lower_Triangular_Matrix_Inversion_V1.scala 76:37]
  reg [63:0] reg_out_6; // @[Lower_Triangular_Matrix_Inversion_V1.scala 76:37]
  reg [63:0] reg_out_7; // @[Lower_Triangular_Matrix_Inversion_V1.scala 76:37]
  reg [63:0] reg_out_8; // @[Lower_Triangular_Matrix_Inversion_V1.scala 76:37]
  reg [63:0] reg_out_9; // @[Lower_Triangular_Matrix_Inversion_V1.scala 76:37]
  reg [31:0] reg_clk_cnt; // @[Lower_Triangular_Matrix_Inversion_V1.scala 77:34]
  wire [31:0] _reg_clk_cnt_T_1 = reg_clk_cnt + 32'h1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 91:32]
  cordic_divide reg_out_0_divide ( // @[Cordic_LV.scala 190:24]
    .clock(reg_out_0_divide_clock),
    .reset(reg_out_0_divide_reset),
    .io_x(reg_out_0_divide_io_x),
    .io_y(reg_out_0_divide_io_y),
    .io_z(reg_out_0_divide_io_z)
  );
  cordic_divide reg_out_2_divide ( // @[Cordic_LV.scala 190:24]
    .clock(reg_out_2_divide_clock),
    .reset(reg_out_2_divide_reset),
    .io_x(reg_out_2_divide_io_x),
    .io_y(reg_out_2_divide_io_y),
    .io_z(reg_out_2_divide_io_z)
  );
  cordic_divide reg_out_5_divide ( // @[Cordic_LV.scala 190:24]
    .clock(reg_out_5_divide_clock),
    .reset(reg_out_5_divide_reset),
    .io_x(reg_out_5_divide_io_x),
    .io_y(reg_out_5_divide_io_y),
    .io_z(reg_out_5_divide_io_z)
  );
  cordic_divide reg_out_9_divide ( // @[Cordic_LV.scala 190:24]
    .clock(reg_out_9_divide_clock),
    .reset(reg_out_9_divide_reset),
    .io_x(reg_out_9_divide_io_x),
    .io_y(reg_out_9_divide_io_y),
    .io_z(reg_out_9_divide_io_z)
  );
  mac_fixedpoint_v1 mac_res_unit ( // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
    .io_vectorA_0(mac_res_unit_io_vectorA_0),
    .io_vectorB_0(mac_res_unit_io_vectorB_0),
    .io_result(mac_res_unit_io_result)
  );
  cordic_divide reg_out_1_divide ( // @[Cordic_LV.scala 190:24]
    .clock(reg_out_1_divide_clock),
    .reset(reg_out_1_divide_reset),
    .io_x(reg_out_1_divide_io_x),
    .io_y(reg_out_1_divide_io_y),
    .io_z(reg_out_1_divide_io_z)
  );
  mac_fixedpoint_v1 mac_res_unit_1 ( // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
    .io_vectorA_0(mac_res_unit_1_io_vectorA_0),
    .io_vectorB_0(mac_res_unit_1_io_vectorB_0),
    .io_result(mac_res_unit_1_io_result)
  );
  cordic_divide reg_out_4_divide ( // @[Cordic_LV.scala 190:24]
    .clock(reg_out_4_divide_clock),
    .reset(reg_out_4_divide_reset),
    .io_x(reg_out_4_divide_io_x),
    .io_y(reg_out_4_divide_io_y),
    .io_z(reg_out_4_divide_io_z)
  );
  mac_fixedpoint_v1 mac_res_unit_2 ( // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
    .io_vectorA_0(mac_res_unit_2_io_vectorA_0),
    .io_vectorB_0(mac_res_unit_2_io_vectorB_0),
    .io_result(mac_res_unit_2_io_result)
  );
  cordic_divide reg_out_8_divide ( // @[Cordic_LV.scala 190:24]
    .clock(reg_out_8_divide_clock),
    .reset(reg_out_8_divide_reset),
    .io_x(reg_out_8_divide_io_x),
    .io_y(reg_out_8_divide_io_y),
    .io_z(reg_out_8_divide_io_z)
  );
  mac_fixedpoint_v1_3 mac_res_unit_3 ( // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
    .io_vectorA_0(mac_res_unit_3_io_vectorA_0),
    .io_vectorA_1(mac_res_unit_3_io_vectorA_1),
    .io_vectorB_0(mac_res_unit_3_io_vectorB_0),
    .io_vectorB_1(mac_res_unit_3_io_vectorB_1),
    .io_result(mac_res_unit_3_io_result)
  );
  cordic_divide reg_out_3_divide ( // @[Cordic_LV.scala 190:24]
    .clock(reg_out_3_divide_clock),
    .reset(reg_out_3_divide_reset),
    .io_x(reg_out_3_divide_io_x),
    .io_y(reg_out_3_divide_io_y),
    .io_z(reg_out_3_divide_io_z)
  );
  mac_fixedpoint_v1_3 mac_res_unit_4 ( // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
    .io_vectorA_0(mac_res_unit_4_io_vectorA_0),
    .io_vectorA_1(mac_res_unit_4_io_vectorA_1),
    .io_vectorB_0(mac_res_unit_4_io_vectorB_0),
    .io_vectorB_1(mac_res_unit_4_io_vectorB_1),
    .io_result(mac_res_unit_4_io_result)
  );
  cordic_divide reg_out_7_divide ( // @[Cordic_LV.scala 190:24]
    .clock(reg_out_7_divide_clock),
    .reset(reg_out_7_divide_reset),
    .io_x(reg_out_7_divide_io_x),
    .io_y(reg_out_7_divide_io_y),
    .io_z(reg_out_7_divide_io_z)
  );
  mac_fixedpoint_v1_5 mac_res_unit_5 ( // @[Lower_Triangular_Matrix_Inversion_V1.scala 42:22]
    .io_vectorA_0(mac_res_unit_5_io_vectorA_0),
    .io_vectorA_1(mac_res_unit_5_io_vectorA_1),
    .io_vectorA_2(mac_res_unit_5_io_vectorA_2),
    .io_vectorB_0(mac_res_unit_5_io_vectorB_0),
    .io_vectorB_1(mac_res_unit_5_io_vectorB_1),
    .io_vectorB_2(mac_res_unit_5_io_vectorB_2),
    .io_result(mac_res_unit_5_io_result)
  );
  cordic_divide reg_out_6_divide ( // @[Cordic_LV.scala 190:24]
    .clock(reg_out_6_divide_clock),
    .reset(reg_out_6_divide_reset),
    .io_x(reg_out_6_divide_io_x),
    .io_y(reg_out_6_divide_io_y),
    .io_z(reg_out_6_divide_io_z)
  );
  assign io_matrixOut_0 = reg_out_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 129:16]
  assign io_matrixOut_1 = reg_out_1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 129:16]
  assign io_matrixOut_2 = reg_out_2; // @[Lower_Triangular_Matrix_Inversion_V1.scala 129:16]
  assign io_matrixOut_3 = reg_out_3; // @[Lower_Triangular_Matrix_Inversion_V1.scala 129:16]
  assign io_matrixOut_4 = reg_out_4; // @[Lower_Triangular_Matrix_Inversion_V1.scala 129:16]
  assign io_matrixOut_5 = reg_out_5; // @[Lower_Triangular_Matrix_Inversion_V1.scala 129:16]
  assign io_matrixOut_6 = reg_out_6; // @[Lower_Triangular_Matrix_Inversion_V1.scala 129:16]
  assign io_matrixOut_7 = reg_out_7; // @[Lower_Triangular_Matrix_Inversion_V1.scala 129:16]
  assign io_matrixOut_8 = reg_out_8; // @[Lower_Triangular_Matrix_Inversion_V1.scala 129:16]
  assign io_matrixOut_9 = reg_out_9; // @[Lower_Triangular_Matrix_Inversion_V1.scala 129:16]
  assign io_valid = reg_clk_cnt >= 32'h54; // @[Lower_Triangular_Matrix_Inversion_V1.scala 124:20]
  assign reg_out_0_divide_clock = clock;
  assign reg_out_0_divide_reset = reset;
  assign reg_out_0_divide_io_x = reg_in_0; // @[Cordic_LV.scala 191:17]
  assign reg_out_0_divide_io_y = 64'sh100000; // @[Cordic_LV.scala 192:17]
  assign reg_out_2_divide_clock = clock;
  assign reg_out_2_divide_reset = reset;
  assign reg_out_2_divide_io_x = reg_in_2; // @[Cordic_LV.scala 191:17]
  assign reg_out_2_divide_io_y = 64'sh100000; // @[Cordic_LV.scala 192:17]
  assign reg_out_5_divide_clock = clock;
  assign reg_out_5_divide_reset = reset;
  assign reg_out_5_divide_io_x = reg_in_5; // @[Cordic_LV.scala 191:17]
  assign reg_out_5_divide_io_y = 64'sh100000; // @[Cordic_LV.scala 192:17]
  assign reg_out_9_divide_clock = clock;
  assign reg_out_9_divide_reset = reset;
  assign reg_out_9_divide_io_x = reg_in_9; // @[Cordic_LV.scala 191:17]
  assign reg_out_9_divide_io_y = 64'sh100000; // @[Cordic_LV.scala 192:17]
  assign mac_res_unit_io_vectorA_0 = reg_in_1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 110:23 115:22]
  assign mac_res_unit_io_vectorB_0 = reg_out_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 111:23 116:22]
  assign reg_out_1_divide_clock = clock;
  assign reg_out_1_divide_reset = reset;
  assign reg_out_1_divide_io_x = reg_in_2; // @[Cordic_LV.scala 191:17]
  assign reg_out_1_divide_io_y = 64'sh0 - $signed(mac_res_unit_io_result); // @[Lower_Triangular_Matrix_Inversion_V1.scala 119:61]
  assign mac_res_unit_1_io_vectorA_0 = reg_in_4; // @[Lower_Triangular_Matrix_Inversion_V1.scala 110:23 115:22]
  assign mac_res_unit_1_io_vectorB_0 = reg_out_2; // @[Lower_Triangular_Matrix_Inversion_V1.scala 111:23 116:22]
  assign reg_out_4_divide_clock = clock;
  assign reg_out_4_divide_reset = reset;
  assign reg_out_4_divide_io_x = reg_in_5; // @[Cordic_LV.scala 191:17]
  assign reg_out_4_divide_io_y = 64'sh0 - $signed(mac_res_unit_1_io_result); // @[Lower_Triangular_Matrix_Inversion_V1.scala 119:61]
  assign mac_res_unit_2_io_vectorA_0 = reg_in_8; // @[Lower_Triangular_Matrix_Inversion_V1.scala 110:23 115:22]
  assign mac_res_unit_2_io_vectorB_0 = reg_out_5; // @[Lower_Triangular_Matrix_Inversion_V1.scala 111:23 116:22]
  assign reg_out_8_divide_clock = clock;
  assign reg_out_8_divide_reset = reset;
  assign reg_out_8_divide_io_x = reg_in_9; // @[Cordic_LV.scala 191:17]
  assign reg_out_8_divide_io_y = 64'sh0 - $signed(mac_res_unit_2_io_result); // @[Lower_Triangular_Matrix_Inversion_V1.scala 119:61]
  assign mac_res_unit_3_io_vectorA_0 = reg_in_3; // @[Lower_Triangular_Matrix_Inversion_V1.scala 110:23 115:22]
  assign mac_res_unit_3_io_vectorA_1 = reg_in_4; // @[Lower_Triangular_Matrix_Inversion_V1.scala 110:23 115:22]
  assign mac_res_unit_3_io_vectorB_0 = reg_out_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 111:23 116:22]
  assign mac_res_unit_3_io_vectorB_1 = reg_out_1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 111:23 116:22]
  assign reg_out_3_divide_clock = clock;
  assign reg_out_3_divide_reset = reset;
  assign reg_out_3_divide_io_x = reg_in_5; // @[Cordic_LV.scala 191:17]
  assign reg_out_3_divide_io_y = 64'sh0 - $signed(mac_res_unit_3_io_result); // @[Lower_Triangular_Matrix_Inversion_V1.scala 119:61]
  assign mac_res_unit_4_io_vectorA_0 = reg_in_7; // @[Lower_Triangular_Matrix_Inversion_V1.scala 110:23 115:22]
  assign mac_res_unit_4_io_vectorA_1 = reg_in_8; // @[Lower_Triangular_Matrix_Inversion_V1.scala 110:23 115:22]
  assign mac_res_unit_4_io_vectorB_0 = reg_out_2; // @[Lower_Triangular_Matrix_Inversion_V1.scala 111:23 116:22]
  assign mac_res_unit_4_io_vectorB_1 = reg_out_4; // @[Lower_Triangular_Matrix_Inversion_V1.scala 111:23 116:22]
  assign reg_out_7_divide_clock = clock;
  assign reg_out_7_divide_reset = reset;
  assign reg_out_7_divide_io_x = reg_in_9; // @[Cordic_LV.scala 191:17]
  assign reg_out_7_divide_io_y = 64'sh0 - $signed(mac_res_unit_4_io_result); // @[Lower_Triangular_Matrix_Inversion_V1.scala 119:61]
  assign mac_res_unit_5_io_vectorA_0 = reg_in_6; // @[Lower_Triangular_Matrix_Inversion_V1.scala 110:23 115:22]
  assign mac_res_unit_5_io_vectorA_1 = reg_in_7; // @[Lower_Triangular_Matrix_Inversion_V1.scala 110:23 115:22]
  assign mac_res_unit_5_io_vectorA_2 = reg_in_8; // @[Lower_Triangular_Matrix_Inversion_V1.scala 110:23 115:22]
  assign mac_res_unit_5_io_vectorB_0 = reg_out_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 111:23 116:22]
  assign mac_res_unit_5_io_vectorB_1 = reg_out_1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 111:23 116:22]
  assign mac_res_unit_5_io_vectorB_2 = reg_out_3; // @[Lower_Triangular_Matrix_Inversion_V1.scala 111:23 116:22]
  assign reg_out_6_divide_clock = clock;
  assign reg_out_6_divide_reset = reset;
  assign reg_out_6_divide_io_x = reg_in_9; // @[Cordic_LV.scala 191:17]
  assign reg_out_6_divide_io_y = 64'sh0 - $signed(mac_res_unit_5_io_result); // @[Lower_Triangular_Matrix_Inversion_V1.scala 119:61]
  always @(posedge clock) begin
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 80:18]
      reg_in_0 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 82:17]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 86:24]
      reg_in_0 <= io_matrixIn_0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 88:12]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 80:18]
      reg_in_1 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 82:17]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 86:24]
      reg_in_1 <= io_matrixIn_1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 88:12]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 80:18]
      reg_in_2 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 82:17]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 86:24]
      reg_in_2 <= io_matrixIn_2; // @[Lower_Triangular_Matrix_Inversion_V1.scala 88:12]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 80:18]
      reg_in_3 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 82:17]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 86:24]
      reg_in_3 <= io_matrixIn_3; // @[Lower_Triangular_Matrix_Inversion_V1.scala 88:12]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 80:18]
      reg_in_4 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 82:17]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 86:24]
      reg_in_4 <= io_matrixIn_4; // @[Lower_Triangular_Matrix_Inversion_V1.scala 88:12]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 80:18]
      reg_in_5 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 82:17]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 86:24]
      reg_in_5 <= io_matrixIn_5; // @[Lower_Triangular_Matrix_Inversion_V1.scala 88:12]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 80:18]
      reg_in_6 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 82:17]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 86:24]
      reg_in_6 <= io_matrixIn_6; // @[Lower_Triangular_Matrix_Inversion_V1.scala 88:12]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 80:18]
      reg_in_7 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 82:17]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 86:24]
      reg_in_7 <= io_matrixIn_7; // @[Lower_Triangular_Matrix_Inversion_V1.scala 88:12]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 80:18]
      reg_in_8 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 82:17]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 86:24]
      reg_in_8 <= io_matrixIn_8; // @[Lower_Triangular_Matrix_Inversion_V1.scala 88:12]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 80:18]
      reg_in_9 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 82:17]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 86:24]
      reg_in_9 <= io_matrixIn_9; // @[Lower_Triangular_Matrix_Inversion_V1.scala 88:12]
    end
    reg_out_0 <= reg_out_0_divide_io_z; // @[Lower_Triangular_Matrix_Inversion_V1.scala 99:20]
    reg_out_1 <= reg_out_1_divide_io_z; // @[Lower_Triangular_Matrix_Inversion_V1.scala 119:26]
    reg_out_2 <= reg_out_2_divide_io_z; // @[Lower_Triangular_Matrix_Inversion_V1.scala 99:20]
    reg_out_3 <= reg_out_3_divide_io_z; // @[Lower_Triangular_Matrix_Inversion_V1.scala 119:26]
    reg_out_4 <= reg_out_4_divide_io_z; // @[Lower_Triangular_Matrix_Inversion_V1.scala 119:26]
    reg_out_5 <= reg_out_5_divide_io_z; // @[Lower_Triangular_Matrix_Inversion_V1.scala 99:20]
    reg_out_6 <= reg_out_6_divide_io_z; // @[Lower_Triangular_Matrix_Inversion_V1.scala 119:26]
    reg_out_7 <= reg_out_7_divide_io_z; // @[Lower_Triangular_Matrix_Inversion_V1.scala 119:26]
    reg_out_8 <= reg_out_8_divide_io_z; // @[Lower_Triangular_Matrix_Inversion_V1.scala 119:26]
    reg_out_9 <= reg_out_9_divide_io_z; // @[Lower_Triangular_Matrix_Inversion_V1.scala 99:20]
    if (reset) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 77:34]
      reg_clk_cnt <= 32'h0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 77:34]
    end else if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 80:18]
      reg_clk_cnt <= 32'h0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 85:17]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_V1.scala 86:24]
      reg_clk_cnt <= 32'h0; // @[Lower_Triangular_Matrix_Inversion_V1.scala 89:17]
    end else begin
      reg_clk_cnt <= _reg_clk_cnt_T_1; // @[Lower_Triangular_Matrix_Inversion_V1.scala 91:17]
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
  reg_in_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  reg_in_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  reg_in_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  reg_in_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  reg_in_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  reg_in_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  reg_in_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  reg_in_7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  reg_in_8 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  reg_in_9 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  reg_out_0 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  reg_out_1 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  reg_out_2 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  reg_out_3 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  reg_out_4 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  reg_out_5 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  reg_out_6 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  reg_out_7 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  reg_out_8 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  reg_out_9 = _RAND_19[63:0];
  _RAND_20 = {1{`RANDOM}};
  reg_clk_cnt = _RAND_20[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module lower_triangular_matrix_inversion_complex_v1(
  input         clock,
  input         reset,
  input         io_reset,
  input         io_ready,
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
  wire  matrix_mul_unit_clock; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire  matrix_mul_unit_io_reset; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire  matrix_mul_unit_io_ready; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixA_0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixA_4; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixA_5; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixA_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixA_9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixA_10; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixA_12; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixA_13; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixA_14; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixA_15; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixB_0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixB_4; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixB_5; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixB_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixB_9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixB_10; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixB_12; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixB_13; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixB_14; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixB_15; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixC_0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixC_4; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixC_5; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixC_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixC_9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixC_10; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixC_12; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixC_13; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixC_14; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire [63:0] matrix_mul_unit_io_matrixC_15; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire  matrix_mul_unit_io_valid; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
  wire  lower_tri_mat_inv_unit_clock; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire  lower_tri_mat_inv_unit_reset; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire  lower_tri_mat_inv_unit_io_reset; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire  lower_tri_mat_inv_unit_io_ready; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixIn_0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixIn_1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixIn_2; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixIn_3; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixIn_4; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixIn_5; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixIn_6; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixIn_7; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixIn_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixIn_9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixOut_0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixOut_1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixOut_2; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixOut_3; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixOut_4; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixOut_5; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixOut_6; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixOut_7; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixOut_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire [63:0] lower_tri_mat_inv_unit_io_matrixOut_9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  wire  lower_tri_mat_inv_unit_io_valid; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
  reg [63:0] reg_x_0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 35:35]
  reg [63:0] reg_x_1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 35:35]
  reg [63:0] reg_x_2; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 35:35]
  reg [63:0] reg_x_3; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 35:35]
  reg [63:0] reg_x_4; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 35:35]
  reg [63:0] reg_x_5; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 35:35]
  reg [63:0] reg_x_6; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 35:35]
  reg [63:0] reg_x_7; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 35:35]
  reg [63:0] reg_x_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 35:35]
  reg [63:0] reg_x_9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 35:35]
  reg [63:0] reg_y_0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 36:35]
  reg [63:0] reg_y_1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 36:35]
  reg [63:0] reg_y_2; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 36:35]
  reg [63:0] reg_y_3; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 36:35]
  reg [63:0] reg_y_4; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 36:35]
  reg [63:0] reg_y_5; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 36:35]
  reg [63:0] reg_y_6; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 36:35]
  reg [63:0] reg_y_7; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 36:35]
  reg [63:0] reg_y_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 36:35]
  reg [63:0] reg_y_9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 36:35]
  reg [63:0] reg_x_inv_0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 37:39]
  reg [63:0] reg_x_inv_1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 37:39]
  reg [63:0] reg_x_inv_2; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 37:39]
  reg [63:0] reg_x_inv_3; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 37:39]
  reg [63:0] reg_x_inv_4; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 37:39]
  reg [63:0] reg_x_inv_5; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 37:39]
  reg [63:0] reg_x_inv_6; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 37:39]
  reg [63:0] reg_x_inv_7; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 37:39]
  reg [63:0] reg_x_inv_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 37:39]
  reg [63:0] reg_x_inv_9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 37:39]
  reg [63:0] reg_x_inv_y_0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 38:41]
  reg [63:0] reg_x_inv_y_1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 38:41]
  reg [63:0] reg_x_inv_y_2; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 38:41]
  reg [63:0] reg_x_inv_y_3; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 38:41]
  reg [63:0] reg_x_inv_y_4; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 38:41]
  reg [63:0] reg_x_inv_y_5; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 38:41]
  reg [63:0] reg_x_inv_y_6; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 38:41]
  reg [63:0] reg_x_inv_y_7; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 38:41]
  reg [63:0] reg_x_inv_y_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 38:41]
  reg [63:0] reg_x_inv_y_9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 38:41]
  reg [63:0] reg_u_0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 39:35]
  reg [63:0] reg_u_1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 39:35]
  reg [63:0] reg_u_2; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 39:35]
  reg [63:0] reg_u_3; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 39:35]
  reg [63:0] reg_u_4; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 39:35]
  reg [63:0] reg_u_5; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 39:35]
  reg [63:0] reg_u_6; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 39:35]
  reg [63:0] reg_u_7; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 39:35]
  reg [63:0] reg_u_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 39:35]
  reg [63:0] reg_u_9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 39:35]
  reg [63:0] reg_v_0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 40:35]
  reg [63:0] reg_v_1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 40:35]
  reg [63:0] reg_v_2; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 40:35]
  reg [63:0] reg_v_3; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 40:35]
  reg [63:0] reg_v_4; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 40:35]
  reg [63:0] reg_v_5; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 40:35]
  reg [63:0] reg_v_6; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 40:35]
  reg [63:0] reg_v_7; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 40:35]
  reg [63:0] reg_v_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 40:35]
  reg [63:0] reg_v_9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 40:35]
  reg [3:0] reg_step_status; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 41:38]
  wire [3:0] _GEN_20 = io_ready ? 4'h1 : reg_step_status; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24 82:21 41:38]
  wire [63:0] _GEN_23 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_0); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 70:20 37:39]
  wire [63:0] _GEN_24 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_y_0); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 71:22 38:41]
  wire [63:0] _GEN_25 = io_reset ? $signed(64'sh0) : $signed(reg_u_0); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 72:16 39:35]
  wire [63:0] _GEN_26 = io_reset ? $signed(64'sh0) : $signed(reg_v_0); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 73:16 40:35]
  wire [63:0] _GEN_29 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_1); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 70:20 37:39]
  wire [63:0] _GEN_30 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_y_1); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 71:22 38:41]
  wire [63:0] _GEN_31 = io_reset ? $signed(64'sh0) : $signed(reg_u_1); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 72:16 39:35]
  wire [63:0] _GEN_32 = io_reset ? $signed(64'sh0) : $signed(reg_v_1); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 73:16 40:35]
  wire [63:0] _GEN_35 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 70:20 37:39]
  wire [63:0] _GEN_36 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_y_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 71:22 38:41]
  wire [63:0] _GEN_37 = io_reset ? $signed(64'sh0) : $signed(reg_u_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 72:16 39:35]
  wire [63:0] _GEN_38 = io_reset ? $signed(64'sh0) : $signed(reg_v_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 73:16 40:35]
  wire [63:0] _GEN_41 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_3); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 70:20 37:39]
  wire [63:0] _GEN_42 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_y_3); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 71:22 38:41]
  wire [63:0] _GEN_43 = io_reset ? $signed(64'sh0) : $signed(reg_u_3); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 72:16 39:35]
  wire [63:0] _GEN_44 = io_reset ? $signed(64'sh0) : $signed(reg_v_3); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 73:16 40:35]
  wire [63:0] _GEN_47 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_4); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 70:20 37:39]
  wire [63:0] _GEN_48 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_y_4); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 71:22 38:41]
  wire [63:0] _GEN_49 = io_reset ? $signed(64'sh0) : $signed(reg_u_4); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 72:16 39:35]
  wire [63:0] _GEN_50 = io_reset ? $signed(64'sh0) : $signed(reg_v_4); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 73:16 40:35]
  wire [63:0] _GEN_53 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_5); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 70:20 37:39]
  wire [63:0] _GEN_54 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_y_5); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 71:22 38:41]
  wire [63:0] _GEN_55 = io_reset ? $signed(64'sh0) : $signed(reg_u_5); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 72:16 39:35]
  wire [63:0] _GEN_56 = io_reset ? $signed(64'sh0) : $signed(reg_v_5); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 73:16 40:35]
  wire [63:0] _GEN_59 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_6); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 70:20 37:39]
  wire [63:0] _GEN_60 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_y_6); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 71:22 38:41]
  wire [63:0] _GEN_61 = io_reset ? $signed(64'sh0) : $signed(reg_u_6); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 72:16 39:35]
  wire [63:0] _GEN_62 = io_reset ? $signed(64'sh0) : $signed(reg_v_6); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 73:16 40:35]
  wire [63:0] _GEN_65 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_7); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 70:20 37:39]
  wire [63:0] _GEN_66 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_y_7); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 71:22 38:41]
  wire [63:0] _GEN_67 = io_reset ? $signed(64'sh0) : $signed(reg_u_7); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 72:16 39:35]
  wire [63:0] _GEN_68 = io_reset ? $signed(64'sh0) : $signed(reg_v_7); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 73:16 40:35]
  wire [63:0] _GEN_71 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_8); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 70:20 37:39]
  wire [63:0] _GEN_72 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_y_8); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 71:22 38:41]
  wire [63:0] _GEN_73 = io_reset ? $signed(64'sh0) : $signed(reg_u_8); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 72:16 39:35]
  wire [63:0] _GEN_74 = io_reset ? $signed(64'sh0) : $signed(reg_v_8); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 73:16 40:35]
  wire [63:0] _GEN_77 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_9); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 70:20 37:39]
  wire [63:0] _GEN_78 = io_reset ? $signed(64'sh0) : $signed(reg_x_inv_y_9); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 71:22 38:41]
  wire [63:0] _GEN_79 = io_reset ? $signed(64'sh0) : $signed(reg_u_9); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 72:16 39:35]
  wire [63:0] _GEN_80 = io_reset ? $signed(64'sh0) : $signed(reg_v_9); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 73:16 40:35]
  wire [3:0] _GEN_81 = io_reset ? 4'h0 : _GEN_20; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18 75:21]
  wire [3:0] _reg_step_status_T_1 = reg_step_status + 4'h1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 89:40]
  wire [3:0] _GEN_82 = lower_tri_mat_inv_unit_io_valid ? _reg_step_status_T_1 : _GEN_81; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 93:43 95:23]
  wire [3:0] _GEN_93 = matrix_mul_unit_io_valid ? _reg_step_status_T_1 : _GEN_81; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 115:36 116:23]
  wire [63:0] _GEN_94 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_0) : $signed(_GEN_24); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 115:36 119:44]
  wire [63:0] _GEN_95 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_4) : $signed(_GEN_30); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 115:36 119:44]
  wire [63:0] _GEN_96 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_5) : $signed(_GEN_36); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 115:36 119:44]
  wire [63:0] _GEN_97 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_8) : $signed(_GEN_42); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 115:36 119:44]
  wire [63:0] _GEN_98 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_9) : $signed(_GEN_48); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 115:36 119:44]
  wire [63:0] _GEN_99 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_10) : $signed(_GEN_54); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 115:36 119:44]
  wire [63:0] _GEN_100 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_12) : $signed(_GEN_60); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 115:36 119:44]
  wire [63:0] _GEN_101 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_13) : $signed(_GEN_66); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 115:36 119:44]
  wire [63:0] _GEN_102 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_14) : $signed(_GEN_72); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 115:36 119:44]
  wire [63:0] _GEN_103 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_15) : $signed(_GEN_78); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 115:36 119:44]
  wire [63:0] _GEN_105 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_0) : $signed(_GEN_25); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 140:36 144:38]
  wire [63:0] _GEN_106 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_4) : $signed(_GEN_31); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 140:36 144:38]
  wire [63:0] _GEN_107 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_5) : $signed(_GEN_37); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 140:36 144:38]
  wire [63:0] _GEN_108 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_8) : $signed(_GEN_43); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 140:36 144:38]
  wire [63:0] _GEN_109 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_9) : $signed(_GEN_49); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 140:36 144:38]
  wire [63:0] _GEN_110 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_10) : $signed(_GEN_55); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 140:36 144:38]
  wire [63:0] _GEN_111 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_12) : $signed(_GEN_61); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 140:36 144:38]
  wire [63:0] _GEN_112 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_13) : $signed(_GEN_67); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 140:36 144:38]
  wire [63:0] _GEN_113 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_14) : $signed(_GEN_73); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 140:36 144:38]
  wire [63:0] _GEN_114 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_15) : $signed(_GEN_79); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 140:36 144:38]
  wire  _T_6 = reg_step_status == 4'h7; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:30]
  wire [63:0] temp_add_0 = $signed(reg_x_0) + $signed(reg_u_0); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 152:31]
  wire [63:0] temp_add_1 = $signed(reg_x_1) + $signed(reg_u_1); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 152:31]
  wire [63:0] temp_add_2 = $signed(reg_x_2) + $signed(reg_u_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 152:31]
  wire [63:0] temp_add_3 = $signed(reg_x_3) + $signed(reg_u_3); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 152:31]
  wire [63:0] temp_add_4 = $signed(reg_x_4) + $signed(reg_u_4); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 152:31]
  wire [63:0] temp_add_5 = $signed(reg_x_5) + $signed(reg_u_5); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 152:31]
  wire [63:0] temp_add_6 = $signed(reg_x_6) + $signed(reg_u_6); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 152:31]
  wire [63:0] temp_add_7 = $signed(reg_x_7) + $signed(reg_u_7); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 152:31]
  wire [63:0] temp_add_8 = $signed(reg_x_8) + $signed(reg_u_8); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 152:31]
  wire [63:0] temp_add_9 = $signed(reg_x_9) + $signed(reg_u_9); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 152:31]
  wire [63:0] _GEN_116 = lower_tri_mat_inv_unit_io_valid ? $signed(lower_tri_mat_inv_unit_io_matrixOut_0) : $signed(
    _GEN_25); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 160:43 163:13]
  wire [63:0] _GEN_117 = lower_tri_mat_inv_unit_io_valid ? $signed(lower_tri_mat_inv_unit_io_matrixOut_1) : $signed(
    _GEN_31); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 160:43 163:13]
  wire [63:0] _GEN_118 = lower_tri_mat_inv_unit_io_valid ? $signed(lower_tri_mat_inv_unit_io_matrixOut_2) : $signed(
    _GEN_37); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 160:43 163:13]
  wire [63:0] _GEN_119 = lower_tri_mat_inv_unit_io_valid ? $signed(lower_tri_mat_inv_unit_io_matrixOut_3) : $signed(
    _GEN_43); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 160:43 163:13]
  wire [63:0] _GEN_120 = lower_tri_mat_inv_unit_io_valid ? $signed(lower_tri_mat_inv_unit_io_matrixOut_4) : $signed(
    _GEN_49); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 160:43 163:13]
  wire [63:0] _GEN_121 = lower_tri_mat_inv_unit_io_valid ? $signed(lower_tri_mat_inv_unit_io_matrixOut_5) : $signed(
    _GEN_55); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 160:43 163:13]
  wire [63:0] _GEN_122 = lower_tri_mat_inv_unit_io_valid ? $signed(lower_tri_mat_inv_unit_io_matrixOut_6) : $signed(
    _GEN_61); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 160:43 163:13]
  wire [63:0] _GEN_123 = lower_tri_mat_inv_unit_io_valid ? $signed(lower_tri_mat_inv_unit_io_matrixOut_7) : $signed(
    _GEN_67); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 160:43 163:13]
  wire [63:0] _GEN_124 = lower_tri_mat_inv_unit_io_valid ? $signed(lower_tri_mat_inv_unit_io_matrixOut_8) : $signed(
    _GEN_73); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 160:43 163:13]
  wire [63:0] _GEN_125 = lower_tri_mat_inv_unit_io_valid ? $signed(lower_tri_mat_inv_unit_io_matrixOut_9) : $signed(
    _GEN_79); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 160:43 163:13]
  wire  _T_8 = reg_step_status == 4'h9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 165:30]
  wire [63:0] _temp_matirxA_0_T_2 = 64'sh0 - $signed(reg_x_inv_y_0); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 174:36]
  wire [63:0] _temp_matirxA_4_T_2 = 64'sh0 - $signed(reg_x_inv_y_1); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 174:36]
  wire [63:0] _temp_matirxA_5_T_2 = 64'sh0 - $signed(reg_x_inv_y_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 174:36]
  wire [63:0] _temp_matirxA_8_T_2 = 64'sh0 - $signed(reg_x_inv_y_3); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 174:36]
  wire [63:0] _temp_matirxA_9_T_2 = 64'sh0 - $signed(reg_x_inv_y_4); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 174:36]
  wire [63:0] _temp_matirxA_10_T_2 = 64'sh0 - $signed(reg_x_inv_y_5); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 174:36]
  wire [63:0] _temp_matirxA_12_T_2 = 64'sh0 - $signed(reg_x_inv_y_6); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 174:36]
  wire [63:0] _temp_matirxA_13_T_2 = 64'sh0 - $signed(reg_x_inv_y_7); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 174:36]
  wire [63:0] _temp_matirxA_14_T_2 = 64'sh0 - $signed(reg_x_inv_y_8); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 174:36]
  wire [63:0] _temp_matirxA_15_T_2 = 64'sh0 - $signed(reg_x_inv_y_9); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 174:36]
  wire [63:0] _GEN_126 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_0) : $signed(_GEN_26); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 182:36 185:38]
  wire [63:0] _GEN_127 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_4) : $signed(_GEN_32); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 182:36 185:38]
  wire [63:0] _GEN_128 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_5) : $signed(_GEN_38); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 182:36 185:38]
  wire [63:0] _GEN_129 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_8) : $signed(_GEN_44); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 182:36 185:38]
  wire [63:0] _GEN_130 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_9) : $signed(_GEN_50); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 182:36 185:38]
  wire [63:0] _GEN_131 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_10) : $signed(_GEN_56); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 182:36 185:38]
  wire [63:0] _GEN_132 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_12) : $signed(_GEN_62); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 182:36 185:38]
  wire [63:0] _GEN_133 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_13) : $signed(_GEN_68); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 182:36 185:38]
  wire [63:0] _GEN_134 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_14) : $signed(_GEN_74); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 182:36 185:38]
  wire [63:0] _GEN_135 = matrix_mul_unit_io_valid ? $signed(matrix_mul_unit_io_matrixC_15) : $signed(_GEN_80); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 182:36 185:38]
  wire [63:0] _GEN_138 = reg_step_status == 4'ha ? $signed(_GEN_126) : $signed(_GEN_26); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 179:40]
  wire [63:0] _GEN_139 = reg_step_status == 4'ha ? $signed(_GEN_127) : $signed(_GEN_32); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 179:40]
  wire [63:0] _GEN_140 = reg_step_status == 4'ha ? $signed(_GEN_128) : $signed(_GEN_38); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 179:40]
  wire [63:0] _GEN_141 = reg_step_status == 4'ha ? $signed(_GEN_129) : $signed(_GEN_44); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 179:40]
  wire [63:0] _GEN_142 = reg_step_status == 4'ha ? $signed(_GEN_130) : $signed(_GEN_50); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 179:40]
  wire [63:0] _GEN_143 = reg_step_status == 4'ha ? $signed(_GEN_131) : $signed(_GEN_56); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 179:40]
  wire [63:0] _GEN_144 = reg_step_status == 4'ha ? $signed(_GEN_132) : $signed(_GEN_62); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 179:40]
  wire [63:0] _GEN_145 = reg_step_status == 4'ha ? $signed(_GEN_133) : $signed(_GEN_68); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 179:40]
  wire [63:0] _GEN_146 = reg_step_status == 4'ha ? $signed(_GEN_134) : $signed(_GEN_74); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 179:40]
  wire [63:0] _GEN_147 = reg_step_status == 4'ha ? $signed(_GEN_135) : $signed(_GEN_80); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 179:40]
  wire [3:0] _GEN_171 = reg_step_status == 4'h9 ? _reg_step_status_T_1 : _GEN_81; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 165:39 178:21]
  wire [63:0] _GEN_172 = reg_step_status == 4'h9 ? $signed(_GEN_26) : $signed(_GEN_138); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 165:39]
  wire [63:0] _GEN_173 = reg_step_status == 4'h9 ? $signed(_GEN_32) : $signed(_GEN_139); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 165:39]
  wire [63:0] _GEN_174 = reg_step_status == 4'h9 ? $signed(_GEN_38) : $signed(_GEN_140); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 165:39]
  wire [63:0] _GEN_175 = reg_step_status == 4'h9 ? $signed(_GEN_44) : $signed(_GEN_141); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 165:39]
  wire [63:0] _GEN_176 = reg_step_status == 4'h9 ? $signed(_GEN_50) : $signed(_GEN_142); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 165:39]
  wire [63:0] _GEN_177 = reg_step_status == 4'h9 ? $signed(_GEN_56) : $signed(_GEN_143); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 165:39]
  wire [63:0] _GEN_178 = reg_step_status == 4'h9 ? $signed(_GEN_62) : $signed(_GEN_144); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 165:39]
  wire [63:0] _GEN_179 = reg_step_status == 4'h9 ? $signed(_GEN_68) : $signed(_GEN_145); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 165:39]
  wire [63:0] _GEN_180 = reg_step_status == 4'h9 ? $signed(_GEN_74) : $signed(_GEN_146); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 165:39]
  wire [63:0] _GEN_181 = reg_step_status == 4'h9 ? $signed(_GEN_80) : $signed(_GEN_147); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 165:39]
  wire [3:0] _GEN_184 = reg_step_status == 4'h8 ? _GEN_82 : _GEN_171; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_185 = reg_step_status == 4'h8 ? $signed(_GEN_116) : $signed(_GEN_25); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_186 = reg_step_status == 4'h8 ? $signed(_GEN_117) : $signed(_GEN_31); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_187 = reg_step_status == 4'h8 ? $signed(_GEN_118) : $signed(_GEN_37); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_188 = reg_step_status == 4'h8 ? $signed(_GEN_119) : $signed(_GEN_43); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_189 = reg_step_status == 4'h8 ? $signed(_GEN_120) : $signed(_GEN_49); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_190 = reg_step_status == 4'h8 ? $signed(_GEN_121) : $signed(_GEN_55); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_191 = reg_step_status == 4'h8 ? $signed(_GEN_122) : $signed(_GEN_61); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_192 = reg_step_status == 4'h8 ? $signed(_GEN_123) : $signed(_GEN_67); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_193 = reg_step_status == 4'h8 ? $signed(_GEN_124) : $signed(_GEN_73); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_194 = reg_step_status == 4'h8 ? $signed(_GEN_125) : $signed(_GEN_79); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_217 = reg_step_status == 4'h8 ? $signed(_GEN_26) : $signed(_GEN_172); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_218 = reg_step_status == 4'h8 ? $signed(_GEN_32) : $signed(_GEN_173); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_219 = reg_step_status == 4'h8 ? $signed(_GEN_38) : $signed(_GEN_174); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_220 = reg_step_status == 4'h8 ? $signed(_GEN_44) : $signed(_GEN_175); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_221 = reg_step_status == 4'h8 ? $signed(_GEN_50) : $signed(_GEN_176); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_222 = reg_step_status == 4'h8 ? $signed(_GEN_56) : $signed(_GEN_177); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_223 = reg_step_status == 4'h8 ? $signed(_GEN_62) : $signed(_GEN_178); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_224 = reg_step_status == 4'h8 ? $signed(_GEN_68) : $signed(_GEN_179); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_225 = reg_step_status == 4'h8 ? $signed(_GEN_74) : $signed(_GEN_180); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [63:0] _GEN_226 = reg_step_status == 4'h8 ? $signed(_GEN_80) : $signed(_GEN_181); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 157:39]
  wire [3:0] _GEN_239 = reg_step_status == 4'h7 ? _reg_step_status_T_1 : _GEN_184; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39 156:21]
  wire [63:0] _GEN_240 = reg_step_status == 4'h7 ? $signed(_GEN_25) : $signed(_GEN_185); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_241 = reg_step_status == 4'h7 ? $signed(_GEN_31) : $signed(_GEN_186); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_242 = reg_step_status == 4'h7 ? $signed(_GEN_37) : $signed(_GEN_187); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_243 = reg_step_status == 4'h7 ? $signed(_GEN_43) : $signed(_GEN_188); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_244 = reg_step_status == 4'h7 ? $signed(_GEN_49) : $signed(_GEN_189); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_245 = reg_step_status == 4'h7 ? $signed(_GEN_55) : $signed(_GEN_190); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_246 = reg_step_status == 4'h7 ? $signed(_GEN_61) : $signed(_GEN_191); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_247 = reg_step_status == 4'h7 ? $signed(_GEN_67) : $signed(_GEN_192); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_248 = reg_step_status == 4'h7 ? $signed(_GEN_73) : $signed(_GEN_193); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_249 = reg_step_status == 4'h7 ? $signed(_GEN_79) : $signed(_GEN_194); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_272 = reg_step_status == 4'h7 ? $signed(_GEN_26) : $signed(_GEN_217); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_273 = reg_step_status == 4'h7 ? $signed(_GEN_32) : $signed(_GEN_218); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_274 = reg_step_status == 4'h7 ? $signed(_GEN_38) : $signed(_GEN_219); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_275 = reg_step_status == 4'h7 ? $signed(_GEN_44) : $signed(_GEN_220); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_276 = reg_step_status == 4'h7 ? $signed(_GEN_50) : $signed(_GEN_221); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_277 = reg_step_status == 4'h7 ? $signed(_GEN_56) : $signed(_GEN_222); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_278 = reg_step_status == 4'h7 ? $signed(_GEN_62) : $signed(_GEN_223); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_279 = reg_step_status == 4'h7 ? $signed(_GEN_68) : $signed(_GEN_224); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_280 = reg_step_status == 4'h7 ? $signed(_GEN_74) : $signed(_GEN_225); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire [63:0] _GEN_281 = reg_step_status == 4'h7 ? $signed(_GEN_80) : $signed(_GEN_226); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 148:39]
  wire  _GEN_283 = reg_step_status == 4'h6 ? 1'h0 : _T_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39 139:30]
  wire [3:0] _GEN_284 = reg_step_status == 4'h6 ? _GEN_93 : _GEN_239; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_285 = reg_step_status == 4'h6 ? $signed(_GEN_105) : $signed(_GEN_240); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_286 = reg_step_status == 4'h6 ? $signed(_GEN_106) : $signed(_GEN_241); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_287 = reg_step_status == 4'h6 ? $signed(_GEN_107) : $signed(_GEN_242); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_288 = reg_step_status == 4'h6 ? $signed(_GEN_108) : $signed(_GEN_243); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_289 = reg_step_status == 4'h6 ? $signed(_GEN_109) : $signed(_GEN_244); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_290 = reg_step_status == 4'h6 ? $signed(_GEN_110) : $signed(_GEN_245); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_291 = reg_step_status == 4'h6 ? $signed(_GEN_111) : $signed(_GEN_246); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_292 = reg_step_status == 4'h6 ? $signed(_GEN_112) : $signed(_GEN_247); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_293 = reg_step_status == 4'h6 ? $signed(_GEN_113) : $signed(_GEN_248); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_294 = reg_step_status == 4'h6 ? $signed(_GEN_114) : $signed(_GEN_249); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_327 = reg_step_status == 4'h6 ? $signed(_GEN_26) : $signed(_GEN_272); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_328 = reg_step_status == 4'h6 ? $signed(_GEN_32) : $signed(_GEN_273); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_329 = reg_step_status == 4'h6 ? $signed(_GEN_38) : $signed(_GEN_274); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_330 = reg_step_status == 4'h6 ? $signed(_GEN_44) : $signed(_GEN_275); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_331 = reg_step_status == 4'h6 ? $signed(_GEN_50) : $signed(_GEN_276); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_332 = reg_step_status == 4'h6 ? $signed(_GEN_56) : $signed(_GEN_277); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_333 = reg_step_status == 4'h6 ? $signed(_GEN_62) : $signed(_GEN_278); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_334 = reg_step_status == 4'h6 ? $signed(_GEN_68) : $signed(_GEN_279); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_335 = reg_step_status == 4'h6 ? $signed(_GEN_74) : $signed(_GEN_280); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire [63:0] _GEN_336 = reg_step_status == 4'h6 ? $signed(_GEN_80) : $signed(_GEN_281); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 137:39]
  wire  _GEN_338 = reg_step_status == 4'h5 | _GEN_283; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 125:30]
  wire [63:0] _GEN_339 = reg_step_status == 4'h5 ? $signed(reg_y_0) : $signed(_temp_matirxA_0_T_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 132:33]
  wire [63:0] _GEN_340 = reg_step_status == 4'h5 ? $signed(reg_x_inv_y_0) : $signed(reg_u_0); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 133:33]
  wire [63:0] _GEN_342 = reg_step_status == 4'h5 ? $signed(reg_y_1) : $signed(_temp_matirxA_4_T_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 132:33]
  wire [63:0] _GEN_343 = reg_step_status == 4'h5 ? $signed(reg_x_inv_y_1) : $signed(reg_u_1); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 133:33]
  wire [63:0] _GEN_344 = reg_step_status == 4'h5 ? $signed(reg_y_2) : $signed(_temp_matirxA_5_T_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 132:33]
  wire [63:0] _GEN_345 = reg_step_status == 4'h5 ? $signed(reg_x_inv_y_2) : $signed(reg_u_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 133:33]
  wire [63:0] _GEN_346 = reg_step_status == 4'h5 ? $signed(reg_y_3) : $signed(_temp_matirxA_8_T_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 132:33]
  wire [63:0] _GEN_347 = reg_step_status == 4'h5 ? $signed(reg_x_inv_y_3) : $signed(reg_u_3); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 133:33]
  wire [63:0] _GEN_348 = reg_step_status == 4'h5 ? $signed(reg_y_4) : $signed(_temp_matirxA_9_T_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 132:33]
  wire [63:0] _GEN_349 = reg_step_status == 4'h5 ? $signed(reg_x_inv_y_4) : $signed(reg_u_4); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 133:33]
  wire [63:0] _GEN_350 = reg_step_status == 4'h5 ? $signed(reg_y_5) : $signed(_temp_matirxA_10_T_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 132:33]
  wire [63:0] _GEN_351 = reg_step_status == 4'h5 ? $signed(reg_x_inv_y_5) : $signed(reg_u_5); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 133:33]
  wire [63:0] _GEN_352 = reg_step_status == 4'h5 ? $signed(reg_y_6) : $signed(_temp_matirxA_12_T_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 132:33]
  wire [63:0] _GEN_353 = reg_step_status == 4'h5 ? $signed(reg_x_inv_y_6) : $signed(reg_u_6); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 133:33]
  wire [63:0] _GEN_354 = reg_step_status == 4'h5 ? $signed(reg_y_7) : $signed(_temp_matirxA_13_T_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 132:33]
  wire [63:0] _GEN_355 = reg_step_status == 4'h5 ? $signed(reg_x_inv_y_7) : $signed(reg_u_7); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 133:33]
  wire [63:0] _GEN_356 = reg_step_status == 4'h5 ? $signed(reg_y_8) : $signed(_temp_matirxA_14_T_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 132:33]
  wire [63:0] _GEN_357 = reg_step_status == 4'h5 ? $signed(reg_x_inv_y_8) : $signed(reg_u_8); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 133:33]
  wire [63:0] _GEN_358 = reg_step_status == 4'h5 ? $signed(reg_y_9) : $signed(_temp_matirxA_15_T_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 132:33]
  wire [63:0] _GEN_359 = reg_step_status == 4'h5 ? $signed(reg_x_inv_y_9) : $signed(reg_u_9); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 133:33]
  wire [3:0] _GEN_360 = reg_step_status == 4'h5 ? _reg_step_status_T_1 : _GEN_284; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39 136:21]
  wire [63:0] _GEN_361 = reg_step_status == 4'h5 ? $signed(_GEN_25) : $signed(_GEN_285); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_362 = reg_step_status == 4'h5 ? $signed(_GEN_31) : $signed(_GEN_286); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_363 = reg_step_status == 4'h5 ? $signed(_GEN_37) : $signed(_GEN_287); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_364 = reg_step_status == 4'h5 ? $signed(_GEN_43) : $signed(_GEN_288); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_365 = reg_step_status == 4'h5 ? $signed(_GEN_49) : $signed(_GEN_289); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_366 = reg_step_status == 4'h5 ? $signed(_GEN_55) : $signed(_GEN_290); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_367 = reg_step_status == 4'h5 ? $signed(_GEN_61) : $signed(_GEN_291); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_368 = reg_step_status == 4'h5 ? $signed(_GEN_67) : $signed(_GEN_292); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_369 = reg_step_status == 4'h5 ? $signed(_GEN_73) : $signed(_GEN_293); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_370 = reg_step_status == 4'h5 ? $signed(_GEN_79) : $signed(_GEN_294); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_382 = reg_step_status == 4'h5 ? $signed(_GEN_26) : $signed(_GEN_327); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_383 = reg_step_status == 4'h5 ? $signed(_GEN_32) : $signed(_GEN_328); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_384 = reg_step_status == 4'h5 ? $signed(_GEN_38) : $signed(_GEN_329); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_385 = reg_step_status == 4'h5 ? $signed(_GEN_44) : $signed(_GEN_330); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_386 = reg_step_status == 4'h5 ? $signed(_GEN_50) : $signed(_GEN_331); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_387 = reg_step_status == 4'h5 ? $signed(_GEN_56) : $signed(_GEN_332); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_388 = reg_step_status == 4'h5 ? $signed(_GEN_62) : $signed(_GEN_333); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_389 = reg_step_status == 4'h5 ? $signed(_GEN_68) : $signed(_GEN_334); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_390 = reg_step_status == 4'h5 ? $signed(_GEN_74) : $signed(_GEN_335); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire [63:0] _GEN_391 = reg_step_status == 4'h5 ? $signed(_GEN_80) : $signed(_GEN_336); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 123:39]
  wire  _GEN_393 = reg_step_status == 4'h4 ? 1'h0 : _GEN_338; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39 114:30]
  wire [3:0] _GEN_394 = reg_step_status == 4'h4 ? _GEN_93 : _GEN_360; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
  wire  _GEN_523 = reg_step_status == 4'h2 ? 1'h0 : _T_6; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39 92:37]
  matrix_fixedPoint_mul matrix_mul_unit ( // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 43:31]
    .clock(matrix_mul_unit_clock),
    .io_reset(matrix_mul_unit_io_reset),
    .io_ready(matrix_mul_unit_io_ready),
    .io_matrixA_0(matrix_mul_unit_io_matrixA_0),
    .io_matrixA_4(matrix_mul_unit_io_matrixA_4),
    .io_matrixA_5(matrix_mul_unit_io_matrixA_5),
    .io_matrixA_8(matrix_mul_unit_io_matrixA_8),
    .io_matrixA_9(matrix_mul_unit_io_matrixA_9),
    .io_matrixA_10(matrix_mul_unit_io_matrixA_10),
    .io_matrixA_12(matrix_mul_unit_io_matrixA_12),
    .io_matrixA_13(matrix_mul_unit_io_matrixA_13),
    .io_matrixA_14(matrix_mul_unit_io_matrixA_14),
    .io_matrixA_15(matrix_mul_unit_io_matrixA_15),
    .io_matrixB_0(matrix_mul_unit_io_matrixB_0),
    .io_matrixB_4(matrix_mul_unit_io_matrixB_4),
    .io_matrixB_5(matrix_mul_unit_io_matrixB_5),
    .io_matrixB_8(matrix_mul_unit_io_matrixB_8),
    .io_matrixB_9(matrix_mul_unit_io_matrixB_9),
    .io_matrixB_10(matrix_mul_unit_io_matrixB_10),
    .io_matrixB_12(matrix_mul_unit_io_matrixB_12),
    .io_matrixB_13(matrix_mul_unit_io_matrixB_13),
    .io_matrixB_14(matrix_mul_unit_io_matrixB_14),
    .io_matrixB_15(matrix_mul_unit_io_matrixB_15),
    .io_matrixC_0(matrix_mul_unit_io_matrixC_0),
    .io_matrixC_4(matrix_mul_unit_io_matrixC_4),
    .io_matrixC_5(matrix_mul_unit_io_matrixC_5),
    .io_matrixC_8(matrix_mul_unit_io_matrixC_8),
    .io_matrixC_9(matrix_mul_unit_io_matrixC_9),
    .io_matrixC_10(matrix_mul_unit_io_matrixC_10),
    .io_matrixC_12(matrix_mul_unit_io_matrixC_12),
    .io_matrixC_13(matrix_mul_unit_io_matrixC_13),
    .io_matrixC_14(matrix_mul_unit_io_matrixC_14),
    .io_matrixC_15(matrix_mul_unit_io_matrixC_15),
    .io_valid(matrix_mul_unit_io_valid)
  );
  lower_triangular_matrix_inversion_fixedpoint_v1 lower_tri_mat_inv_unit ( // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 44:38]
    .clock(lower_tri_mat_inv_unit_clock),
    .reset(lower_tri_mat_inv_unit_reset),
    .io_reset(lower_tri_mat_inv_unit_io_reset),
    .io_ready(lower_tri_mat_inv_unit_io_ready),
    .io_matrixIn_0(lower_tri_mat_inv_unit_io_matrixIn_0),
    .io_matrixIn_1(lower_tri_mat_inv_unit_io_matrixIn_1),
    .io_matrixIn_2(lower_tri_mat_inv_unit_io_matrixIn_2),
    .io_matrixIn_3(lower_tri_mat_inv_unit_io_matrixIn_3),
    .io_matrixIn_4(lower_tri_mat_inv_unit_io_matrixIn_4),
    .io_matrixIn_5(lower_tri_mat_inv_unit_io_matrixIn_5),
    .io_matrixIn_6(lower_tri_mat_inv_unit_io_matrixIn_6),
    .io_matrixIn_7(lower_tri_mat_inv_unit_io_matrixIn_7),
    .io_matrixIn_8(lower_tri_mat_inv_unit_io_matrixIn_8),
    .io_matrixIn_9(lower_tri_mat_inv_unit_io_matrixIn_9),
    .io_matrixOut_0(lower_tri_mat_inv_unit_io_matrixOut_0),
    .io_matrixOut_1(lower_tri_mat_inv_unit_io_matrixOut_1),
    .io_matrixOut_2(lower_tri_mat_inv_unit_io_matrixOut_2),
    .io_matrixOut_3(lower_tri_mat_inv_unit_io_matrixOut_3),
    .io_matrixOut_4(lower_tri_mat_inv_unit_io_matrixOut_4),
    .io_matrixOut_5(lower_tri_mat_inv_unit_io_matrixOut_5),
    .io_matrixOut_6(lower_tri_mat_inv_unit_io_matrixOut_6),
    .io_matrixOut_7(lower_tri_mat_inv_unit_io_matrixOut_7),
    .io_matrixOut_8(lower_tri_mat_inv_unit_io_matrixOut_8),
    .io_matrixOut_9(lower_tri_mat_inv_unit_io_matrixOut_9),
    .io_valid(lower_tri_mat_inv_unit_io_valid)
  );
  assign io_matrixOut_0_re = reg_u_0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 194:24]
  assign io_matrixOut_0_im = reg_v_0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 195:24]
  assign io_matrixOut_1_re = reg_u_1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 194:24]
  assign io_matrixOut_1_im = reg_v_1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 195:24]
  assign io_matrixOut_2_re = reg_u_2; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 194:24]
  assign io_matrixOut_2_im = reg_v_2; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 195:24]
  assign io_matrixOut_3_re = reg_u_3; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 194:24]
  assign io_matrixOut_3_im = reg_v_3; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 195:24]
  assign io_matrixOut_4_re = reg_u_4; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 194:24]
  assign io_matrixOut_4_im = reg_v_4; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 195:24]
  assign io_matrixOut_5_re = reg_u_5; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 194:24]
  assign io_matrixOut_5_im = reg_v_5; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 195:24]
  assign io_matrixOut_6_re = reg_u_6; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 194:24]
  assign io_matrixOut_6_im = reg_v_6; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 195:24]
  assign io_matrixOut_7_re = reg_u_7; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 194:24]
  assign io_matrixOut_7_im = reg_v_7; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 195:24]
  assign io_matrixOut_8_re = reg_u_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 194:24]
  assign io_matrixOut_8_im = reg_v_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 195:24]
  assign io_matrixOut_9_re = reg_u_9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 194:24]
  assign io_matrixOut_9_im = reg_v_9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 195:24]
  assign io_valid = 1'h1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 182:36 188:16]
  assign matrix_mul_unit_clock = clock;
  assign matrix_mul_unit_io_reset = io_reset; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 45:28]
  assign matrix_mul_unit_io_ready = reg_step_status == 4'h3 | _GEN_393; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 100:30 98:39]
  assign matrix_mul_unit_io_matrixA_0 = reg_step_status == 4'h3 ? $signed(reg_x_inv_0) : $signed(_GEN_339); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 107:33 98:39]
  assign matrix_mul_unit_io_matrixA_4 = reg_step_status == 4'h3 ? $signed(reg_x_inv_1) : $signed(_GEN_342); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 107:33 98:39]
  assign matrix_mul_unit_io_matrixA_5 = reg_step_status == 4'h3 ? $signed(reg_x_inv_2) : $signed(_GEN_344); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 107:33 98:39]
  assign matrix_mul_unit_io_matrixA_8 = reg_step_status == 4'h3 ? $signed(reg_x_inv_3) : $signed(_GEN_346); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 107:33 98:39]
  assign matrix_mul_unit_io_matrixA_9 = reg_step_status == 4'h3 ? $signed(reg_x_inv_4) : $signed(_GEN_348); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 107:33 98:39]
  assign matrix_mul_unit_io_matrixA_10 = reg_step_status == 4'h3 ? $signed(reg_x_inv_5) : $signed(_GEN_350); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 107:33 98:39]
  assign matrix_mul_unit_io_matrixA_12 = reg_step_status == 4'h3 ? $signed(reg_x_inv_6) : $signed(_GEN_352); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 107:33 98:39]
  assign matrix_mul_unit_io_matrixA_13 = reg_step_status == 4'h3 ? $signed(reg_x_inv_7) : $signed(_GEN_354); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 107:33 98:39]
  assign matrix_mul_unit_io_matrixA_14 = reg_step_status == 4'h3 ? $signed(reg_x_inv_8) : $signed(_GEN_356); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 107:33 98:39]
  assign matrix_mul_unit_io_matrixA_15 = reg_step_status == 4'h3 ? $signed(reg_x_inv_9) : $signed(_GEN_358); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 107:33 98:39]
  assign matrix_mul_unit_io_matrixB_0 = reg_step_status == 4'h3 ? $signed(reg_y_0) : $signed(_GEN_340); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 108:33 98:39]
  assign matrix_mul_unit_io_matrixB_4 = reg_step_status == 4'h3 ? $signed(reg_y_1) : $signed(_GEN_343); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 108:33 98:39]
  assign matrix_mul_unit_io_matrixB_5 = reg_step_status == 4'h3 ? $signed(reg_y_2) : $signed(_GEN_345); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 108:33 98:39]
  assign matrix_mul_unit_io_matrixB_8 = reg_step_status == 4'h3 ? $signed(reg_y_3) : $signed(_GEN_347); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 108:33 98:39]
  assign matrix_mul_unit_io_matrixB_9 = reg_step_status == 4'h3 ? $signed(reg_y_4) : $signed(_GEN_349); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 108:33 98:39]
  assign matrix_mul_unit_io_matrixB_10 = reg_step_status == 4'h3 ? $signed(reg_y_5) : $signed(_GEN_351); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 108:33 98:39]
  assign matrix_mul_unit_io_matrixB_12 = reg_step_status == 4'h3 ? $signed(reg_y_6) : $signed(_GEN_353); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 108:33 98:39]
  assign matrix_mul_unit_io_matrixB_13 = reg_step_status == 4'h3 ? $signed(reg_y_7) : $signed(_GEN_355); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 108:33 98:39]
  assign matrix_mul_unit_io_matrixB_14 = reg_step_status == 4'h3 ? $signed(reg_y_8) : $signed(_GEN_357); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 108:33 98:39]
  assign matrix_mul_unit_io_matrixB_15 = reg_step_status == 4'h3 ? $signed(reg_y_9) : $signed(_GEN_359); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 108:33 98:39]
  assign lower_tri_mat_inv_unit_clock = clock;
  assign lower_tri_mat_inv_unit_reset = reset;
  assign lower_tri_mat_inv_unit_io_reset = io_reset; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 46:35]
  assign lower_tri_mat_inv_unit_io_ready = reg_step_status == 4'h1 | _GEN_523; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33 87:37]
  assign lower_tri_mat_inv_unit_io_matrixIn_0 = reg_step_status == 4'h1 ? $signed(reg_x_0) : $signed(temp_add_0); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33 88:40]
  assign lower_tri_mat_inv_unit_io_matrixIn_1 = reg_step_status == 4'h1 ? $signed(reg_x_1) : $signed(temp_add_1); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33 88:40]
  assign lower_tri_mat_inv_unit_io_matrixIn_2 = reg_step_status == 4'h1 ? $signed(reg_x_2) : $signed(temp_add_2); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33 88:40]
  assign lower_tri_mat_inv_unit_io_matrixIn_3 = reg_step_status == 4'h1 ? $signed(reg_x_3) : $signed(temp_add_3); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33 88:40]
  assign lower_tri_mat_inv_unit_io_matrixIn_4 = reg_step_status == 4'h1 ? $signed(reg_x_4) : $signed(temp_add_4); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33 88:40]
  assign lower_tri_mat_inv_unit_io_matrixIn_5 = reg_step_status == 4'h1 ? $signed(reg_x_5) : $signed(temp_add_5); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33 88:40]
  assign lower_tri_mat_inv_unit_io_matrixIn_6 = reg_step_status == 4'h1 ? $signed(reg_x_6) : $signed(temp_add_6); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33 88:40]
  assign lower_tri_mat_inv_unit_io_matrixIn_7 = reg_step_status == 4'h1 ? $signed(reg_x_7) : $signed(temp_add_7); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33 88:40]
  assign lower_tri_mat_inv_unit_io_matrixIn_8 = reg_step_status == 4'h1 ? $signed(reg_x_8) : $signed(temp_add_8); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33 88:40]
  assign lower_tri_mat_inv_unit_io_matrixIn_9 = reg_step_status == 4'h1 ? $signed(reg_x_9) : $signed(temp_add_9); // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33 88:40]
  always @(posedge clock) begin
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_x_0 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 68:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_x_0 <= io_matrixIn_0_re; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 79:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_x_1 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 68:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_x_1 <= io_matrixIn_1_re; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 79:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_x_2 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 68:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_x_2 <= io_matrixIn_2_re; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 79:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_x_3 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 68:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_x_3 <= io_matrixIn_3_re; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 79:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_x_4 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 68:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_x_4 <= io_matrixIn_4_re; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 79:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_x_5 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 68:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_x_5 <= io_matrixIn_5_re; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 79:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_x_6 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 68:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_x_6 <= io_matrixIn_6_re; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 79:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_x_7 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 68:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_x_7 <= io_matrixIn_7_re; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 79:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_x_8 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 68:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_x_8 <= io_matrixIn_8_re; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 79:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_x_9 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 68:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_x_9 <= io_matrixIn_9_re; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 79:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_y_0 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 69:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_y_0 <= io_matrixIn_0_im; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 80:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_y_1 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 69:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_y_1 <= io_matrixIn_1_im; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 80:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_y_2 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 69:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_y_2 <= io_matrixIn_2_im; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 80:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_y_3 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 69:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_y_3 <= io_matrixIn_3_im; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 80:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_y_4 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 69:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_y_4 <= io_matrixIn_4_im; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 80:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_y_5 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 69:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_y_5 <= io_matrixIn_5_im; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 80:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_y_6 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 69:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_y_6 <= io_matrixIn_6_im; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 80:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_y_7 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 69:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_y_7 <= io_matrixIn_7_im; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 80:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_y_8 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 69:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_y_8 <= io_matrixIn_8_im; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 80:16]
    end
    if (io_reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 66:18]
      reg_y_9 <= 64'sh0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 69:16]
    end else if (io_ready) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 76:24]
      reg_y_9 <= io_matrixIn_9_im; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 80:16]
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_0 <= _GEN_23;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      if (lower_tri_mat_inv_unit_io_valid) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 93:43]
        reg_x_inv_0 <= lower_tri_mat_inv_unit_io_matrixOut_0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 96:17]
      end else begin
        reg_x_inv_0 <= _GEN_23;
      end
    end else begin
      reg_x_inv_0 <= _GEN_23;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_1 <= _GEN_29;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      if (lower_tri_mat_inv_unit_io_valid) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 93:43]
        reg_x_inv_1 <= lower_tri_mat_inv_unit_io_matrixOut_1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 96:17]
      end else begin
        reg_x_inv_1 <= _GEN_29;
      end
    end else begin
      reg_x_inv_1 <= _GEN_29;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_2 <= _GEN_35;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      if (lower_tri_mat_inv_unit_io_valid) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 93:43]
        reg_x_inv_2 <= lower_tri_mat_inv_unit_io_matrixOut_2; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 96:17]
      end else begin
        reg_x_inv_2 <= _GEN_35;
      end
    end else begin
      reg_x_inv_2 <= _GEN_35;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_3 <= _GEN_41;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      if (lower_tri_mat_inv_unit_io_valid) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 93:43]
        reg_x_inv_3 <= lower_tri_mat_inv_unit_io_matrixOut_3; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 96:17]
      end else begin
        reg_x_inv_3 <= _GEN_41;
      end
    end else begin
      reg_x_inv_3 <= _GEN_41;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_4 <= _GEN_47;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      if (lower_tri_mat_inv_unit_io_valid) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 93:43]
        reg_x_inv_4 <= lower_tri_mat_inv_unit_io_matrixOut_4; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 96:17]
      end else begin
        reg_x_inv_4 <= _GEN_47;
      end
    end else begin
      reg_x_inv_4 <= _GEN_47;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_5 <= _GEN_53;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      if (lower_tri_mat_inv_unit_io_valid) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 93:43]
        reg_x_inv_5 <= lower_tri_mat_inv_unit_io_matrixOut_5; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 96:17]
      end else begin
        reg_x_inv_5 <= _GEN_53;
      end
    end else begin
      reg_x_inv_5 <= _GEN_53;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_6 <= _GEN_59;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      if (lower_tri_mat_inv_unit_io_valid) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 93:43]
        reg_x_inv_6 <= lower_tri_mat_inv_unit_io_matrixOut_6; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 96:17]
      end else begin
        reg_x_inv_6 <= _GEN_59;
      end
    end else begin
      reg_x_inv_6 <= _GEN_59;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_7 <= _GEN_65;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      if (lower_tri_mat_inv_unit_io_valid) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 93:43]
        reg_x_inv_7 <= lower_tri_mat_inv_unit_io_matrixOut_7; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 96:17]
      end else begin
        reg_x_inv_7 <= _GEN_65;
      end
    end else begin
      reg_x_inv_7 <= _GEN_65;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_8 <= _GEN_71;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      if (lower_tri_mat_inv_unit_io_valid) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 93:43]
        reg_x_inv_8 <= lower_tri_mat_inv_unit_io_matrixOut_8; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 96:17]
      end else begin
        reg_x_inv_8 <= _GEN_71;
      end
    end else begin
      reg_x_inv_8 <= _GEN_71;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_9 <= _GEN_77;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      if (lower_tri_mat_inv_unit_io_valid) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 93:43]
        reg_x_inv_9 <= lower_tri_mat_inv_unit_io_matrixOut_9; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 96:17]
      end else begin
        reg_x_inv_9 <= _GEN_77;
      end
    end else begin
      reg_x_inv_9 <= _GEN_77;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_y_0 <= _GEN_24;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_x_inv_y_0 <= _GEN_24;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_x_inv_y_0 <= _GEN_24;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_x_inv_y_0 <= _GEN_94;
    end else begin
      reg_x_inv_y_0 <= _GEN_24;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_y_1 <= _GEN_30;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_x_inv_y_1 <= _GEN_30;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_x_inv_y_1 <= _GEN_30;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_x_inv_y_1 <= _GEN_95;
    end else begin
      reg_x_inv_y_1 <= _GEN_30;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_y_2 <= _GEN_36;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_x_inv_y_2 <= _GEN_36;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_x_inv_y_2 <= _GEN_36;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_x_inv_y_2 <= _GEN_96;
    end else begin
      reg_x_inv_y_2 <= _GEN_36;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_y_3 <= _GEN_42;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_x_inv_y_3 <= _GEN_42;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_x_inv_y_3 <= _GEN_42;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_x_inv_y_3 <= _GEN_97;
    end else begin
      reg_x_inv_y_3 <= _GEN_42;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_y_4 <= _GEN_48;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_x_inv_y_4 <= _GEN_48;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_x_inv_y_4 <= _GEN_48;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_x_inv_y_4 <= _GEN_98;
    end else begin
      reg_x_inv_y_4 <= _GEN_48;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_y_5 <= _GEN_54;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_x_inv_y_5 <= _GEN_54;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_x_inv_y_5 <= _GEN_54;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_x_inv_y_5 <= _GEN_99;
    end else begin
      reg_x_inv_y_5 <= _GEN_54;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_y_6 <= _GEN_60;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_x_inv_y_6 <= _GEN_60;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_x_inv_y_6 <= _GEN_60;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_x_inv_y_6 <= _GEN_100;
    end else begin
      reg_x_inv_y_6 <= _GEN_60;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_y_7 <= _GEN_66;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_x_inv_y_7 <= _GEN_66;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_x_inv_y_7 <= _GEN_66;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_x_inv_y_7 <= _GEN_101;
    end else begin
      reg_x_inv_y_7 <= _GEN_66;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_y_8 <= _GEN_72;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_x_inv_y_8 <= _GEN_72;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_x_inv_y_8 <= _GEN_72;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_x_inv_y_8 <= _GEN_102;
    end else begin
      reg_x_inv_y_8 <= _GEN_72;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_x_inv_y_9 <= _GEN_78;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_x_inv_y_9 <= _GEN_78;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_x_inv_y_9 <= _GEN_78;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_x_inv_y_9 <= _GEN_103;
    end else begin
      reg_x_inv_y_9 <= _GEN_78;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_u_0 <= _GEN_25;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_u_0 <= _GEN_25;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_u_0 <= _GEN_25;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_u_0 <= _GEN_25;
    end else begin
      reg_u_0 <= _GEN_361;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_u_1 <= _GEN_31;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_u_1 <= _GEN_31;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_u_1 <= _GEN_31;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_u_1 <= _GEN_31;
    end else begin
      reg_u_1 <= _GEN_362;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_u_2 <= _GEN_37;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_u_2 <= _GEN_37;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_u_2 <= _GEN_37;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_u_2 <= _GEN_37;
    end else begin
      reg_u_2 <= _GEN_363;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_u_3 <= _GEN_43;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_u_3 <= _GEN_43;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_u_3 <= _GEN_43;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_u_3 <= _GEN_43;
    end else begin
      reg_u_3 <= _GEN_364;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_u_4 <= _GEN_49;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_u_4 <= _GEN_49;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_u_4 <= _GEN_49;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_u_4 <= _GEN_49;
    end else begin
      reg_u_4 <= _GEN_365;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_u_5 <= _GEN_55;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_u_5 <= _GEN_55;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_u_5 <= _GEN_55;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_u_5 <= _GEN_55;
    end else begin
      reg_u_5 <= _GEN_366;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_u_6 <= _GEN_61;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_u_6 <= _GEN_61;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_u_6 <= _GEN_61;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_u_6 <= _GEN_61;
    end else begin
      reg_u_6 <= _GEN_367;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_u_7 <= _GEN_67;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_u_7 <= _GEN_67;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_u_7 <= _GEN_67;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_u_7 <= _GEN_67;
    end else begin
      reg_u_7 <= _GEN_368;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_u_8 <= _GEN_73;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_u_8 <= _GEN_73;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_u_8 <= _GEN_73;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_u_8 <= _GEN_73;
    end else begin
      reg_u_8 <= _GEN_369;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_u_9 <= _GEN_79;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_u_9 <= _GEN_79;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_u_9 <= _GEN_79;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_u_9 <= _GEN_79;
    end else begin
      reg_u_9 <= _GEN_370;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_v_0 <= _GEN_26;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_v_0 <= _GEN_26;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_v_0 <= _GEN_26;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_v_0 <= _GEN_26;
    end else begin
      reg_v_0 <= _GEN_382;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_v_1 <= _GEN_32;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_v_1 <= _GEN_32;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_v_1 <= _GEN_32;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_v_1 <= _GEN_32;
    end else begin
      reg_v_1 <= _GEN_383;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_v_2 <= _GEN_38;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_v_2 <= _GEN_38;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_v_2 <= _GEN_38;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_v_2 <= _GEN_38;
    end else begin
      reg_v_2 <= _GEN_384;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_v_3 <= _GEN_44;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_v_3 <= _GEN_44;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_v_3 <= _GEN_44;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_v_3 <= _GEN_44;
    end else begin
      reg_v_3 <= _GEN_385;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_v_4 <= _GEN_50;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_v_4 <= _GEN_50;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_v_4 <= _GEN_50;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_v_4 <= _GEN_50;
    end else begin
      reg_v_4 <= _GEN_386;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_v_5 <= _GEN_56;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_v_5 <= _GEN_56;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_v_5 <= _GEN_56;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_v_5 <= _GEN_56;
    end else begin
      reg_v_5 <= _GEN_387;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_v_6 <= _GEN_62;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_v_6 <= _GEN_62;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_v_6 <= _GEN_62;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_v_6 <= _GEN_62;
    end else begin
      reg_v_6 <= _GEN_388;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_v_7 <= _GEN_68;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_v_7 <= _GEN_68;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_v_7 <= _GEN_68;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_v_7 <= _GEN_68;
    end else begin
      reg_v_7 <= _GEN_389;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_v_8 <= _GEN_74;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_v_8 <= _GEN_74;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_v_8 <= _GEN_74;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_v_8 <= _GEN_74;
    end else begin
      reg_v_8 <= _GEN_390;
    end
    if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_v_9 <= _GEN_80;
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      reg_v_9 <= _GEN_80;
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_v_9 <= _GEN_80;
    end else if (reg_step_status == 4'h4) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 112:39]
      reg_v_9 <= _GEN_80;
    end else begin
      reg_v_9 <= _GEN_391;
    end
    if (reset) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 41:38]
      reg_step_status <= 4'h0; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 41:38]
    end else if (reg_step_status == 4'h1) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 85:33]
      reg_step_status <= _reg_step_status_T_1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 89:21]
    end else if (reg_step_status == 4'h2) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 90:39]
      if (lower_tri_mat_inv_unit_io_valid) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 93:43]
        reg_step_status <= _reg_step_status_T_1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 95:23]
      end else begin
        reg_step_status <= _GEN_81;
      end
    end else if (reg_step_status == 4'h3) begin // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 98:39]
      reg_step_status <= _reg_step_status_T_1; // @[Lower_Triangular_Matrix_Inversion_Complex_V1.scala 111:21]
    end else begin
      reg_step_status <= _GEN_394;
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
  reg_x_0 = _RAND_0[63:0];
  _RAND_1 = {2{`RANDOM}};
  reg_x_1 = _RAND_1[63:0];
  _RAND_2 = {2{`RANDOM}};
  reg_x_2 = _RAND_2[63:0];
  _RAND_3 = {2{`RANDOM}};
  reg_x_3 = _RAND_3[63:0];
  _RAND_4 = {2{`RANDOM}};
  reg_x_4 = _RAND_4[63:0];
  _RAND_5 = {2{`RANDOM}};
  reg_x_5 = _RAND_5[63:0];
  _RAND_6 = {2{`RANDOM}};
  reg_x_6 = _RAND_6[63:0];
  _RAND_7 = {2{`RANDOM}};
  reg_x_7 = _RAND_7[63:0];
  _RAND_8 = {2{`RANDOM}};
  reg_x_8 = _RAND_8[63:0];
  _RAND_9 = {2{`RANDOM}};
  reg_x_9 = _RAND_9[63:0];
  _RAND_10 = {2{`RANDOM}};
  reg_y_0 = _RAND_10[63:0];
  _RAND_11 = {2{`RANDOM}};
  reg_y_1 = _RAND_11[63:0];
  _RAND_12 = {2{`RANDOM}};
  reg_y_2 = _RAND_12[63:0];
  _RAND_13 = {2{`RANDOM}};
  reg_y_3 = _RAND_13[63:0];
  _RAND_14 = {2{`RANDOM}};
  reg_y_4 = _RAND_14[63:0];
  _RAND_15 = {2{`RANDOM}};
  reg_y_5 = _RAND_15[63:0];
  _RAND_16 = {2{`RANDOM}};
  reg_y_6 = _RAND_16[63:0];
  _RAND_17 = {2{`RANDOM}};
  reg_y_7 = _RAND_17[63:0];
  _RAND_18 = {2{`RANDOM}};
  reg_y_8 = _RAND_18[63:0];
  _RAND_19 = {2{`RANDOM}};
  reg_y_9 = _RAND_19[63:0];
  _RAND_20 = {2{`RANDOM}};
  reg_x_inv_0 = _RAND_20[63:0];
  _RAND_21 = {2{`RANDOM}};
  reg_x_inv_1 = _RAND_21[63:0];
  _RAND_22 = {2{`RANDOM}};
  reg_x_inv_2 = _RAND_22[63:0];
  _RAND_23 = {2{`RANDOM}};
  reg_x_inv_3 = _RAND_23[63:0];
  _RAND_24 = {2{`RANDOM}};
  reg_x_inv_4 = _RAND_24[63:0];
  _RAND_25 = {2{`RANDOM}};
  reg_x_inv_5 = _RAND_25[63:0];
  _RAND_26 = {2{`RANDOM}};
  reg_x_inv_6 = _RAND_26[63:0];
  _RAND_27 = {2{`RANDOM}};
  reg_x_inv_7 = _RAND_27[63:0];
  _RAND_28 = {2{`RANDOM}};
  reg_x_inv_8 = _RAND_28[63:0];
  _RAND_29 = {2{`RANDOM}};
  reg_x_inv_9 = _RAND_29[63:0];
  _RAND_30 = {2{`RANDOM}};
  reg_x_inv_y_0 = _RAND_30[63:0];
  _RAND_31 = {2{`RANDOM}};
  reg_x_inv_y_1 = _RAND_31[63:0];
  _RAND_32 = {2{`RANDOM}};
  reg_x_inv_y_2 = _RAND_32[63:0];
  _RAND_33 = {2{`RANDOM}};
  reg_x_inv_y_3 = _RAND_33[63:0];
  _RAND_34 = {2{`RANDOM}};
  reg_x_inv_y_4 = _RAND_34[63:0];
  _RAND_35 = {2{`RANDOM}};
  reg_x_inv_y_5 = _RAND_35[63:0];
  _RAND_36 = {2{`RANDOM}};
  reg_x_inv_y_6 = _RAND_36[63:0];
  _RAND_37 = {2{`RANDOM}};
  reg_x_inv_y_7 = _RAND_37[63:0];
  _RAND_38 = {2{`RANDOM}};
  reg_x_inv_y_8 = _RAND_38[63:0];
  _RAND_39 = {2{`RANDOM}};
  reg_x_inv_y_9 = _RAND_39[63:0];
  _RAND_40 = {2{`RANDOM}};
  reg_u_0 = _RAND_40[63:0];
  _RAND_41 = {2{`RANDOM}};
  reg_u_1 = _RAND_41[63:0];
  _RAND_42 = {2{`RANDOM}};
  reg_u_2 = _RAND_42[63:0];
  _RAND_43 = {2{`RANDOM}};
  reg_u_3 = _RAND_43[63:0];
  _RAND_44 = {2{`RANDOM}};
  reg_u_4 = _RAND_44[63:0];
  _RAND_45 = {2{`RANDOM}};
  reg_u_5 = _RAND_45[63:0];
  _RAND_46 = {2{`RANDOM}};
  reg_u_6 = _RAND_46[63:0];
  _RAND_47 = {2{`RANDOM}};
  reg_u_7 = _RAND_47[63:0];
  _RAND_48 = {2{`RANDOM}};
  reg_u_8 = _RAND_48[63:0];
  _RAND_49 = {2{`RANDOM}};
  reg_u_9 = _RAND_49[63:0];
  _RAND_50 = {2{`RANDOM}};
  reg_v_0 = _RAND_50[63:0];
  _RAND_51 = {2{`RANDOM}};
  reg_v_1 = _RAND_51[63:0];
  _RAND_52 = {2{`RANDOM}};
  reg_v_2 = _RAND_52[63:0];
  _RAND_53 = {2{`RANDOM}};
  reg_v_3 = _RAND_53[63:0];
  _RAND_54 = {2{`RANDOM}};
  reg_v_4 = _RAND_54[63:0];
  _RAND_55 = {2{`RANDOM}};
  reg_v_5 = _RAND_55[63:0];
  _RAND_56 = {2{`RANDOM}};
  reg_v_6 = _RAND_56[63:0];
  _RAND_57 = {2{`RANDOM}};
  reg_v_7 = _RAND_57[63:0];
  _RAND_58 = {2{`RANDOM}};
  reg_v_8 = _RAND_58[63:0];
  _RAND_59 = {2{`RANDOM}};
  reg_v_9 = _RAND_59[63:0];
  _RAND_60 = {1{`RANDOM}};
  reg_step_status = _RAND_60[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
