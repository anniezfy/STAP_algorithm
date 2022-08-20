module CORDIC_CV_ORIGIN(
  input         clock,
  input         reset,
  input  [31:0] io_x,
  input  [31:0] io_y,
  output [31:0] io_theta,
  output [31:0] io_r,
  output [31:0] io_arctan
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
`endif // RANDOMIZE_REG_INIT
  reg [31:0] current_x_0; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_1; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_2; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_3; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_4; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_5; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_6; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_7; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_8; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_9; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_10; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_11; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_12; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_13; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_14; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_15; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_16; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_17; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_18; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_x_19; // @[Cordic_CV.scala 40:43]
  reg [31:0] current_y_0; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_1; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_2; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_3; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_4; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_5; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_6; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_7; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_8; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_9; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_10; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_11; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_12; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_13; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_14; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_15; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_16; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_17; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_y_18; // @[Cordic_CV.scala 41:43]
  reg [31:0] current_theta_0; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_1; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_2; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_3; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_4; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_5; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_6; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_7; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_8; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_9; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_10; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_11; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_12; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_13; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_14; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_15; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_16; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_17; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_18; // @[Cordic_CV.scala 42:47]
  reg [31:0] current_theta_19; // @[Cordic_CV.scala 42:47]
  wire [31:0] _current_x_0_T_3 = $signed(io_x) - $signed(io_y); // @[Cordic_CV.scala 52:30]
  wire [31:0] _current_y_0_T_3 = $signed(io_y) + $signed(io_x); // @[Cordic_CV.scala 53:30]
  wire [31:0] _current_theta_0_T_2 = 32'sh0 - 32'sh2d00000; // @[Cordic_CV.scala 54:29]
  wire [31:0] _current_x_0_T_7 = $signed(io_x) + $signed(io_y); // @[Cordic_CV.scala 56:30]
  wire [31:0] _current_y_0_T_7 = $signed(io_y) - $signed(io_x); // @[Cordic_CV.scala 57:30]
  wire [30:0] _current_x_1_T = current_y_0[31:1]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_60 = {{1{_current_x_1_T[30]}},_current_x_1_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_1_T_3 = $signed(current_x_0) - $signed(_GEN_60); // @[Cordic_CV.scala 62:42]
  wire [30:0] _current_y_1_T = current_x_0[31:1]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_61 = {{1{_current_y_1_T[30]}},_current_y_1_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_1_T_3 = $signed(current_y_0) + $signed(_GEN_61); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_1_T_2 = $signed(current_theta_0) - 32'sh1a90a73; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_1_T_7 = $signed(current_x_0) + $signed(_GEN_60); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_1_T_7 = $signed(current_y_0) - $signed(_GEN_61); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_1_T_5 = $signed(current_theta_0) + 32'sh1a90a73; // @[Cordic_CV.scala 68:50]
  wire [29:0] _current_x_2_T = current_y_1[31:2]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_64 = {{2{_current_x_2_T[29]}},_current_x_2_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_2_T_3 = $signed(current_x_1) - $signed(_GEN_64); // @[Cordic_CV.scala 62:42]
  wire [29:0] _current_y_2_T = current_x_1[31:2]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_65 = {{2{_current_y_2_T[29]}},_current_y_2_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_2_T_3 = $signed(current_y_1) + $signed(_GEN_65); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_2_T_2 = $signed(current_theta_1) - 32'she09474; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_2_T_7 = $signed(current_x_1) + $signed(_GEN_64); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_2_T_7 = $signed(current_y_1) - $signed(_GEN_65); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_2_T_5 = $signed(current_theta_1) + 32'she09474; // @[Cordic_CV.scala 68:50]
  wire [28:0] _current_x_3_T = current_y_2[31:3]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_68 = {{3{_current_x_3_T[28]}},_current_x_3_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_3_T_3 = $signed(current_x_2) - $signed(_GEN_68); // @[Cordic_CV.scala 62:42]
  wire [28:0] _current_y_3_T = current_x_2[31:3]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_69 = {{3{_current_y_3_T[28]}},_current_y_3_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_3_T_3 = $signed(current_y_2) + $signed(_GEN_69); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_3_T_2 = $signed(current_theta_2) - 32'sh720011; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_3_T_7 = $signed(current_x_2) + $signed(_GEN_68); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_3_T_7 = $signed(current_y_2) - $signed(_GEN_69); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_3_T_5 = $signed(current_theta_2) + 32'sh720011; // @[Cordic_CV.scala 68:50]
  wire [27:0] _current_x_4_T = current_y_3[31:4]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_72 = {{4{_current_x_4_T[27]}},_current_x_4_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_4_T_3 = $signed(current_x_3) - $signed(_GEN_72); // @[Cordic_CV.scala 62:42]
  wire [27:0] _current_y_4_T = current_x_3[31:4]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_73 = {{4{_current_y_4_T[27]}},_current_y_4_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_4_T_3 = $signed(current_y_3) + $signed(_GEN_73); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_4_T_2 = $signed(current_theta_3) - 32'sh3938aa; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_4_T_7 = $signed(current_x_3) + $signed(_GEN_72); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_4_T_7 = $signed(current_y_3) - $signed(_GEN_73); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_4_T_5 = $signed(current_theta_3) + 32'sh3938aa; // @[Cordic_CV.scala 68:50]
  wire [26:0] _current_x_5_T = current_y_4[31:5]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_76 = {{5{_current_x_5_T[26]}},_current_x_5_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_5_T_3 = $signed(current_x_4) - $signed(_GEN_76); // @[Cordic_CV.scala 62:42]
  wire [26:0] _current_y_5_T = current_x_4[31:5]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_77 = {{5{_current_y_5_T[26]}},_current_y_5_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_5_T_3 = $signed(current_y_4) + $signed(_GEN_77); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_5_T_2 = $signed(current_theta_4) - 32'sh1ca379; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_5_T_7 = $signed(current_x_4) + $signed(_GEN_76); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_5_T_7 = $signed(current_y_4) - $signed(_GEN_77); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_5_T_5 = $signed(current_theta_4) + 32'sh1ca379; // @[Cordic_CV.scala 68:50]
  wire [25:0] _current_x_6_T = current_y_5[31:6]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_80 = {{6{_current_x_6_T[25]}},_current_x_6_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_6_T_3 = $signed(current_x_5) - $signed(_GEN_80); // @[Cordic_CV.scala 62:42]
  wire [25:0] _current_y_6_T = current_x_5[31:6]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_81 = {{6{_current_y_6_T[25]}},_current_y_6_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_6_T_3 = $signed(current_y_5) + $signed(_GEN_81); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_6_T_2 = $signed(current_theta_5) - 32'she52a2; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_6_T_7 = $signed(current_x_5) + $signed(_GEN_80); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_6_T_7 = $signed(current_y_5) - $signed(_GEN_81); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_6_T_5 = $signed(current_theta_5) + 32'she52a2; // @[Cordic_CV.scala 68:50]
  wire [24:0] _current_x_7_T = current_y_6[31:7]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_84 = {{7{_current_x_7_T[24]}},_current_x_7_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_7_T_3 = $signed(current_x_6) - $signed(_GEN_84); // @[Cordic_CV.scala 62:42]
  wire [24:0] _current_y_7_T = current_x_6[31:7]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_85 = {{7{_current_y_7_T[24]}},_current_y_7_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_7_T_3 = $signed(current_y_6) + $signed(_GEN_85); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_7_T_2 = $signed(current_theta_6) - 32'sh7296d; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_7_T_7 = $signed(current_x_6) + $signed(_GEN_84); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_7_T_7 = $signed(current_y_6) - $signed(_GEN_85); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_7_T_5 = $signed(current_theta_6) + 32'sh7296d; // @[Cordic_CV.scala 68:50]
  wire [23:0] _current_x_8_T = current_y_7[31:8]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_88 = {{8{_current_x_8_T[23]}},_current_x_8_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_8_T_3 = $signed(current_x_7) - $signed(_GEN_88); // @[Cordic_CV.scala 62:42]
  wire [23:0] _current_y_8_T = current_x_7[31:8]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_89 = {{8{_current_y_8_T[23]}},_current_y_8_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_8_T_3 = $signed(current_y_7) + $signed(_GEN_89); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_8_T_2 = $signed(current_theta_7) - 32'sh394ba; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_8_T_7 = $signed(current_x_7) + $signed(_GEN_88); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_8_T_7 = $signed(current_y_7) - $signed(_GEN_89); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_8_T_5 = $signed(current_theta_7) + 32'sh394ba; // @[Cordic_CV.scala 68:50]
  wire [22:0] _current_x_9_T = current_y_8[31:9]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_92 = {{9{_current_x_9_T[22]}},_current_x_9_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_9_T_3 = $signed(current_x_8) - $signed(_GEN_92); // @[Cordic_CV.scala 62:42]
  wire [22:0] _current_y_9_T = current_x_8[31:9]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_93 = {{9{_current_y_9_T[22]}},_current_y_9_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_9_T_3 = $signed(current_y_8) + $signed(_GEN_93); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_9_T_2 = $signed(current_theta_8) - 32'sh1ca5e; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_9_T_7 = $signed(current_x_8) + $signed(_GEN_92); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_9_T_7 = $signed(current_y_8) - $signed(_GEN_93); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_9_T_5 = $signed(current_theta_8) + 32'sh1ca5e; // @[Cordic_CV.scala 68:50]
  wire [21:0] _current_x_10_T = current_y_9[31:10]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_96 = {{10{_current_x_10_T[21]}},_current_x_10_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_10_T_3 = $signed(current_x_9) - $signed(_GEN_96); // @[Cordic_CV.scala 62:42]
  wire [21:0] _current_y_10_T = current_x_9[31:10]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_97 = {{10{_current_y_10_T[21]}},_current_y_10_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_10_T_3 = $signed(current_y_9) + $signed(_GEN_97); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_10_T_2 = $signed(current_theta_9) - 32'she52f; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_10_T_7 = $signed(current_x_9) + $signed(_GEN_96); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_10_T_7 = $signed(current_y_9) - $signed(_GEN_97); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_10_T_5 = $signed(current_theta_9) + 32'she52f; // @[Cordic_CV.scala 68:50]
  wire [20:0] _current_x_11_T = current_y_10[31:11]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_100 = {{11{_current_x_11_T[20]}},_current_x_11_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_11_T_3 = $signed(current_x_10) - $signed(_GEN_100); // @[Cordic_CV.scala 62:42]
  wire [20:0] _current_y_11_T = current_x_10[31:11]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_101 = {{11{_current_y_11_T[20]}},_current_y_11_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_11_T_3 = $signed(current_y_10) + $signed(_GEN_101); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_11_T_2 = $signed(current_theta_10) - 32'sh7297; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_11_T_7 = $signed(current_x_10) + $signed(_GEN_100); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_11_T_7 = $signed(current_y_10) - $signed(_GEN_101); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_11_T_5 = $signed(current_theta_10) + 32'sh7297; // @[Cordic_CV.scala 68:50]
  wire [19:0] _current_x_12_T = current_y_11[31:12]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_104 = {{12{_current_x_12_T[19]}},_current_x_12_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_12_T_3 = $signed(current_x_11) - $signed(_GEN_104); // @[Cordic_CV.scala 62:42]
  wire [19:0] _current_y_12_T = current_x_11[31:12]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_105 = {{12{_current_y_12_T[19]}},_current_y_12_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_12_T_3 = $signed(current_y_11) + $signed(_GEN_105); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_12_T_2 = $signed(current_theta_11) - 32'sh394c; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_12_T_7 = $signed(current_x_11) + $signed(_GEN_104); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_12_T_7 = $signed(current_y_11) - $signed(_GEN_105); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_12_T_5 = $signed(current_theta_11) + 32'sh394c; // @[Cordic_CV.scala 68:50]
  wire [18:0] _current_x_13_T = current_y_12[31:13]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_108 = {{13{_current_x_13_T[18]}},_current_x_13_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_13_T_3 = $signed(current_x_12) - $signed(_GEN_108); // @[Cordic_CV.scala 62:42]
  wire [18:0] _current_y_13_T = current_x_12[31:13]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_109 = {{13{_current_y_13_T[18]}},_current_y_13_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_13_T_3 = $signed(current_y_12) + $signed(_GEN_109); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_13_T_2 = $signed(current_theta_12) - 32'sh1ca6; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_13_T_7 = $signed(current_x_12) + $signed(_GEN_108); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_13_T_7 = $signed(current_y_12) - $signed(_GEN_109); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_13_T_5 = $signed(current_theta_12) + 32'sh1ca6; // @[Cordic_CV.scala 68:50]
  wire [17:0] _current_x_14_T = current_y_13[31:14]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_112 = {{14{_current_x_14_T[17]}},_current_x_14_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_14_T_3 = $signed(current_x_13) - $signed(_GEN_112); // @[Cordic_CV.scala 62:42]
  wire [17:0] _current_y_14_T = current_x_13[31:14]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_113 = {{14{_current_y_14_T[17]}},_current_y_14_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_14_T_3 = $signed(current_y_13) + $signed(_GEN_113); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_14_T_2 = $signed(current_theta_13) - 32'she53; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_14_T_7 = $signed(current_x_13) + $signed(_GEN_112); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_14_T_7 = $signed(current_y_13) - $signed(_GEN_113); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_14_T_5 = $signed(current_theta_13) + 32'she53; // @[Cordic_CV.scala 68:50]
  wire [16:0] _current_x_15_T = current_y_14[31:15]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_116 = {{15{_current_x_15_T[16]}},_current_x_15_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_15_T_3 = $signed(current_x_14) - $signed(_GEN_116); // @[Cordic_CV.scala 62:42]
  wire [16:0] _current_y_15_T = current_x_14[31:15]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_117 = {{15{_current_y_15_T[16]}},_current_y_15_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_15_T_3 = $signed(current_y_14) + $signed(_GEN_117); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_15_T_2 = $signed(current_theta_14) - 32'sh729; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_15_T_7 = $signed(current_x_14) + $signed(_GEN_116); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_15_T_7 = $signed(current_y_14) - $signed(_GEN_117); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_15_T_5 = $signed(current_theta_14) + 32'sh729; // @[Cordic_CV.scala 68:50]
  wire [15:0] _current_x_16_T = current_y_15[31:16]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_120 = {{16{_current_x_16_T[15]}},_current_x_16_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_16_T_3 = $signed(current_x_15) - $signed(_GEN_120); // @[Cordic_CV.scala 62:42]
  wire [15:0] _current_y_16_T = current_x_15[31:16]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_121 = {{16{_current_y_16_T[15]}},_current_y_16_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_16_T_3 = $signed(current_y_15) + $signed(_GEN_121); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_16_T_2 = $signed(current_theta_15) - 32'sh395; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_16_T_7 = $signed(current_x_15) + $signed(_GEN_120); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_16_T_7 = $signed(current_y_15) - $signed(_GEN_121); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_16_T_5 = $signed(current_theta_15) + 32'sh395; // @[Cordic_CV.scala 68:50]
  wire [14:0] _current_x_17_T = current_y_16[31:17]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_124 = {{17{_current_x_17_T[14]}},_current_x_17_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_17_T_3 = $signed(current_x_16) - $signed(_GEN_124); // @[Cordic_CV.scala 62:42]
  wire [14:0] _current_y_17_T = current_x_16[31:17]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_125 = {{17{_current_y_17_T[14]}},_current_y_17_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_17_T_3 = $signed(current_y_16) + $signed(_GEN_125); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_17_T_2 = $signed(current_theta_16) - 32'sh1ca; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_17_T_7 = $signed(current_x_16) + $signed(_GEN_124); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_17_T_7 = $signed(current_y_16) - $signed(_GEN_125); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_17_T_5 = $signed(current_theta_16) + 32'sh1ca; // @[Cordic_CV.scala 68:50]
  wire [13:0] _current_x_18_T = current_y_17[31:18]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_128 = {{18{_current_x_18_T[13]}},_current_x_18_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_18_T_3 = $signed(current_x_17) - $signed(_GEN_128); // @[Cordic_CV.scala 62:42]
  wire [13:0] _current_y_18_T = current_x_17[31:18]; // @[Cordic_CV.scala 63:62]
  wire [31:0] _GEN_129 = {{18{_current_y_18_T[13]}},_current_y_18_T}; // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_y_18_T_3 = $signed(current_y_17) + $signed(_GEN_129); // @[Cordic_CV.scala 63:42]
  wire [31:0] _current_theta_18_T_2 = $signed(current_theta_17) - 32'she5; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_18_T_7 = $signed(current_x_17) + $signed(_GEN_128); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_y_18_T_7 = $signed(current_y_17) - $signed(_GEN_129); // @[Cordic_CV.scala 67:42]
  wire [31:0] _current_theta_18_T_5 = $signed(current_theta_17) + 32'she5; // @[Cordic_CV.scala 68:50]
  wire [12:0] _current_x_19_T = current_y_18[31:19]; // @[Cordic_CV.scala 62:62]
  wire [31:0] _GEN_132 = {{19{_current_x_19_T[12]}},_current_x_19_T}; // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_x_19_T_3 = $signed(current_x_18) - $signed(_GEN_132); // @[Cordic_CV.scala 62:42]
  wire [31:0] _current_theta_19_T_2 = $signed(current_theta_18) - 32'sh73; // @[Cordic_CV.scala 64:50]
  wire [31:0] _current_x_19_T_7 = $signed(current_x_18) + $signed(_GEN_132); // @[Cordic_CV.scala 66:42]
  wire [31:0] _current_theta_19_T_5 = $signed(current_theta_18) + 32'sh73; // @[Cordic_CV.scala 68:50]
  wire [63:0] _io_r_T = $signed(current_x_19) * 32'sh9b74f; // @[Cordic_CV.scala 79:41]
  wire [63:0] _io_arctan_T = $signed(current_theta_19) * 32'sh477d; // @[Cordic_CV.scala 80:50]
  wire [43:0] _GEN_136 = _io_r_T[63:20]; // @[Cordic_CV.scala 79:8]
  wire [43:0] _GEN_138 = _io_arctan_T[63:20]; // @[Cordic_CV.scala 80:13]
  assign io_theta = current_theta_19; // @[Cordic_CV.scala 78:12]
  assign io_r = _GEN_136[31:0]; // @[Cordic_CV.scala 79:8]
  assign io_arctan = _GEN_138[31:0]; // @[Cordic_CV.scala 80:13]
  always @(posedge clock) begin
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_0 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(io_y) < 32'sh0) begin // @[Cordic_CV.scala 51:76]
      current_x_0 <= _current_x_0_T_3; // @[Cordic_CV.scala 52:22]
    end else begin
      current_x_0 <= _current_x_0_T_7; // @[Cordic_CV.scala 56:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_1 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_0) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_1 <= _current_x_1_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_1 <= _current_x_1_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_2 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_1) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_2 <= _current_x_2_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_2 <= _current_x_2_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_3 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_2) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_3 <= _current_x_3_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_3 <= _current_x_3_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_4 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_3) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_4 <= _current_x_4_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_4 <= _current_x_4_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_5 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_4) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_5 <= _current_x_5_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_5 <= _current_x_5_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_6 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_5) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_6 <= _current_x_6_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_6 <= _current_x_6_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_7 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_6) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_7 <= _current_x_7_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_7 <= _current_x_7_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_8 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_7) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_8 <= _current_x_8_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_8 <= _current_x_8_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_9 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_8) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_9 <= _current_x_9_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_9 <= _current_x_9_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_10 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_9) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_10 <= _current_x_10_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_10 <= _current_x_10_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_11 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_10) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_11 <= _current_x_11_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_11 <= _current_x_11_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_12 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_11) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_12 <= _current_x_12_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_12 <= _current_x_12_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_13 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_12) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_13 <= _current_x_13_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_13 <= _current_x_13_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_14 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_13) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_14 <= _current_x_14_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_14 <= _current_x_14_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_15 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_14) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_15 <= _current_x_15_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_15 <= _current_x_15_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_16 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_15) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_16 <= _current_x_16_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_16 <= _current_x_16_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_17 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_16) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_17 <= _current_x_17_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_17 <= _current_x_17_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_18 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_17) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_18 <= _current_x_18_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_18 <= _current_x_18_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 40:43]
      current_x_19 <= 32'sh0; // @[Cordic_CV.scala 40:43]
    end else if ($signed(current_y_18) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_x_19 <= _current_x_19_T_3; // @[Cordic_CV.scala 62:22]
    end else begin
      current_x_19 <= _current_x_19_T_7; // @[Cordic_CV.scala 66:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_0 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(io_y) < 32'sh0) begin // @[Cordic_CV.scala 51:76]
      current_y_0 <= _current_y_0_T_3; // @[Cordic_CV.scala 53:22]
    end else begin
      current_y_0 <= _current_y_0_T_7; // @[Cordic_CV.scala 57:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_1 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_0) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_1 <= _current_y_1_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_1 <= _current_y_1_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_2 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_1) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_2 <= _current_y_2_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_2 <= _current_y_2_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_3 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_2) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_3 <= _current_y_3_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_3 <= _current_y_3_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_4 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_3) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_4 <= _current_y_4_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_4 <= _current_y_4_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_5 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_4) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_5 <= _current_y_5_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_5 <= _current_y_5_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_6 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_5) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_6 <= _current_y_6_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_6 <= _current_y_6_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_7 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_6) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_7 <= _current_y_7_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_7 <= _current_y_7_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_8 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_7) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_8 <= _current_y_8_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_8 <= _current_y_8_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_9 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_8) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_9 <= _current_y_9_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_9 <= _current_y_9_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_10 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_9) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_10 <= _current_y_10_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_10 <= _current_y_10_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_11 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_10) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_11 <= _current_y_11_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_11 <= _current_y_11_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_12 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_11) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_12 <= _current_y_12_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_12 <= _current_y_12_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_13 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_12) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_13 <= _current_y_13_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_13 <= _current_y_13_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_14 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_13) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_14 <= _current_y_14_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_14 <= _current_y_14_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_15 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_14) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_15 <= _current_y_15_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_15 <= _current_y_15_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_16 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_15) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_16 <= _current_y_16_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_16 <= _current_y_16_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_17 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_16) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_17 <= _current_y_17_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_17 <= _current_y_17_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 41:43]
      current_y_18 <= 32'sh0; // @[Cordic_CV.scala 41:43]
    end else if ($signed(current_y_17) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_y_18 <= _current_y_18_T_3; // @[Cordic_CV.scala 63:22]
    end else begin
      current_y_18 <= _current_y_18_T_7; // @[Cordic_CV.scala 67:22]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_0 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(io_y) < 32'sh0) begin // @[Cordic_CV.scala 51:76]
      current_theta_0 <= _current_theta_0_T_2; // @[Cordic_CV.scala 54:26]
    end else begin
      current_theta_0 <= 32'sh2d00000; // @[Cordic_CV.scala 58:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_1 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_0) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_1 <= _current_theta_1_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_1 <= _current_theta_1_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_2 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_1) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_2 <= _current_theta_2_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_2 <= _current_theta_2_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_3 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_2) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_3 <= _current_theta_3_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_3 <= _current_theta_3_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_4 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_3) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_4 <= _current_theta_4_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_4 <= _current_theta_4_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_5 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_4) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_5 <= _current_theta_5_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_5 <= _current_theta_5_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_6 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_5) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_6 <= _current_theta_6_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_6 <= _current_theta_6_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_7 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_6) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_7 <= _current_theta_7_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_7 <= _current_theta_7_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_8 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_7) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_8 <= _current_theta_8_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_8 <= _current_theta_8_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_9 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_8) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_9 <= _current_theta_9_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_9 <= _current_theta_9_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_10 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_9) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_10 <= _current_theta_10_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_10 <= _current_theta_10_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_11 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_10) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_11 <= _current_theta_11_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_11 <= _current_theta_11_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_12 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_11) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_12 <= _current_theta_12_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_12 <= _current_theta_12_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_13 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_12) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_13 <= _current_theta_13_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_13 <= _current_theta_13_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_14 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_13) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_14 <= _current_theta_14_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_14 <= _current_theta_14_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_15 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_14) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_15 <= _current_theta_15_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_15 <= _current_theta_15_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_16 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_15) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_16 <= _current_theta_16_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_16 <= _current_theta_16_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_17 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_16) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_17 <= _current_theta_17_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_17 <= _current_theta_17_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_18 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_17) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
      current_theta_18 <= _current_theta_18_T_2; // @[Cordic_CV.scala 64:26]
    end else begin
      current_theta_18 <= _current_theta_18_T_5; // @[Cordic_CV.scala 68:26]
    end
    if (reset) begin // @[Cordic_CV.scala 42:47]
      current_theta_19 <= 32'sh0; // @[Cordic_CV.scala 42:47]
    end else if ($signed(current_y_18) < 32'sh0) begin // @[Cordic_CV.scala 61:88]
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
  current_x_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  current_x_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  current_y_0 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  current_y_1 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  current_y_2 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  current_y_3 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  current_y_4 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  current_y_5 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  current_y_6 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  current_y_7 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  current_y_8 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  current_y_9 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  current_y_10 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  current_y_11 = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  current_y_12 = _RAND_32[31:0];
  _RAND_33 = {1{`RANDOM}};
  current_y_13 = _RAND_33[31:0];
  _RAND_34 = {1{`RANDOM}};
  current_y_14 = _RAND_34[31:0];
  _RAND_35 = {1{`RANDOM}};
  current_y_15 = _RAND_35[31:0];
  _RAND_36 = {1{`RANDOM}};
  current_y_16 = _RAND_36[31:0];
  _RAND_37 = {1{`RANDOM}};
  current_y_17 = _RAND_37[31:0];
  _RAND_38 = {1{`RANDOM}};
  current_y_18 = _RAND_38[31:0];
  _RAND_39 = {1{`RANDOM}};
  current_theta_0 = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  current_theta_1 = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  current_theta_2 = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  current_theta_3 = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  current_theta_4 = _RAND_43[31:0];
  _RAND_44 = {1{`RANDOM}};
  current_theta_5 = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  current_theta_6 = _RAND_45[31:0];
  _RAND_46 = {1{`RANDOM}};
  current_theta_7 = _RAND_46[31:0];
  _RAND_47 = {1{`RANDOM}};
  current_theta_8 = _RAND_47[31:0];
  _RAND_48 = {1{`RANDOM}};
  current_theta_9 = _RAND_48[31:0];
  _RAND_49 = {1{`RANDOM}};
  current_theta_10 = _RAND_49[31:0];
  _RAND_50 = {1{`RANDOM}};
  current_theta_11 = _RAND_50[31:0];
  _RAND_51 = {1{`RANDOM}};
  current_theta_12 = _RAND_51[31:0];
  _RAND_52 = {1{`RANDOM}};
  current_theta_13 = _RAND_52[31:0];
  _RAND_53 = {1{`RANDOM}};
  current_theta_14 = _RAND_53[31:0];
  _RAND_54 = {1{`RANDOM}};
  current_theta_15 = _RAND_54[31:0];
  _RAND_55 = {1{`RANDOM}};
  current_theta_16 = _RAND_55[31:0];
  _RAND_56 = {1{`RANDOM}};
  current_theta_17 = _RAND_56[31:0];
  _RAND_57 = {1{`RANDOM}};
  current_theta_18 = _RAND_57[31:0];
  _RAND_58 = {1{`RANDOM}};
  current_theta_19 = _RAND_58[31:0];
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
  input  [31:0] io_x,
  input  [31:0] io_y,
  output [31:0] io_theta,
  output [31:0] io_r,
  output [31:0] io_arctan
);
  wire  cordic_cv_unit_clock; // @[Cordic_CV.scala 104:30]
  wire  cordic_cv_unit_reset; // @[Cordic_CV.scala 104:30]
  wire [31:0] cordic_cv_unit_io_x; // @[Cordic_CV.scala 104:30]
  wire [31:0] cordic_cv_unit_io_y; // @[Cordic_CV.scala 104:30]
  wire [31:0] cordic_cv_unit_io_theta; // @[Cordic_CV.scala 104:30]
  wire [31:0] cordic_cv_unit_io_r; // @[Cordic_CV.scala 104:30]
  wire [31:0] cordic_cv_unit_io_arctan; // @[Cordic_CV.scala 104:30]
  wire [31:0] _cordic_cv_unit_io_x_T_2 = 32'sh0 - $signed(io_x); // @[Cordic_CV.scala 107:28]
  wire [31:0] _cordic_cv_unit_io_y_T_2 = 32'sh0 - $signed(io_y); // @[Cordic_CV.scala 108:28]
  wire [31:0] _io_theta_T_2 = $signed(cordic_cv_unit_io_theta) + 32'shb400000; // @[Cordic_CV.scala 110:43]
  wire [31:0] _io_theta_T_5 = $signed(cordic_cv_unit_io_theta) - 32'shb400000; // @[Cordic_CV.scala 112:43]
  wire [31:0] _GEN_0 = $signed(io_y) > 32'sh0 ? $signed(_io_theta_T_2) : $signed(_io_theta_T_5); // @[Cordic_CV.scala 109:71 110:16 112:16]
  CORDIC_CV_ORIGIN cordic_cv_unit ( // @[Cordic_CV.scala 104:30]
    .clock(cordic_cv_unit_clock),
    .reset(cordic_cv_unit_reset),
    .io_x(cordic_cv_unit_io_x),
    .io_y(cordic_cv_unit_io_y),
    .io_theta(cordic_cv_unit_io_theta),
    .io_r(cordic_cv_unit_io_r),
    .io_arctan(cordic_cv_unit_io_arctan)
  );
  assign io_theta = $signed(io_x) < 32'sh0 ? $signed(_GEN_0) : $signed(cordic_cv_unit_io_theta); // @[Cordic_CV.scala 106:69 117:14]
  assign io_r = cordic_cv_unit_io_r; // @[Cordic_CV.scala 120:8]
  assign io_arctan = cordic_cv_unit_io_arctan; // @[Cordic_CV.scala 121:13]
  assign cordic_cv_unit_clock = clock;
  assign cordic_cv_unit_reset = reset;
  assign cordic_cv_unit_io_x = $signed(io_x) < 32'sh0 ? $signed(_cordic_cv_unit_io_x_T_2) : $signed(io_x); // @[Cordic_CV.scala 106:69 107:25 115:25]
  assign cordic_cv_unit_io_y = $signed(io_x) < 32'sh0 ? $signed(_cordic_cv_unit_io_y_T_2) : $signed(io_y); // @[Cordic_CV.scala 106:69 108:25 116:25]
endmodule
