module shift_2_range(
  input  [31:0] io_x,
  output [31:0] io_out,
  output [4:0]  io_cnt,
  output        io_flag
);
  wire [31:0] _temp_x_T_2 = 32'sh0 - $signed(io_x); // @[Cordic_LV.scala 77:15]
  wire [31:0] temp_x = $signed(io_x) < 32'sh0 ? $signed(_temp_x_T_2) : $signed(io_x); // @[Cordic_LV.scala 76:71 77:12 80:12]
  wire  _T_1 = $signed(temp_x) < 32'sh80000; // @[Cordic_LV.scala 84:15]
  wire  index__0 = _T_1 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [32:0] _T_4 = {$signed(temp_x), 1'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__1 = $signed(_T_4) < 33'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [33:0] _T_6 = {$signed(temp_x), 2'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__2 = $signed(_T_6) < 34'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [34:0] _T_8 = {$signed(temp_x), 3'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__3 = $signed(_T_8) < 35'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [35:0] _T_10 = {$signed(temp_x), 4'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__4 = $signed(_T_10) < 36'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [36:0] _T_12 = {$signed(temp_x), 5'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__5 = $signed(_T_12) < 37'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [37:0] _T_14 = {$signed(temp_x), 6'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__6 = $signed(_T_14) < 38'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [38:0] _T_16 = {$signed(temp_x), 7'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__7 = $signed(_T_16) < 39'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [39:0] _T_18 = {$signed(temp_x), 8'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__8 = $signed(_T_18) < 40'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [40:0] _T_20 = {$signed(temp_x), 9'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__9 = $signed(_T_20) < 41'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [41:0] _T_22 = {$signed(temp_x), 10'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__10 = $signed(_T_22) < 42'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [42:0] _T_24 = {$signed(temp_x), 11'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__11 = $signed(_T_24) < 43'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [43:0] _T_26 = {$signed(temp_x), 12'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__12 = $signed(_T_26) < 44'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [44:0] _T_28 = {$signed(temp_x), 13'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__13 = $signed(_T_28) < 45'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [45:0] _T_30 = {$signed(temp_x), 14'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__14 = $signed(_T_30) < 46'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [46:0] _T_32 = {$signed(temp_x), 15'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__15 = $signed(_T_32) < 47'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [47:0] _T_34 = {$signed(temp_x), 16'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__16 = $signed(_T_34) < 48'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [48:0] _T_36 = {$signed(temp_x), 17'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__17 = $signed(_T_36) < 49'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [49:0] _T_38 = {$signed(temp_x), 18'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__18 = $signed(_T_38) < 50'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
  wire [50:0] _T_40 = {$signed(temp_x), 19'h0}; // @[Cordic_LV.scala 88:20]
  wire  index__19 = $signed(_T_40) < 51'sh80000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 88:84 89:18 91:18]
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
  wire [62:0] _GEN_0 = {{31{temp_x[31]}},temp_x}; // @[Cordic_LV.scala 97:23]
  wire [62:0] _io_out_T = $signed(_GEN_0) << temp_cnt; // @[Cordic_LV.scala 97:23]
  wire  index_1_0 = $signed(temp_x) > 32'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [30:0] _T_45 = temp_x[31:1]; // @[Cordic_LV.scala 102:20]
  wire [31:0] _GEN_58 = {{1{_T_45[30]}},_T_45}; // @[Cordic_LV.scala 102:26]
  wire  index_1_1 = $signed(_GEN_58) > 32'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [29:0] _T_47 = temp_x[31:2]; // @[Cordic_LV.scala 102:20]
  wire [31:0] _GEN_59 = {{2{_T_47[29]}},_T_47}; // @[Cordic_LV.scala 102:26]
  wire  index_1_2 = $signed(_GEN_59) > 32'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [28:0] _T_49 = temp_x[31:3]; // @[Cordic_LV.scala 102:20]
  wire [31:0] _GEN_60 = {{3{_T_49[28]}},_T_49}; // @[Cordic_LV.scala 102:26]
  wire  index_1_3 = $signed(_GEN_60) > 32'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [27:0] _T_51 = temp_x[31:4]; // @[Cordic_LV.scala 102:20]
  wire [31:0] _GEN_61 = {{4{_T_51[27]}},_T_51}; // @[Cordic_LV.scala 102:26]
  wire  index_1_4 = $signed(_GEN_61) > 32'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [26:0] _T_53 = temp_x[31:5]; // @[Cordic_LV.scala 102:20]
  wire [31:0] _GEN_62 = {{5{_T_53[26]}},_T_53}; // @[Cordic_LV.scala 102:26]
  wire  index_1_5 = $signed(_GEN_62) > 32'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [25:0] _T_55 = temp_x[31:6]; // @[Cordic_LV.scala 102:20]
  wire [31:0] _GEN_63 = {{6{_T_55[25]}},_T_55}; // @[Cordic_LV.scala 102:26]
  wire  index_1_6 = $signed(_GEN_63) > 32'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [24:0] _T_57 = temp_x[31:7]; // @[Cordic_LV.scala 102:20]
  wire [31:0] _GEN_64 = {{7{_T_57[24]}},_T_57}; // @[Cordic_LV.scala 102:26]
  wire  index_1_7 = $signed(_GEN_64) > 32'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [23:0] _T_59 = temp_x[31:8]; // @[Cordic_LV.scala 102:20]
  wire [31:0] _GEN_65 = {{8{_T_59[23]}},_T_59}; // @[Cordic_LV.scala 102:26]
  wire  index_1_8 = $signed(_GEN_65) > 32'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [22:0] _T_61 = temp_x[31:9]; // @[Cordic_LV.scala 102:20]
  wire [31:0] _GEN_66 = {{9{_T_61[22]}},_T_61}; // @[Cordic_LV.scala 102:26]
  wire  index_1_9 = $signed(_GEN_66) > 32'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [21:0] _T_63 = temp_x[31:10]; // @[Cordic_LV.scala 102:20]
  wire [31:0] _GEN_67 = {{10{_T_63[21]}},_T_63}; // @[Cordic_LV.scala 102:26]
  wire  index_1_10 = $signed(_GEN_67) > 32'sh100000 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 102:82 103:18 105:18]
  wire [7:0] temp_cnt_lo_lo_1 = {index_1_7,index_1_6,index_1_5,index_1_4,index_1_3,index_1_2,index_1_1,index_1_0}; // @[Cordic_LV.scala 109:48]
  wire [31:0] _temp_cnt_T_39 = {16'hffff,4'hf,1'h1,index_1_10,index_1_9,index_1_8,temp_cnt_lo_lo_1}; // @[Cordic_LV.scala 109:48]
  wire [4:0] _temp_cnt_T_72 = _temp_cnt_T_39[30] ? 5'h1e : 5'h1f; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_73 = _temp_cnt_T_39[29] ? 5'h1d : _temp_cnt_T_72; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_74 = _temp_cnt_T_39[28] ? 5'h1c : _temp_cnt_T_73; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_75 = _temp_cnt_T_39[27] ? 5'h1b : _temp_cnt_T_74; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_76 = _temp_cnt_T_39[26] ? 5'h1a : _temp_cnt_T_75; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_77 = _temp_cnt_T_39[25] ? 5'h19 : _temp_cnt_T_76; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_78 = _temp_cnt_T_39[24] ? 5'h18 : _temp_cnt_T_77; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_79 = _temp_cnt_T_39[23] ? 5'h17 : _temp_cnt_T_78; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_80 = _temp_cnt_T_39[22] ? 5'h16 : _temp_cnt_T_79; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_81 = _temp_cnt_T_39[21] ? 5'h15 : _temp_cnt_T_80; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_82 = _temp_cnt_T_39[20] ? 5'h14 : _temp_cnt_T_81; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_83 = _temp_cnt_T_39[19] ? 5'h13 : _temp_cnt_T_82; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_84 = _temp_cnt_T_39[18] ? 5'h12 : _temp_cnt_T_83; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_85 = _temp_cnt_T_39[17] ? 5'h11 : _temp_cnt_T_84; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_86 = _temp_cnt_T_39[16] ? 5'h10 : _temp_cnt_T_85; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_87 = _temp_cnt_T_39[15] ? 5'hf : _temp_cnt_T_86; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_88 = _temp_cnt_T_39[14] ? 5'he : _temp_cnt_T_87; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_89 = _temp_cnt_T_39[13] ? 5'hd : _temp_cnt_T_88; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_90 = _temp_cnt_T_39[12] ? 5'hc : _temp_cnt_T_89; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_91 = _temp_cnt_T_39[11] ? 5'hb : _temp_cnt_T_90; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_92 = _temp_cnt_T_39[10] ? 5'ha : _temp_cnt_T_91; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_93 = _temp_cnt_T_39[9] ? 5'h9 : _temp_cnt_T_92; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_94 = _temp_cnt_T_39[8] ? 5'h8 : _temp_cnt_T_93; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_95 = _temp_cnt_T_39[7] ? 5'h7 : _temp_cnt_T_94; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_96 = _temp_cnt_T_39[6] ? 5'h6 : _temp_cnt_T_95; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_97 = _temp_cnt_T_39[5] ? 5'h5 : _temp_cnt_T_96; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_98 = _temp_cnt_T_39[4] ? 5'h4 : _temp_cnt_T_97; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_99 = _temp_cnt_T_39[3] ? 5'h3 : _temp_cnt_T_98; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_100 = _temp_cnt_T_39[2] ? 5'h2 : _temp_cnt_T_99; // @[Mux.scala 47:70]
  wire [4:0] _temp_cnt_T_101 = _temp_cnt_T_39[1] ? 5'h1 : _temp_cnt_T_100; // @[Mux.scala 47:70]
  wire [4:0] temp_cnt_1 = _temp_cnt_T_39[0] ? 5'h0 : _temp_cnt_T_101; // @[Mux.scala 47:70]
  wire [4:0] _io_cnt_T_1 = _temp_cnt_T_39[0] ? 5'h0 : _temp_cnt_T_101; // @[Cordic_LV.scala 110:32]
  wire [4:0] _io_cnt_T_4 = 5'sh0 - $signed(_io_cnt_T_1); // @[Cordic_LV.scala 110:15]
  wire [31:0] _io_out_T_1 = $signed(temp_x) >>> temp_cnt_1; // @[Cordic_LV.scala 111:23]
  wire [4:0] _GEN_54 = $signed(temp_x) > 32'sh80000 ? $signed(_io_cnt_T_4) : $signed(5'sh0); // @[Cordic_LV.scala 110:12 113:12 98:79]
  wire [31:0] _GEN_55 = $signed(temp_x) > 32'sh80000 ? $signed(_io_out_T_1) : $signed(temp_x); // @[Cordic_LV.scala 111:12 114:12 98:79]
  wire [62:0] _GEN_57 = $signed(temp_x) < 32'sh80000 ? $signed(_io_out_T) : $signed({{31{_GEN_55[31]}},_GEN_55}); // @[Cordic_LV.scala 84:73 97:12]
  assign io_out = _GEN_57[31:0];
  assign io_cnt = $signed(temp_x) < 32'sh80000 ? $signed(_io_cnt_T) : $signed(_GEN_54); // @[Cordic_LV.scala 84:73 96:12]
  assign io_flag = $signed(io_x) < 32'sh0 ? 1'h0 : 1'h1; // @[Cordic_LV.scala 76:71 78:13 81:13]
endmodule
module CORDIC_LV_ORIGIN(
  input         clock,
  input         reset,
  input  [31:0] io_x,
  input  [31:0] io_y,
  output [31:0] io_z
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
`endif // RANDOMIZE_REG_INIT
  reg [31:0] current_x_0; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_1; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_2; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_3; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_4; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_5; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_6; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_7; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_8; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_9; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_10; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_11; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_12; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_13; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_14; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_15; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_16; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_x_17; // @[Cordic_LV.scala 25:43]
  reg [31:0] current_y_0; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_1; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_2; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_3; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_4; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_5; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_6; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_7; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_8; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_9; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_10; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_11; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_12; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_13; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_14; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_15; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_16; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_17; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_y_18; // @[Cordic_LV.scala 26:43]
  reg [31:0] current_z_0; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_1; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_2; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_3; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_4; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_5; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_6; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_7; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_8; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_9; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_10; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_11; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_12; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_13; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_14; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_15; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_16; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_17; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_18; // @[Cordic_LV.scala 27:43]
  reg [31:0] current_z_19; // @[Cordic_LV.scala 27:43]
  wire [31:0] _current_y_0_T_3 = $signed(io_y) - $signed(io_x); // @[Cordic_LV.scala 37:28]
  wire [30:0] _current_y_1_T = current_x_0[31:1]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_38 = {{1{_current_y_1_T[30]}},_current_y_1_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_1_T_3 = $signed(current_y_0) + $signed(_GEN_38); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_1_T_3 = $signed(current_z_0) - 32'sh80000; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_1_T_7 = $signed(current_y_0) - $signed(_GEN_38); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_1_T_7 = $signed(current_z_0) + 32'sh80000; // @[Cordic_LV.scala 46:42]
  wire [29:0] _current_y_2_T = current_x_1[31:2]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_40 = {{2{_current_y_2_T[29]}},_current_y_2_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_2_T_3 = $signed(current_y_1) + $signed(_GEN_40); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_2_T_3 = $signed(current_z_1) - 32'sh40000; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_2_T_7 = $signed(current_y_1) - $signed(_GEN_40); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_2_T_7 = $signed(current_z_1) + 32'sh40000; // @[Cordic_LV.scala 46:42]
  wire [28:0] _current_y_3_T = current_x_2[31:3]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_42 = {{3{_current_y_3_T[28]}},_current_y_3_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_3_T_3 = $signed(current_y_2) + $signed(_GEN_42); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_3_T_3 = $signed(current_z_2) - 32'sh20000; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_3_T_7 = $signed(current_y_2) - $signed(_GEN_42); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_3_T_7 = $signed(current_z_2) + 32'sh20000; // @[Cordic_LV.scala 46:42]
  wire [27:0] _current_y_4_T = current_x_3[31:4]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_44 = {{4{_current_y_4_T[27]}},_current_y_4_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_4_T_3 = $signed(current_y_3) + $signed(_GEN_44); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_4_T_3 = $signed(current_z_3) - 32'sh10000; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_4_T_7 = $signed(current_y_3) - $signed(_GEN_44); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_4_T_7 = $signed(current_z_3) + 32'sh10000; // @[Cordic_LV.scala 46:42]
  wire [26:0] _current_y_5_T = current_x_4[31:5]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_46 = {{5{_current_y_5_T[26]}},_current_y_5_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_5_T_3 = $signed(current_y_4) + $signed(_GEN_46); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_5_T_3 = $signed(current_z_4) - 32'sh8000; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_5_T_7 = $signed(current_y_4) - $signed(_GEN_46); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_5_T_7 = $signed(current_z_4) + 32'sh8000; // @[Cordic_LV.scala 46:42]
  wire [25:0] _current_y_6_T = current_x_5[31:6]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_48 = {{6{_current_y_6_T[25]}},_current_y_6_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_6_T_3 = $signed(current_y_5) + $signed(_GEN_48); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_6_T_3 = $signed(current_z_5) - 32'sh4000; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_6_T_7 = $signed(current_y_5) - $signed(_GEN_48); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_6_T_7 = $signed(current_z_5) + 32'sh4000; // @[Cordic_LV.scala 46:42]
  wire [24:0] _current_y_7_T = current_x_6[31:7]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_50 = {{7{_current_y_7_T[24]}},_current_y_7_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_7_T_3 = $signed(current_y_6) + $signed(_GEN_50); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_7_T_3 = $signed(current_z_6) - 32'sh2000; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_7_T_7 = $signed(current_y_6) - $signed(_GEN_50); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_7_T_7 = $signed(current_z_6) + 32'sh2000; // @[Cordic_LV.scala 46:42]
  wire [23:0] _current_y_8_T = current_x_7[31:8]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_52 = {{8{_current_y_8_T[23]}},_current_y_8_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_8_T_3 = $signed(current_y_7) + $signed(_GEN_52); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_8_T_3 = $signed(current_z_7) - 32'sh1000; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_8_T_7 = $signed(current_y_7) - $signed(_GEN_52); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_8_T_7 = $signed(current_z_7) + 32'sh1000; // @[Cordic_LV.scala 46:42]
  wire [22:0] _current_y_9_T = current_x_8[31:9]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_54 = {{9{_current_y_9_T[22]}},_current_y_9_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_9_T_3 = $signed(current_y_8) + $signed(_GEN_54); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_9_T_3 = $signed(current_z_8) - 32'sh800; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_9_T_7 = $signed(current_y_8) - $signed(_GEN_54); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_9_T_7 = $signed(current_z_8) + 32'sh800; // @[Cordic_LV.scala 46:42]
  wire [21:0] _current_y_10_T = current_x_9[31:10]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_56 = {{10{_current_y_10_T[21]}},_current_y_10_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_10_T_3 = $signed(current_y_9) + $signed(_GEN_56); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_10_T_3 = $signed(current_z_9) - 32'sh400; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_10_T_7 = $signed(current_y_9) - $signed(_GEN_56); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_10_T_7 = $signed(current_z_9) + 32'sh400; // @[Cordic_LV.scala 46:42]
  wire [20:0] _current_y_11_T = current_x_10[31:11]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_58 = {{11{_current_y_11_T[20]}},_current_y_11_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_11_T_3 = $signed(current_y_10) + $signed(_GEN_58); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_11_T_3 = $signed(current_z_10) - 32'sh200; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_11_T_7 = $signed(current_y_10) - $signed(_GEN_58); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_11_T_7 = $signed(current_z_10) + 32'sh200; // @[Cordic_LV.scala 46:42]
  wire [19:0] _current_y_12_T = current_x_11[31:12]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_60 = {{12{_current_y_12_T[19]}},_current_y_12_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_12_T_3 = $signed(current_y_11) + $signed(_GEN_60); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_12_T_3 = $signed(current_z_11) - 32'sh100; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_12_T_7 = $signed(current_y_11) - $signed(_GEN_60); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_12_T_7 = $signed(current_z_11) + 32'sh100; // @[Cordic_LV.scala 46:42]
  wire [18:0] _current_y_13_T = current_x_12[31:13]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_62 = {{13{_current_y_13_T[18]}},_current_y_13_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_13_T_3 = $signed(current_y_12) + $signed(_GEN_62); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_13_T_3 = $signed(current_z_12) - 32'sh80; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_13_T_7 = $signed(current_y_12) - $signed(_GEN_62); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_13_T_7 = $signed(current_z_12) + 32'sh80; // @[Cordic_LV.scala 46:42]
  wire [17:0] _current_y_14_T = current_x_13[31:14]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_64 = {{14{_current_y_14_T[17]}},_current_y_14_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_14_T_3 = $signed(current_y_13) + $signed(_GEN_64); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_14_T_3 = $signed(current_z_13) - 32'sh40; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_14_T_7 = $signed(current_y_13) - $signed(_GEN_64); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_14_T_7 = $signed(current_z_13) + 32'sh40; // @[Cordic_LV.scala 46:42]
  wire [16:0] _current_y_15_T = current_x_14[31:15]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_66 = {{15{_current_y_15_T[16]}},_current_y_15_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_15_T_3 = $signed(current_y_14) + $signed(_GEN_66); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_15_T_3 = $signed(current_z_14) - 32'sh20; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_15_T_7 = $signed(current_y_14) - $signed(_GEN_66); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_15_T_7 = $signed(current_z_14) + 32'sh20; // @[Cordic_LV.scala 46:42]
  wire [15:0] _current_y_16_T = current_x_15[31:16]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_68 = {{16{_current_y_16_T[15]}},_current_y_16_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_16_T_3 = $signed(current_y_15) + $signed(_GEN_68); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_16_T_3 = $signed(current_z_15) - 32'sh10; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_16_T_7 = $signed(current_y_15) - $signed(_GEN_68); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_16_T_7 = $signed(current_z_15) + 32'sh10; // @[Cordic_LV.scala 46:42]
  wire [14:0] _current_y_17_T = current_x_16[31:17]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_70 = {{17{_current_y_17_T[14]}},_current_y_17_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_17_T_3 = $signed(current_y_16) + $signed(_GEN_70); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_17_T_3 = $signed(current_z_16) - 32'sh8; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_17_T_7 = $signed(current_y_16) - $signed(_GEN_70); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_17_T_7 = $signed(current_z_16) + 32'sh8; // @[Cordic_LV.scala 46:42]
  wire [13:0] _current_y_18_T = current_x_17[31:18]; // @[Cordic_LV.scala 42:62]
  wire [31:0] _GEN_72 = {{18{_current_y_18_T[13]}},_current_y_18_T}; // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_y_18_T_3 = $signed(current_y_17) + $signed(_GEN_72); // @[Cordic_LV.scala 42:42]
  wire [31:0] _current_z_18_T_3 = $signed(current_z_17) - 32'sh4; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_y_18_T_7 = $signed(current_y_17) - $signed(_GEN_72); // @[Cordic_LV.scala 45:42]
  wire [31:0] _current_z_18_T_7 = $signed(current_z_17) + 32'sh4; // @[Cordic_LV.scala 46:42]
  wire [31:0] _current_z_19_T_3 = $signed(current_z_18) - 32'sh2; // @[Cordic_LV.scala 43:42]
  wire [31:0] _current_z_19_T_7 = $signed(current_z_18) + 32'sh2; // @[Cordic_LV.scala 46:42]
  assign io_z = current_z_19; // @[Cordic_LV.scala 56:8]
  always @(posedge clock) begin
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_0 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_0 <= io_x; // @[Cordic_LV.scala 36:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_1 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_1 <= current_x_0; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_2 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_2 <= current_x_1; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_3 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_3 <= current_x_2; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_4 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_4 <= current_x_3; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_5 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_5 <= current_x_4; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_6 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_6 <= current_x_5; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_7 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_7 <= current_x_6; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_8 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_8 <= current_x_7; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_9 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_9 <= current_x_8; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_10 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_10 <= current_x_9; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_11 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_11 <= current_x_10; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_12 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_12 <= current_x_11; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_13 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_13 <= current_x_12; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_14 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_14 <= current_x_13; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_15 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_15 <= current_x_14; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_16 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_16 <= current_x_15; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 25:43]
      current_x_17 <= 32'sh0; // @[Cordic_LV.scala 25:43]
    end else begin
      current_x_17 <= current_x_16; // @[Cordic_LV.scala 40:20]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_0 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else begin
      current_y_0 <= _current_y_0_T_3; // @[Cordic_LV.scala 37:20]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_1 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_0) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_1 <= _current_y_1_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_1 <= _current_y_1_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_2 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_1) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_2 <= _current_y_2_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_2 <= _current_y_2_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_3 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_2) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_3 <= _current_y_3_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_3 <= _current_y_3_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_4 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_3) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_4 <= _current_y_4_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_4 <= _current_y_4_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_5 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_4) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_5 <= _current_y_5_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_5 <= _current_y_5_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_6 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_5) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_6 <= _current_y_6_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_6 <= _current_y_6_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_7 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_6) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_7 <= _current_y_7_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_7 <= _current_y_7_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_8 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_7) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_8 <= _current_y_8_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_8 <= _current_y_8_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_9 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_8) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_9 <= _current_y_9_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_9 <= _current_y_9_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_10 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_9) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_10 <= _current_y_10_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_10 <= _current_y_10_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_11 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_10) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_11 <= _current_y_11_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_11 <= _current_y_11_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_12 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_11) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_12 <= _current_y_12_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_12 <= _current_y_12_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_13 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_12) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_13 <= _current_y_13_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_13 <= _current_y_13_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_14 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_13) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_14 <= _current_y_14_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_14 <= _current_y_14_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_15 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_14) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_15 <= _current_y_15_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_15 <= _current_y_15_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_16 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_15) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_16 <= _current_y_16_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_16 <= _current_y_16_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_17 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_16) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_17 <= _current_y_17_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_17 <= _current_y_17_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 26:43]
      current_y_18 <= 32'sh0; // @[Cordic_LV.scala 26:43]
    end else if ($signed(current_y_17) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_y_18 <= _current_y_18_T_3; // @[Cordic_LV.scala 42:22]
    end else begin
      current_y_18 <= _current_y_18_T_7; // @[Cordic_LV.scala 45:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_0 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else begin
      current_z_0 <= 32'sh100000; // @[Cordic_LV.scala 38:20]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_1 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_0) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_1 <= _current_z_1_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_1 <= _current_z_1_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_2 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_1) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_2 <= _current_z_2_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_2 <= _current_z_2_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_3 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_2) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_3 <= _current_z_3_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_3 <= _current_z_3_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_4 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_3) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_4 <= _current_z_4_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_4 <= _current_z_4_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_5 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_4) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_5 <= _current_z_5_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_5 <= _current_z_5_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_6 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_5) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_6 <= _current_z_6_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_6 <= _current_z_6_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_7 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_6) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_7 <= _current_z_7_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_7 <= _current_z_7_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_8 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_7) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_8 <= _current_z_8_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_8 <= _current_z_8_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_9 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_8) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_9 <= _current_z_9_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_9 <= _current_z_9_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_10 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_9) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_10 <= _current_z_10_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_10 <= _current_z_10_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_11 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_10) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_11 <= _current_z_11_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_11 <= _current_z_11_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_12 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_11) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_12 <= _current_z_12_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_12 <= _current_z_12_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_13 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_12) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_13 <= _current_z_13_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_13 <= _current_z_13_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_14 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_13) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_14 <= _current_z_14_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_14 <= _current_z_14_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_15 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_14) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_15 <= _current_z_15_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_15 <= _current_z_15_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_16 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_15) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_16 <= _current_z_16_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_16 <= _current_z_16_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_17 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_16) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_17 <= _current_z_17_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_17 <= _current_z_17_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_18 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_17) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
      current_z_18 <= _current_z_18_T_3; // @[Cordic_LV.scala 43:22]
    end else begin
      current_z_18 <= _current_z_18_T_7; // @[Cordic_LV.scala 46:22]
    end
    if (reset) begin // @[Cordic_LV.scala 27:43]
      current_z_19 <= 32'sh0; // @[Cordic_LV.scala 27:43]
    end else if ($signed(current_y_18) < 32'sh0) begin // @[Cordic_LV.scala 41:88]
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
  _RAND_0 = {1{`RANDOM}};
  current_x_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  current_x_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  current_x_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  current_x_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  current_x_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  current_x_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  current_x_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  current_x_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  current_x_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  current_x_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  current_x_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  current_x_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  current_x_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  current_x_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  current_x_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  current_x_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  current_x_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  current_x_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  current_y_0 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  current_y_1 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  current_y_2 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  current_y_3 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  current_y_4 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  current_y_5 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  current_y_6 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  current_y_7 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  current_y_8 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  current_y_9 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  current_y_10 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  current_y_11 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  current_y_12 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  current_y_13 = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  current_y_14 = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  current_y_15 = _RAND_33[31:0];
  _RAND_34 = {1{`RANDOM}};
  current_y_16 = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  current_y_17 = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  current_y_18 = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  current_z_0 = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  current_z_1 = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  current_z_2 = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  current_z_3 = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  current_z_4 = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  current_z_5 = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  current_z_6 = _RAND_43[31:0];
  _RAND_44 = {1{`RANDOM}};
  current_z_7 = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  current_z_8 = _RAND_45[31:0];
  _RAND_46 = {1{`RANDOM}};
  current_z_9 = _RAND_46[31:0];
  _RAND_47 = {1{`RANDOM}};
  current_z_10 = _RAND_47[31:0];
  _RAND_48 = {1{`RANDOM}};
  current_z_11 = _RAND_48[31:0];
  _RAND_49 = {1{`RANDOM}};
  current_z_12 = _RAND_49[31:0];
  _RAND_50 = {1{`RANDOM}};
  current_z_13 = _RAND_50[31:0];
  _RAND_51 = {1{`RANDOM}};
  current_z_14 = _RAND_51[31:0];
  _RAND_52 = {1{`RANDOM}};
  current_z_15 = _RAND_52[31:0];
  _RAND_53 = {1{`RANDOM}};
  current_z_16 = _RAND_53[31:0];
  _RAND_54 = {1{`RANDOM}};
  current_z_17 = _RAND_54[31:0];
  _RAND_55 = {1{`RANDOM}};
  current_z_18 = _RAND_55[31:0];
  _RAND_56 = {1{`RANDOM}};
  current_z_19 = _RAND_56[31:0];
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
  input  [31:0] io_x,
  input  [31:0] io_y,
  output [31:0] io_z
);
  wire [31:0] unit_io_x; // @[Cordic_LV.scala 131:22]
  wire [31:0] unit_io_out; // @[Cordic_LV.scala 131:22]
  wire [4:0] unit_io_cnt; // @[Cordic_LV.scala 131:22]
  wire  unit_io_flag; // @[Cordic_LV.scala 131:22]
  wire [31:0] unit_1_io_x; // @[Cordic_LV.scala 131:22]
  wire [31:0] unit_1_io_out; // @[Cordic_LV.scala 131:22]
  wire [4:0] unit_1_io_cnt; // @[Cordic_LV.scala 131:22]
  wire  unit_1_io_flag; // @[Cordic_LV.scala 131:22]
  wire  cordic_lv_clock; // @[Cordic_LV.scala 157:43]
  wire  cordic_lv_reset; // @[Cordic_LV.scala 157:43]
  wire [31:0] cordic_lv_io_x; // @[Cordic_LV.scala 157:43]
  wire [31:0] cordic_lv_io_y; // @[Cordic_LV.scala 157:43]
  wire [31:0] cordic_lv_io_z; // @[Cordic_LV.scala 157:43]
  wire [31:0] _unnormed_z_T_2 = 32'sh0 - $signed(cordic_lv_io_z); // @[Cordic_LV.scala 164:19]
  wire [31:0] unnormed_z = unit_io_flag & ~unit_1_io_flag | ~unit_io_flag & unit_1_io_flag ? $signed(_unnormed_z_T_2) :
    $signed(cordic_lv_io_z); // @[Cordic_LV.scala 163:89 164:16 166:16]
  wire [4:0] shift_cnt = $signed(unit_1_io_cnt) - $signed(unit_io_cnt); // @[Cordic_LV.scala 168:25]
  wire [4:0] _io_z_T_3 = 5'sh0 - $signed(shift_cnt); // @[Cordic_LV.scala 170:46]
  wire [62:0] _GEN_0 = {{31{unnormed_z[31]}},unnormed_z}; // @[Cordic_LV.scala 170:24]
  wire [62:0] _io_z_T_4 = $signed(_GEN_0) << _io_z_T_3; // @[Cordic_LV.scala 170:24]
  wire [4:0] _io_z_T_5 = $signed(unit_1_io_cnt) - $signed(unit_io_cnt); // @[Cordic_LV.scala 172:43]
  wire [31:0] _io_z_T_6 = $signed(unnormed_z) >>> _io_z_T_5; // @[Cordic_LV.scala 172:24]
  wire [62:0] _GEN_1 = $signed(shift_cnt) < 5'sh0 ? $signed(_io_z_T_4) : $signed({{31{_io_z_T_6[31]}},_io_z_T_6}); // @[Cordic_LV.scala 169:24 170:10 172:10]
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
  assign io_z = _GEN_1[31:0];
  assign unit_io_x = io_x; // @[Cordic_LV.scala 132:15]
  assign unit_1_io_x = io_y; // @[Cordic_LV.scala 132:15]
  assign cordic_lv_clock = clock;
  assign cordic_lv_reset = reset;
  assign cordic_lv_io_x = unit_io_out; // @[Cordic_LV.scala 158:18]
  assign cordic_lv_io_y = unit_1_io_out; // @[Cordic_LV.scala 159:18]
endmodule
