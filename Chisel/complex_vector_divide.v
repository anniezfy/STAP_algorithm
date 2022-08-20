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
  wire [63:0] _current_theta_0_T_2 = 64'sh0 - 64'sh2d00000; // @[Cordic_CV.scala 54:29]
  wire [63:0] _current_x_0_T_7 = $signed(io_x) + $signed(io_y); // @[Cordic_CV.scala 56:30]
  wire [63:0] _current_y_0_T_7 = $signed(io_y) - $signed(io_x); // @[Cordic_CV.scala 57:30]
  wire [62:0] _current_x_1_T = current_y_0[63:1]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_60 = {{1{_current_x_1_T[62]}},_current_x_1_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_1_T_3 = $signed(current_x_0) - $signed(_GEN_60); // @[Cordic_CV.scala 62:42]
  wire [62:0] _current_y_1_T = current_x_0[63:1]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_61 = {{1{_current_y_1_T[62]}},_current_y_1_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_1_T_3 = $signed(current_y_0) + $signed(_GEN_61); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_1_T_2 = $signed(current_theta_0) - 64'sh1a90a73; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_1_T_7 = $signed(current_x_0) + $signed(_GEN_60); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_1_T_7 = $signed(current_y_0) - $signed(_GEN_61); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_1_T_5 = $signed(current_theta_0) + 64'sh1a90a73; // @[Cordic_CV.scala 68:50]
  wire [61:0] _current_x_2_T = current_y_1[63:2]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_64 = {{2{_current_x_2_T[61]}},_current_x_2_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_2_T_3 = $signed(current_x_1) - $signed(_GEN_64); // @[Cordic_CV.scala 62:42]
  wire [61:0] _current_y_2_T = current_x_1[63:2]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_65 = {{2{_current_y_2_T[61]}},_current_y_2_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_2_T_3 = $signed(current_y_1) + $signed(_GEN_65); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_2_T_2 = $signed(current_theta_1) - 64'she09474; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_2_T_7 = $signed(current_x_1) + $signed(_GEN_64); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_2_T_7 = $signed(current_y_1) - $signed(_GEN_65); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_2_T_5 = $signed(current_theta_1) + 64'she09474; // @[Cordic_CV.scala 68:50]
  wire [60:0] _current_x_3_T = current_y_2[63:3]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_68 = {{3{_current_x_3_T[60]}},_current_x_3_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_3_T_3 = $signed(current_x_2) - $signed(_GEN_68); // @[Cordic_CV.scala 62:42]
  wire [60:0] _current_y_3_T = current_x_2[63:3]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_69 = {{3{_current_y_3_T[60]}},_current_y_3_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_3_T_3 = $signed(current_y_2) + $signed(_GEN_69); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_3_T_2 = $signed(current_theta_2) - 64'sh720011; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_3_T_7 = $signed(current_x_2) + $signed(_GEN_68); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_3_T_7 = $signed(current_y_2) - $signed(_GEN_69); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_3_T_5 = $signed(current_theta_2) + 64'sh720011; // @[Cordic_CV.scala 68:50]
  wire [59:0] _current_x_4_T = current_y_3[63:4]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_72 = {{4{_current_x_4_T[59]}},_current_x_4_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_4_T_3 = $signed(current_x_3) - $signed(_GEN_72); // @[Cordic_CV.scala 62:42]
  wire [59:0] _current_y_4_T = current_x_3[63:4]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_73 = {{4{_current_y_4_T[59]}},_current_y_4_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_4_T_3 = $signed(current_y_3) + $signed(_GEN_73); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_4_T_2 = $signed(current_theta_3) - 64'sh3938aa; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_4_T_7 = $signed(current_x_3) + $signed(_GEN_72); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_4_T_7 = $signed(current_y_3) - $signed(_GEN_73); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_4_T_5 = $signed(current_theta_3) + 64'sh3938aa; // @[Cordic_CV.scala 68:50]
  wire [58:0] _current_x_5_T = current_y_4[63:5]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_76 = {{5{_current_x_5_T[58]}},_current_x_5_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_5_T_3 = $signed(current_x_4) - $signed(_GEN_76); // @[Cordic_CV.scala 62:42]
  wire [58:0] _current_y_5_T = current_x_4[63:5]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_77 = {{5{_current_y_5_T[58]}},_current_y_5_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_5_T_3 = $signed(current_y_4) + $signed(_GEN_77); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_5_T_2 = $signed(current_theta_4) - 64'sh1ca379; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_5_T_7 = $signed(current_x_4) + $signed(_GEN_76); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_5_T_7 = $signed(current_y_4) - $signed(_GEN_77); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_5_T_5 = $signed(current_theta_4) + 64'sh1ca379; // @[Cordic_CV.scala 68:50]
  wire [57:0] _current_x_6_T = current_y_5[63:6]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_80 = {{6{_current_x_6_T[57]}},_current_x_6_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_6_T_3 = $signed(current_x_5) - $signed(_GEN_80); // @[Cordic_CV.scala 62:42]
  wire [57:0] _current_y_6_T = current_x_5[63:6]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_81 = {{6{_current_y_6_T[57]}},_current_y_6_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_6_T_3 = $signed(current_y_5) + $signed(_GEN_81); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_6_T_2 = $signed(current_theta_5) - 64'she52a2; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_6_T_7 = $signed(current_x_5) + $signed(_GEN_80); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_6_T_7 = $signed(current_y_5) - $signed(_GEN_81); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_6_T_5 = $signed(current_theta_5) + 64'she52a2; // @[Cordic_CV.scala 68:50]
  wire [56:0] _current_x_7_T = current_y_6[63:7]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_84 = {{7{_current_x_7_T[56]}},_current_x_7_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_7_T_3 = $signed(current_x_6) - $signed(_GEN_84); // @[Cordic_CV.scala 62:42]
  wire [56:0] _current_y_7_T = current_x_6[63:7]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_85 = {{7{_current_y_7_T[56]}},_current_y_7_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_7_T_3 = $signed(current_y_6) + $signed(_GEN_85); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_7_T_2 = $signed(current_theta_6) - 64'sh7296d; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_7_T_7 = $signed(current_x_6) + $signed(_GEN_84); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_7_T_7 = $signed(current_y_6) - $signed(_GEN_85); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_7_T_5 = $signed(current_theta_6) + 64'sh7296d; // @[Cordic_CV.scala 68:50]
  wire [55:0] _current_x_8_T = current_y_7[63:8]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_88 = {{8{_current_x_8_T[55]}},_current_x_8_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_8_T_3 = $signed(current_x_7) - $signed(_GEN_88); // @[Cordic_CV.scala 62:42]
  wire [55:0] _current_y_8_T = current_x_7[63:8]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_89 = {{8{_current_y_8_T[55]}},_current_y_8_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_8_T_3 = $signed(current_y_7) + $signed(_GEN_89); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_8_T_2 = $signed(current_theta_7) - 64'sh394ba; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_8_T_7 = $signed(current_x_7) + $signed(_GEN_88); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_8_T_7 = $signed(current_y_7) - $signed(_GEN_89); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_8_T_5 = $signed(current_theta_7) + 64'sh394ba; // @[Cordic_CV.scala 68:50]
  wire [54:0] _current_x_9_T = current_y_8[63:9]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_92 = {{9{_current_x_9_T[54]}},_current_x_9_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_9_T_3 = $signed(current_x_8) - $signed(_GEN_92); // @[Cordic_CV.scala 62:42]
  wire [54:0] _current_y_9_T = current_x_8[63:9]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_93 = {{9{_current_y_9_T[54]}},_current_y_9_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_9_T_3 = $signed(current_y_8) + $signed(_GEN_93); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_9_T_2 = $signed(current_theta_8) - 64'sh1ca5e; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_9_T_7 = $signed(current_x_8) + $signed(_GEN_92); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_9_T_7 = $signed(current_y_8) - $signed(_GEN_93); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_9_T_5 = $signed(current_theta_8) + 64'sh1ca5e; // @[Cordic_CV.scala 68:50]
  wire [53:0] _current_x_10_T = current_y_9[63:10]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_96 = {{10{_current_x_10_T[53]}},_current_x_10_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_10_T_3 = $signed(current_x_9) - $signed(_GEN_96); // @[Cordic_CV.scala 62:42]
  wire [53:0] _current_y_10_T = current_x_9[63:10]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_97 = {{10{_current_y_10_T[53]}},_current_y_10_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_10_T_3 = $signed(current_y_9) + $signed(_GEN_97); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_10_T_2 = $signed(current_theta_9) - 64'she52f; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_10_T_7 = $signed(current_x_9) + $signed(_GEN_96); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_10_T_7 = $signed(current_y_9) - $signed(_GEN_97); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_10_T_5 = $signed(current_theta_9) + 64'she52f; // @[Cordic_CV.scala 68:50]
  wire [52:0] _current_x_11_T = current_y_10[63:11]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_100 = {{11{_current_x_11_T[52]}},_current_x_11_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_11_T_3 = $signed(current_x_10) - $signed(_GEN_100); // @[Cordic_CV.scala 62:42]
  wire [52:0] _current_y_11_T = current_x_10[63:11]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_101 = {{11{_current_y_11_T[52]}},_current_y_11_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_11_T_3 = $signed(current_y_10) + $signed(_GEN_101); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_11_T_2 = $signed(current_theta_10) - 64'sh7297; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_11_T_7 = $signed(current_x_10) + $signed(_GEN_100); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_11_T_7 = $signed(current_y_10) - $signed(_GEN_101); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_11_T_5 = $signed(current_theta_10) + 64'sh7297; // @[Cordic_CV.scala 68:50]
  wire [51:0] _current_x_12_T = current_y_11[63:12]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_104 = {{12{_current_x_12_T[51]}},_current_x_12_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_12_T_3 = $signed(current_x_11) - $signed(_GEN_104); // @[Cordic_CV.scala 62:42]
  wire [51:0] _current_y_12_T = current_x_11[63:12]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_105 = {{12{_current_y_12_T[51]}},_current_y_12_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_12_T_3 = $signed(current_y_11) + $signed(_GEN_105); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_12_T_2 = $signed(current_theta_11) - 64'sh394c; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_12_T_7 = $signed(current_x_11) + $signed(_GEN_104); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_12_T_7 = $signed(current_y_11) - $signed(_GEN_105); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_12_T_5 = $signed(current_theta_11) + 64'sh394c; // @[Cordic_CV.scala 68:50]
  wire [50:0] _current_x_13_T = current_y_12[63:13]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_108 = {{13{_current_x_13_T[50]}},_current_x_13_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_13_T_3 = $signed(current_x_12) - $signed(_GEN_108); // @[Cordic_CV.scala 62:42]
  wire [50:0] _current_y_13_T = current_x_12[63:13]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_109 = {{13{_current_y_13_T[50]}},_current_y_13_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_13_T_3 = $signed(current_y_12) + $signed(_GEN_109); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_13_T_2 = $signed(current_theta_12) - 64'sh1ca6; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_13_T_7 = $signed(current_x_12) + $signed(_GEN_108); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_13_T_7 = $signed(current_y_12) - $signed(_GEN_109); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_13_T_5 = $signed(current_theta_12) + 64'sh1ca6; // @[Cordic_CV.scala 68:50]
  wire [49:0] _current_x_14_T = current_y_13[63:14]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_112 = {{14{_current_x_14_T[49]}},_current_x_14_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_14_T_3 = $signed(current_x_13) - $signed(_GEN_112); // @[Cordic_CV.scala 62:42]
  wire [49:0] _current_y_14_T = current_x_13[63:14]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_113 = {{14{_current_y_14_T[49]}},_current_y_14_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_14_T_3 = $signed(current_y_13) + $signed(_GEN_113); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_14_T_2 = $signed(current_theta_13) - 64'she53; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_14_T_7 = $signed(current_x_13) + $signed(_GEN_112); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_14_T_7 = $signed(current_y_13) - $signed(_GEN_113); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_14_T_5 = $signed(current_theta_13) + 64'she53; // @[Cordic_CV.scala 68:50]
  wire [48:0] _current_x_15_T = current_y_14[63:15]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_116 = {{15{_current_x_15_T[48]}},_current_x_15_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_15_T_3 = $signed(current_x_14) - $signed(_GEN_116); // @[Cordic_CV.scala 62:42]
  wire [48:0] _current_y_15_T = current_x_14[63:15]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_117 = {{15{_current_y_15_T[48]}},_current_y_15_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_15_T_3 = $signed(current_y_14) + $signed(_GEN_117); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_15_T_2 = $signed(current_theta_14) - 64'sh729; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_15_T_7 = $signed(current_x_14) + $signed(_GEN_116); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_15_T_7 = $signed(current_y_14) - $signed(_GEN_117); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_15_T_5 = $signed(current_theta_14) + 64'sh729; // @[Cordic_CV.scala 68:50]
  wire [47:0] _current_x_16_T = current_y_15[63:16]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_120 = {{16{_current_x_16_T[47]}},_current_x_16_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_16_T_3 = $signed(current_x_15) - $signed(_GEN_120); // @[Cordic_CV.scala 62:42]
  wire [47:0] _current_y_16_T = current_x_15[63:16]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_121 = {{16{_current_y_16_T[47]}},_current_y_16_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_16_T_3 = $signed(current_y_15) + $signed(_GEN_121); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_16_T_2 = $signed(current_theta_15) - 64'sh395; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_16_T_7 = $signed(current_x_15) + $signed(_GEN_120); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_16_T_7 = $signed(current_y_15) - $signed(_GEN_121); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_16_T_5 = $signed(current_theta_15) + 64'sh395; // @[Cordic_CV.scala 68:50]
  wire [46:0] _current_x_17_T = current_y_16[63:17]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_124 = {{17{_current_x_17_T[46]}},_current_x_17_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_17_T_3 = $signed(current_x_16) - $signed(_GEN_124); // @[Cordic_CV.scala 62:42]
  wire [46:0] _current_y_17_T = current_x_16[63:17]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_125 = {{17{_current_y_17_T[46]}},_current_y_17_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_17_T_3 = $signed(current_y_16) + $signed(_GEN_125); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_17_T_2 = $signed(current_theta_16) - 64'sh1ca; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_17_T_7 = $signed(current_x_16) + $signed(_GEN_124); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_17_T_7 = $signed(current_y_16) - $signed(_GEN_125); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_17_T_5 = $signed(current_theta_16) + 64'sh1ca; // @[Cordic_CV.scala 68:50]
  wire [45:0] _current_x_18_T = current_y_17[63:18]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_128 = {{18{_current_x_18_T[45]}},_current_x_18_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_18_T_3 = $signed(current_x_17) - $signed(_GEN_128); // @[Cordic_CV.scala 62:42]
  wire [45:0] _current_y_18_T = current_x_17[63:18]; // @[Cordic_CV.scala 63:62]
  wire [63:0] _GEN_129 = {{18{_current_y_18_T[45]}},_current_y_18_T}; // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_y_18_T_3 = $signed(current_y_17) + $signed(_GEN_129); // @[Cordic_CV.scala 63:42]
  wire [63:0] _current_theta_18_T_2 = $signed(current_theta_17) - 64'she5; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_18_T_7 = $signed(current_x_17) + $signed(_GEN_128); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_y_18_T_7 = $signed(current_y_17) - $signed(_GEN_129); // @[Cordic_CV.scala 67:42]
  wire [63:0] _current_theta_18_T_5 = $signed(current_theta_17) + 64'she5; // @[Cordic_CV.scala 68:50]
  wire [44:0] _current_x_19_T = current_y_18[63:19]; // @[Cordic_CV.scala 62:62]
  wire [63:0] _GEN_132 = {{19{_current_x_19_T[44]}},_current_x_19_T}; // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_x_19_T_3 = $signed(current_x_18) - $signed(_GEN_132); // @[Cordic_CV.scala 62:42]
  wire [63:0] _current_theta_19_T_2 = $signed(current_theta_18) - 64'sh73; // @[Cordic_CV.scala 64:50]
  wire [63:0] _current_x_19_T_7 = $signed(current_x_18) + $signed(_GEN_132); // @[Cordic_CV.scala 66:42]
  wire [63:0] _current_theta_19_T_5 = $signed(current_theta_18) + 64'sh73; // @[Cordic_CV.scala 68:50]
  wire [127:0] _io_r_T = $signed(current_x_19) * 64'sh9b74f; // @[Cordic_CV.scala 79:41]
  wire [107:0] _GEN_136 = _io_r_T[127:20]; // @[Cordic_CV.scala 79:8]
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
      current_theta_0 <= 64'sh2d00000; // @[Cordic_CV.scala 58:26]
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
  wire [63:0] _io_theta_T_2 = $signed(cordic_cv_unit_io_theta) + 64'shb400000; // @[Cordic_CV.scala 110:43]
  wire [63:0] _io_theta_T_5 = $signed(cordic_cv_unit_io_theta) - 64'shb400000; // @[Cordic_CV.scala 112:43]
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
  reg [63:0] current_x_0; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_1; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_2; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_3; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_4; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_5; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_6; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_7; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_8; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_9; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_10; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_11; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_12; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_13; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_14; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_15; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_16; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_17; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_18; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_x_19; // @[Cordic_CR.scala 40:43]
  reg [63:0] current_y_0; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_1; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_2; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_3; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_4; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_5; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_6; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_7; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_8; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_9; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_10; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_11; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_12; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_13; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_14; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_15; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_16; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_17; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_18; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_y_19; // @[Cordic_CR.scala 41:43]
  reg [63:0] current_theta_0; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_1; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_2; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_3; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_4; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_5; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_6; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_7; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_8; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_9; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_10; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_11; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_12; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_13; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_14; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_15; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_16; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_17; // @[Cordic_CR.scala 42:47]
  reg [63:0] current_theta_18; // @[Cordic_CR.scala 42:47]
  wire [63:0] _current_x_0_T_2 = $signed(io_x) + $signed(io_y); // @[Cordic_CR.scala 52:30]
  wire [63:0] _current_y_0_T_2 = 64'sh0 - $signed(io_x); // @[Cordic_CR.scala 53:25]
  wire [63:0] _current_y_0_T_5 = $signed(_current_y_0_T_2) + $signed(io_y); // @[Cordic_CR.scala 53:31]
  wire [63:0] _current_theta_0_T_2 = $signed(io_theta) + 64'sh2d00000; // @[Cordic_CR.scala 54:38]
  wire [63:0] _current_x_0_T_5 = $signed(io_x) - $signed(io_y); // @[Cordic_CR.scala 56:30]
  wire [63:0] _current_theta_0_T_5 = $signed(io_theta) - 64'sh2d00000; // @[Cordic_CR.scala 58:38]
  wire [62:0] _current_x_1_T = current_y_0[63:1]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_60 = {{1{_current_x_1_T[62]}},_current_x_1_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_1_T_3 = $signed(current_x_0) + $signed(_GEN_60); // @[Cordic_CR.scala 62:42]
  wire [62:0] _current_y_1_T = current_x_0[63:1]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_61 = {{1{_current_y_1_T[62]}},_current_y_1_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_1_T_3 = $signed(current_y_0) - $signed(_GEN_61); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_1_T_2 = $signed(current_theta_0) + 64'sh1a90a73; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_1_T_7 = $signed(current_x_0) - $signed(_GEN_60); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_1_T_7 = $signed(current_y_0) + $signed(_GEN_61); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_1_T_5 = $signed(current_theta_0) - 64'sh1a90a73; // @[Cordic_CR.scala 68:50]
  wire [61:0] _current_x_2_T = current_y_1[63:2]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_64 = {{2{_current_x_2_T[61]}},_current_x_2_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_2_T_3 = $signed(current_x_1) + $signed(_GEN_64); // @[Cordic_CR.scala 62:42]
  wire [61:0] _current_y_2_T = current_x_1[63:2]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_65 = {{2{_current_y_2_T[61]}},_current_y_2_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_2_T_3 = $signed(current_y_1) - $signed(_GEN_65); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_2_T_2 = $signed(current_theta_1) + 64'she09474; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_2_T_7 = $signed(current_x_1) - $signed(_GEN_64); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_2_T_7 = $signed(current_y_1) + $signed(_GEN_65); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_2_T_5 = $signed(current_theta_1) - 64'she09474; // @[Cordic_CR.scala 68:50]
  wire [60:0] _current_x_3_T = current_y_2[63:3]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_68 = {{3{_current_x_3_T[60]}},_current_x_3_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_3_T_3 = $signed(current_x_2) + $signed(_GEN_68); // @[Cordic_CR.scala 62:42]
  wire [60:0] _current_y_3_T = current_x_2[63:3]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_69 = {{3{_current_y_3_T[60]}},_current_y_3_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_3_T_3 = $signed(current_y_2) - $signed(_GEN_69); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_3_T_2 = $signed(current_theta_2) + 64'sh720011; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_3_T_7 = $signed(current_x_2) - $signed(_GEN_68); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_3_T_7 = $signed(current_y_2) + $signed(_GEN_69); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_3_T_5 = $signed(current_theta_2) - 64'sh720011; // @[Cordic_CR.scala 68:50]
  wire [59:0] _current_x_4_T = current_y_3[63:4]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_72 = {{4{_current_x_4_T[59]}},_current_x_4_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_4_T_3 = $signed(current_x_3) + $signed(_GEN_72); // @[Cordic_CR.scala 62:42]
  wire [59:0] _current_y_4_T = current_x_3[63:4]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_73 = {{4{_current_y_4_T[59]}},_current_y_4_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_4_T_3 = $signed(current_y_3) - $signed(_GEN_73); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_4_T_2 = $signed(current_theta_3) + 64'sh3938aa; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_4_T_7 = $signed(current_x_3) - $signed(_GEN_72); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_4_T_7 = $signed(current_y_3) + $signed(_GEN_73); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_4_T_5 = $signed(current_theta_3) - 64'sh3938aa; // @[Cordic_CR.scala 68:50]
  wire [58:0] _current_x_5_T = current_y_4[63:5]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_76 = {{5{_current_x_5_T[58]}},_current_x_5_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_5_T_3 = $signed(current_x_4) + $signed(_GEN_76); // @[Cordic_CR.scala 62:42]
  wire [58:0] _current_y_5_T = current_x_4[63:5]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_77 = {{5{_current_y_5_T[58]}},_current_y_5_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_5_T_3 = $signed(current_y_4) - $signed(_GEN_77); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_5_T_2 = $signed(current_theta_4) + 64'sh1ca379; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_5_T_7 = $signed(current_x_4) - $signed(_GEN_76); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_5_T_7 = $signed(current_y_4) + $signed(_GEN_77); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_5_T_5 = $signed(current_theta_4) - 64'sh1ca379; // @[Cordic_CR.scala 68:50]
  wire [57:0] _current_x_6_T = current_y_5[63:6]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_80 = {{6{_current_x_6_T[57]}},_current_x_6_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_6_T_3 = $signed(current_x_5) + $signed(_GEN_80); // @[Cordic_CR.scala 62:42]
  wire [57:0] _current_y_6_T = current_x_5[63:6]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_81 = {{6{_current_y_6_T[57]}},_current_y_6_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_6_T_3 = $signed(current_y_5) - $signed(_GEN_81); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_6_T_2 = $signed(current_theta_5) + 64'she52a2; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_6_T_7 = $signed(current_x_5) - $signed(_GEN_80); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_6_T_7 = $signed(current_y_5) + $signed(_GEN_81); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_6_T_5 = $signed(current_theta_5) - 64'she52a2; // @[Cordic_CR.scala 68:50]
  wire [56:0] _current_x_7_T = current_y_6[63:7]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_84 = {{7{_current_x_7_T[56]}},_current_x_7_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_7_T_3 = $signed(current_x_6) + $signed(_GEN_84); // @[Cordic_CR.scala 62:42]
  wire [56:0] _current_y_7_T = current_x_6[63:7]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_85 = {{7{_current_y_7_T[56]}},_current_y_7_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_7_T_3 = $signed(current_y_6) - $signed(_GEN_85); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_7_T_2 = $signed(current_theta_6) + 64'sh7296d; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_7_T_7 = $signed(current_x_6) - $signed(_GEN_84); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_7_T_7 = $signed(current_y_6) + $signed(_GEN_85); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_7_T_5 = $signed(current_theta_6) - 64'sh7296d; // @[Cordic_CR.scala 68:50]
  wire [55:0] _current_x_8_T = current_y_7[63:8]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_88 = {{8{_current_x_8_T[55]}},_current_x_8_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_8_T_3 = $signed(current_x_7) + $signed(_GEN_88); // @[Cordic_CR.scala 62:42]
  wire [55:0] _current_y_8_T = current_x_7[63:8]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_89 = {{8{_current_y_8_T[55]}},_current_y_8_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_8_T_3 = $signed(current_y_7) - $signed(_GEN_89); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_8_T_2 = $signed(current_theta_7) + 64'sh394ba; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_8_T_7 = $signed(current_x_7) - $signed(_GEN_88); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_8_T_7 = $signed(current_y_7) + $signed(_GEN_89); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_8_T_5 = $signed(current_theta_7) - 64'sh394ba; // @[Cordic_CR.scala 68:50]
  wire [54:0] _current_x_9_T = current_y_8[63:9]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_92 = {{9{_current_x_9_T[54]}},_current_x_9_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_9_T_3 = $signed(current_x_8) + $signed(_GEN_92); // @[Cordic_CR.scala 62:42]
  wire [54:0] _current_y_9_T = current_x_8[63:9]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_93 = {{9{_current_y_9_T[54]}},_current_y_9_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_9_T_3 = $signed(current_y_8) - $signed(_GEN_93); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_9_T_2 = $signed(current_theta_8) + 64'sh1ca5e; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_9_T_7 = $signed(current_x_8) - $signed(_GEN_92); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_9_T_7 = $signed(current_y_8) + $signed(_GEN_93); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_9_T_5 = $signed(current_theta_8) - 64'sh1ca5e; // @[Cordic_CR.scala 68:50]
  wire [53:0] _current_x_10_T = current_y_9[63:10]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_96 = {{10{_current_x_10_T[53]}},_current_x_10_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_10_T_3 = $signed(current_x_9) + $signed(_GEN_96); // @[Cordic_CR.scala 62:42]
  wire [53:0] _current_y_10_T = current_x_9[63:10]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_97 = {{10{_current_y_10_T[53]}},_current_y_10_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_10_T_3 = $signed(current_y_9) - $signed(_GEN_97); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_10_T_2 = $signed(current_theta_9) + 64'she52f; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_10_T_7 = $signed(current_x_9) - $signed(_GEN_96); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_10_T_7 = $signed(current_y_9) + $signed(_GEN_97); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_10_T_5 = $signed(current_theta_9) - 64'she52f; // @[Cordic_CR.scala 68:50]
  wire [52:0] _current_x_11_T = current_y_10[63:11]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_100 = {{11{_current_x_11_T[52]}},_current_x_11_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_11_T_3 = $signed(current_x_10) + $signed(_GEN_100); // @[Cordic_CR.scala 62:42]
  wire [52:0] _current_y_11_T = current_x_10[63:11]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_101 = {{11{_current_y_11_T[52]}},_current_y_11_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_11_T_3 = $signed(current_y_10) - $signed(_GEN_101); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_11_T_2 = $signed(current_theta_10) + 64'sh7297; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_11_T_7 = $signed(current_x_10) - $signed(_GEN_100); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_11_T_7 = $signed(current_y_10) + $signed(_GEN_101); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_11_T_5 = $signed(current_theta_10) - 64'sh7297; // @[Cordic_CR.scala 68:50]
  wire [51:0] _current_x_12_T = current_y_11[63:12]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_104 = {{12{_current_x_12_T[51]}},_current_x_12_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_12_T_3 = $signed(current_x_11) + $signed(_GEN_104); // @[Cordic_CR.scala 62:42]
  wire [51:0] _current_y_12_T = current_x_11[63:12]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_105 = {{12{_current_y_12_T[51]}},_current_y_12_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_12_T_3 = $signed(current_y_11) - $signed(_GEN_105); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_12_T_2 = $signed(current_theta_11) + 64'sh394c; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_12_T_7 = $signed(current_x_11) - $signed(_GEN_104); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_12_T_7 = $signed(current_y_11) + $signed(_GEN_105); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_12_T_5 = $signed(current_theta_11) - 64'sh394c; // @[Cordic_CR.scala 68:50]
  wire [50:0] _current_x_13_T = current_y_12[63:13]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_108 = {{13{_current_x_13_T[50]}},_current_x_13_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_13_T_3 = $signed(current_x_12) + $signed(_GEN_108); // @[Cordic_CR.scala 62:42]
  wire [50:0] _current_y_13_T = current_x_12[63:13]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_109 = {{13{_current_y_13_T[50]}},_current_y_13_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_13_T_3 = $signed(current_y_12) - $signed(_GEN_109); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_13_T_2 = $signed(current_theta_12) + 64'sh1ca6; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_13_T_7 = $signed(current_x_12) - $signed(_GEN_108); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_13_T_7 = $signed(current_y_12) + $signed(_GEN_109); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_13_T_5 = $signed(current_theta_12) - 64'sh1ca6; // @[Cordic_CR.scala 68:50]
  wire [49:0] _current_x_14_T = current_y_13[63:14]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_112 = {{14{_current_x_14_T[49]}},_current_x_14_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_14_T_3 = $signed(current_x_13) + $signed(_GEN_112); // @[Cordic_CR.scala 62:42]
  wire [49:0] _current_y_14_T = current_x_13[63:14]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_113 = {{14{_current_y_14_T[49]}},_current_y_14_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_14_T_3 = $signed(current_y_13) - $signed(_GEN_113); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_14_T_2 = $signed(current_theta_13) + 64'she53; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_14_T_7 = $signed(current_x_13) - $signed(_GEN_112); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_14_T_7 = $signed(current_y_13) + $signed(_GEN_113); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_14_T_5 = $signed(current_theta_13) - 64'she53; // @[Cordic_CR.scala 68:50]
  wire [48:0] _current_x_15_T = current_y_14[63:15]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_116 = {{15{_current_x_15_T[48]}},_current_x_15_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_15_T_3 = $signed(current_x_14) + $signed(_GEN_116); // @[Cordic_CR.scala 62:42]
  wire [48:0] _current_y_15_T = current_x_14[63:15]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_117 = {{15{_current_y_15_T[48]}},_current_y_15_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_15_T_3 = $signed(current_y_14) - $signed(_GEN_117); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_15_T_2 = $signed(current_theta_14) + 64'sh729; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_15_T_7 = $signed(current_x_14) - $signed(_GEN_116); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_15_T_7 = $signed(current_y_14) + $signed(_GEN_117); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_15_T_5 = $signed(current_theta_14) - 64'sh729; // @[Cordic_CR.scala 68:50]
  wire [47:0] _current_x_16_T = current_y_15[63:16]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_120 = {{16{_current_x_16_T[47]}},_current_x_16_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_16_T_3 = $signed(current_x_15) + $signed(_GEN_120); // @[Cordic_CR.scala 62:42]
  wire [47:0] _current_y_16_T = current_x_15[63:16]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_121 = {{16{_current_y_16_T[47]}},_current_y_16_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_16_T_3 = $signed(current_y_15) - $signed(_GEN_121); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_16_T_2 = $signed(current_theta_15) + 64'sh395; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_16_T_7 = $signed(current_x_15) - $signed(_GEN_120); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_16_T_7 = $signed(current_y_15) + $signed(_GEN_121); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_16_T_5 = $signed(current_theta_15) - 64'sh395; // @[Cordic_CR.scala 68:50]
  wire [46:0] _current_x_17_T = current_y_16[63:17]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_124 = {{17{_current_x_17_T[46]}},_current_x_17_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_17_T_3 = $signed(current_x_16) + $signed(_GEN_124); // @[Cordic_CR.scala 62:42]
  wire [46:0] _current_y_17_T = current_x_16[63:17]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_125 = {{17{_current_y_17_T[46]}},_current_y_17_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_17_T_3 = $signed(current_y_16) - $signed(_GEN_125); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_17_T_2 = $signed(current_theta_16) + 64'sh1ca; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_17_T_7 = $signed(current_x_16) - $signed(_GEN_124); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_17_T_7 = $signed(current_y_16) + $signed(_GEN_125); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_17_T_5 = $signed(current_theta_16) - 64'sh1ca; // @[Cordic_CR.scala 68:50]
  wire [45:0] _current_x_18_T = current_y_17[63:18]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_128 = {{18{_current_x_18_T[45]}},_current_x_18_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_18_T_3 = $signed(current_x_17) + $signed(_GEN_128); // @[Cordic_CR.scala 62:42]
  wire [45:0] _current_y_18_T = current_x_17[63:18]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_129 = {{18{_current_y_18_T[45]}},_current_y_18_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_18_T_3 = $signed(current_y_17) - $signed(_GEN_129); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_theta_18_T_2 = $signed(current_theta_17) + 64'she5; // @[Cordic_CR.scala 64:50]
  wire [63:0] _current_x_18_T_7 = $signed(current_x_17) - $signed(_GEN_128); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_18_T_7 = $signed(current_y_17) + $signed(_GEN_129); // @[Cordic_CR.scala 67:42]
  wire [63:0] _current_theta_18_T_5 = $signed(current_theta_17) - 64'she5; // @[Cordic_CR.scala 68:50]
  wire [44:0] _current_x_19_T = current_y_18[63:19]; // @[Cordic_CR.scala 62:62]
  wire [63:0] _GEN_132 = {{19{_current_x_19_T[44]}},_current_x_19_T}; // @[Cordic_CR.scala 62:42]
  wire [63:0] _current_x_19_T_3 = $signed(current_x_18) + $signed(_GEN_132); // @[Cordic_CR.scala 62:42]
  wire [44:0] _current_y_19_T = current_x_18[63:19]; // @[Cordic_CR.scala 63:62]
  wire [63:0] _GEN_133 = {{19{_current_y_19_T[44]}},_current_y_19_T}; // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_y_19_T_3 = $signed(current_y_18) - $signed(_GEN_133); // @[Cordic_CR.scala 63:42]
  wire [63:0] _current_x_19_T_7 = $signed(current_x_18) - $signed(_GEN_132); // @[Cordic_CR.scala 66:42]
  wire [63:0] _current_y_19_T_7 = $signed(current_y_18) + $signed(_GEN_133); // @[Cordic_CR.scala 67:42]
  wire [127:0] _io_x_n_T = $signed(current_x_19) * 64'sh9b74f; // @[Cordic_CR.scala 78:43]
  wire [127:0] _io_y_n_T = $signed(current_y_19) * 64'sh9b74f; // @[Cordic_CR.scala 79:43]
  wire [107:0] _GEN_136 = _io_x_n_T[127:20]; // @[Cordic_CR.scala 78:10]
  wire [107:0] _GEN_138 = _io_y_n_T[127:20]; // @[Cordic_CR.scala 79:10]
  assign io_x_n = _GEN_136[63:0]; // @[Cordic_CR.scala 78:10]
  assign io_y_n = _GEN_138[63:0]; // @[Cordic_CR.scala 79:10]
  always @(posedge clock) begin
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_0 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(io_theta) < 64'sh0) begin // @[Cordic_CR.scala 51:80]
      current_x_0 <= _current_x_0_T_2; // @[Cordic_CR.scala 52:22]
    end else begin
      current_x_0 <= _current_x_0_T_5; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_1 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_0) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_1 <= _current_x_1_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_1 <= _current_x_1_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_2 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_1) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_2 <= _current_x_2_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_2 <= _current_x_2_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_3 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_2) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_3 <= _current_x_3_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_3 <= _current_x_3_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_4 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_3) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_4 <= _current_x_4_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_4 <= _current_x_4_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_5 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_4) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_5 <= _current_x_5_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_5 <= _current_x_5_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_6 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_5) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_6 <= _current_x_6_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_6 <= _current_x_6_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_7 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_6) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_7 <= _current_x_7_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_7 <= _current_x_7_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_8 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_7) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_8 <= _current_x_8_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_8 <= _current_x_8_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_9 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_8) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_9 <= _current_x_9_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_9 <= _current_x_9_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_10 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_9) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_10 <= _current_x_10_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_10 <= _current_x_10_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_11 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_10) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_11 <= _current_x_11_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_11 <= _current_x_11_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_12 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_11) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_12 <= _current_x_12_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_12 <= _current_x_12_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_13 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_12) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_13 <= _current_x_13_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_13 <= _current_x_13_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_14 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_13) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_14 <= _current_x_14_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_14 <= _current_x_14_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_15 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_14) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_15 <= _current_x_15_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_15 <= _current_x_15_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_16 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_15) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_16 <= _current_x_16_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_16 <= _current_x_16_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_17 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_16) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_17 <= _current_x_17_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_17 <= _current_x_17_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_18 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_17) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_18 <= _current_x_18_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_18 <= _current_x_18_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 40:43]
      current_x_19 <= 64'sh0; // @[Cordic_CR.scala 40:43]
    end else if ($signed(current_theta_18) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_x_19 <= _current_x_19_T_3; // @[Cordic_CR.scala 62:22]
    end else begin
      current_x_19 <= _current_x_19_T_7; // @[Cordic_CR.scala 66:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_0 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(io_theta) < 64'sh0) begin // @[Cordic_CR.scala 51:80]
      current_y_0 <= _current_y_0_T_5; // @[Cordic_CR.scala 53:22]
    end else begin
      current_y_0 <= _current_x_0_T_2; // @[Cordic_CR.scala 57:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_1 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_0) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_1 <= _current_y_1_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_1 <= _current_y_1_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_2 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_1) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_2 <= _current_y_2_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_2 <= _current_y_2_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_3 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_2) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_3 <= _current_y_3_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_3 <= _current_y_3_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_4 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_3) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_4 <= _current_y_4_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_4 <= _current_y_4_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_5 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_4) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_5 <= _current_y_5_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_5 <= _current_y_5_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_6 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_5) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_6 <= _current_y_6_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_6 <= _current_y_6_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_7 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_6) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_7 <= _current_y_7_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_7 <= _current_y_7_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_8 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_7) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_8 <= _current_y_8_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_8 <= _current_y_8_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_9 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_8) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_9 <= _current_y_9_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_9 <= _current_y_9_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_10 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_9) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_10 <= _current_y_10_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_10 <= _current_y_10_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_11 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_10) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_11 <= _current_y_11_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_11 <= _current_y_11_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_12 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_11) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_12 <= _current_y_12_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_12 <= _current_y_12_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_13 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_12) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_13 <= _current_y_13_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_13 <= _current_y_13_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_14 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_13) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_14 <= _current_y_14_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_14 <= _current_y_14_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_15 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_14) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_15 <= _current_y_15_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_15 <= _current_y_15_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_16 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_15) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_16 <= _current_y_16_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_16 <= _current_y_16_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_17 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_16) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_17 <= _current_y_17_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_17 <= _current_y_17_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_18 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_17) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_18 <= _current_y_18_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_18 <= _current_y_18_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 41:43]
      current_y_19 <= 64'sh0; // @[Cordic_CR.scala 41:43]
    end else if ($signed(current_theta_18) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_y_19 <= _current_y_19_T_3; // @[Cordic_CR.scala 63:22]
    end else begin
      current_y_19 <= _current_y_19_T_7; // @[Cordic_CR.scala 67:22]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_0 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(io_theta) < 64'sh0) begin // @[Cordic_CR.scala 51:80]
      current_theta_0 <= _current_theta_0_T_2; // @[Cordic_CR.scala 54:26]
    end else begin
      current_theta_0 <= _current_theta_0_T_5; // @[Cordic_CR.scala 58:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_1 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_0) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_1 <= _current_theta_1_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_1 <= _current_theta_1_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_2 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_1) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_2 <= _current_theta_2_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_2 <= _current_theta_2_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_3 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_2) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_3 <= _current_theta_3_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_3 <= _current_theta_3_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_4 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_3) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_4 <= _current_theta_4_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_4 <= _current_theta_4_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_5 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_4) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_5 <= _current_theta_5_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_5 <= _current_theta_5_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_6 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_5) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_6 <= _current_theta_6_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_6 <= _current_theta_6_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_7 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_6) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_7 <= _current_theta_7_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_7 <= _current_theta_7_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_8 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_7) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_8 <= _current_theta_8_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_8 <= _current_theta_8_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_9 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_8) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_9 <= _current_theta_9_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_9 <= _current_theta_9_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_10 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_9) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_10 <= _current_theta_10_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_10 <= _current_theta_10_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_11 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_10) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_11 <= _current_theta_11_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_11 <= _current_theta_11_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_12 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_11) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_12 <= _current_theta_12_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_12 <= _current_theta_12_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_13 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_12) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_13 <= _current_theta_13_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_13 <= _current_theta_13_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_14 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_13) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_14 <= _current_theta_14_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_14 <= _current_theta_14_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_15 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_14) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_15 <= _current_theta_15_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_15 <= _current_theta_15_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_16 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_15) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_16 <= _current_theta_16_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_16 <= _current_theta_16_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_17 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_16) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_17 <= _current_theta_17_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_17 <= _current_theta_17_T_5; // @[Cordic_CR.scala 68:26]
    end
    if (reset) begin // @[Cordic_CR.scala 42:47]
      current_theta_18 <= 64'sh0; // @[Cordic_CR.scala 42:47]
    end else if ($signed(current_theta_17) < 64'sh0) begin // @[Cordic_CR.scala 61:92]
      current_theta_18 <= _current_theta_18_T_2; // @[Cordic_CR.scala 64:26]
    end else begin
      current_theta_18 <= _current_theta_18_T_5; // @[Cordic_CR.scala 68:26]
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
  input  [63:0] io_op1_re,
  input  [63:0] io_op1_im,
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
  reg [63:0] _RAND_100;
  reg [63:0] _RAND_101;
  reg [63:0] _RAND_102;
  reg [63:0] _RAND_103;
  reg [63:0] _RAND_104;
  reg [63:0] _RAND_105;
  reg [63:0] _RAND_106;
  reg [63:0] _RAND_107;
  reg [63:0] _RAND_108;
  reg [63:0] _RAND_109;
  reg [63:0] _RAND_110;
  reg [63:0] _RAND_111;
  reg [63:0] _RAND_112;
  reg [63:0] _RAND_113;
  reg [63:0] _RAND_114;
  reg [63:0] _RAND_115;
  reg [63:0] _RAND_116;
  reg [63:0] _RAND_117;
  reg [63:0] _RAND_118;
  reg [63:0] _RAND_119;
`endif // RANDOMIZE_REG_INIT
  wire  cordic_cv_clock; // @[Cordic_CV.scala 141:27]
  wire  cordic_cv_reset; // @[Cordic_CV.scala 141:27]
  wire [63:0] cordic_cv_io_x; // @[Cordic_CV.scala 141:27]
  wire [63:0] cordic_cv_io_y; // @[Cordic_CV.scala 141:27]
  wire [63:0] cordic_cv_io_theta; // @[Cordic_CV.scala 141:27]
  wire [63:0] cordic_cv_io_r; // @[Cordic_CV.scala 141:27]
  wire  z_a_divide_clock; // @[Cordic_LV.scala 190:24]
  wire  z_a_divide_reset; // @[Cordic_LV.scala 190:24]
  wire [63:0] z_a_divide_io_x; // @[Cordic_LV.scala 190:24]
  wire [63:0] z_a_divide_io_y; // @[Cordic_LV.scala 190:24]
  wire [63:0] z_a_divide_io_z; // @[Cordic_LV.scala 190:24]
  wire  z_b_divide_clock; // @[Cordic_LV.scala 190:24]
  wire  z_b_divide_reset; // @[Cordic_LV.scala 190:24]
  wire [63:0] z_b_divide_io_x; // @[Cordic_LV.scala 190:24]
  wire [63:0] z_b_divide_io_y; // @[Cordic_LV.scala 190:24]
  wire [63:0] z_b_divide_io_z; // @[Cordic_LV.scala 190:24]
  wire  cordic_unit_clock; // @[Cordic_CR.scala 98:47]
  wire  cordic_unit_reset; // @[Cordic_CR.scala 98:47]
  wire [63:0] cordic_unit_io_x; // @[Cordic_CR.scala 98:47]
  wire [63:0] cordic_unit_io_y; // @[Cordic_CR.scala 98:47]
  wire [63:0] cordic_unit_io_theta; // @[Cordic_CR.scala 98:47]
  wire [63:0] cordic_unit_io_x_n; // @[Cordic_CR.scala 98:47]
  wire [63:0] cordic_unit_io_y_n; // @[Cordic_CR.scala 98:47]
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
  wire  _GEN_2 = $signed(io_op2_re) < 64'sh0 ? 1'h0 : 1'h1; // @[Cordic_Complex_Divide.scala 20:72 23:17 27:17]
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
  reg [63:0] b_reg_0; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_1; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_2; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_3; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_4; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_5; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_6; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_7; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_8; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_9; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_10; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_11; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_12; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_13; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_14; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_15; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_16; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_17; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_18; // @[Cordic_Complex_Divide.scala 35:39]
  reg [63:0] b_reg_19; // @[Cordic_Complex_Divide.scala 35:39]
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
  cordic_divide z_a_divide ( // @[Cordic_LV.scala 190:24]
    .clock(z_a_divide_clock),
    .reset(z_a_divide_reset),
    .io_x(z_a_divide_io_x),
    .io_y(z_a_divide_io_y),
    .io_z(z_a_divide_io_z)
  );
  cordic_divide z_b_divide ( // @[Cordic_LV.scala 190:24]
    .clock(z_b_divide_clock),
    .reset(z_b_divide_reset),
    .io_x(z_b_divide_io_x),
    .io_y(z_b_divide_io_y),
    .io_z(z_b_divide_io_z)
  );
  CORDIC_CR_ORIGIN cordic_unit ( // @[Cordic_CR.scala 98:47]
    .clock(cordic_unit_clock),
    .reset(cordic_unit_reset),
    .io_x(cordic_unit_io_x),
    .io_y(cordic_unit_io_y),
    .io_theta(cordic_unit_io_theta),
    .io_x_n(cordic_unit_io_x_n),
    .io_y_n(cordic_unit_io_y_n)
  );
  assign io_res_re = flag_reg_59 ? $signed(cordic_unit_io_x_n) : $signed(_io_res_re_T_2); // @[Cordic_Complex_Divide.scala 66:37 67:15 70:15]
  assign io_res_im = flag_reg_59 ? $signed(cordic_unit_io_y_n) : $signed(_io_res_im_T_2); // @[Cordic_Complex_Divide.scala 66:37 68:15 71:15]
  assign cordic_cv_clock = clock;
  assign cordic_cv_reset = reset;
  assign cordic_cv_io_x = $signed(io_op2_re) < 64'sh0 ? $signed(_p_T_2) : $signed(io_op2_re); // @[Cordic_Complex_Divide.scala 20:72 21:7 25:7]
  assign cordic_cv_io_y = $signed(io_op2_re) < 64'sh0 ? $signed(_q_T_2) : $signed(io_op2_im); // @[Cordic_Complex_Divide.scala 20:72 22:7 26:7]
  assign z_a_divide_clock = clock;
  assign z_a_divide_reset = reset;
  assign z_a_divide_io_x = cordic_cv_io_r; // @[Cordic_LV.scala 191:17]
  assign z_a_divide_io_y = a_reg_19; // @[Cordic_LV.scala 192:17]
  assign z_b_divide_clock = clock;
  assign z_b_divide_reset = reset;
  assign z_b_divide_io_x = cordic_cv_io_r; // @[Cordic_LV.scala 191:17]
  assign z_b_divide_io_y = b_reg_19; // @[Cordic_LV.scala 192:17]
  assign cordic_unit_clock = clock;
  assign cordic_unit_reset = reset;
  assign cordic_unit_io_x = z_a_divide_io_z; // @[Cordic_CR.scala 99:22]
  assign cordic_unit_io_y = z_b_divide_io_z; // @[Cordic_CR.scala 100:22]
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
      a_reg_0 <= io_op1_re; // @[Cordic_Complex_Divide.scala 38:16]
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
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_0 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_0 <= io_op1_im; // @[Cordic_Complex_Divide.scala 39:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_1 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_1 <= b_reg_0; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_2 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_2 <= b_reg_1; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_3 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_3 <= b_reg_2; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_4 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_4 <= b_reg_3; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_5 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_5 <= b_reg_4; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_6 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_6 <= b_reg_5; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_7 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_7 <= b_reg_6; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_8 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_8 <= b_reg_7; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_9 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_9 <= b_reg_8; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_10 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_10 <= b_reg_9; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_11 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_11 <= b_reg_10; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_12 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_12 <= b_reg_11; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_13 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_13 <= b_reg_12; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_14 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_14 <= b_reg_13; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_15 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_15 <= b_reg_14; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_16 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_16 <= b_reg_15; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_17 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_17 <= b_reg_16; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_18 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_18 <= b_reg_17; // @[Cordic_Complex_Divide.scala 42:16]
    end
    if (reset) begin // @[Cordic_Complex_Divide.scala 35:39]
      b_reg_19 <= 64'sh0; // @[Cordic_Complex_Divide.scala 35:39]
    end else begin
      b_reg_19 <= b_reg_18; // @[Cordic_Complex_Divide.scala 42:16]
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
  b_reg_0 = _RAND_80[63:0];
  _RAND_81 = {2{`RANDOM}};
  b_reg_1 = _RAND_81[63:0];
  _RAND_82 = {2{`RANDOM}};
  b_reg_2 = _RAND_82[63:0];
  _RAND_83 = {2{`RANDOM}};
  b_reg_3 = _RAND_83[63:0];
  _RAND_84 = {2{`RANDOM}};
  b_reg_4 = _RAND_84[63:0];
  _RAND_85 = {2{`RANDOM}};
  b_reg_5 = _RAND_85[63:0];
  _RAND_86 = {2{`RANDOM}};
  b_reg_6 = _RAND_86[63:0];
  _RAND_87 = {2{`RANDOM}};
  b_reg_7 = _RAND_87[63:0];
  _RAND_88 = {2{`RANDOM}};
  b_reg_8 = _RAND_88[63:0];
  _RAND_89 = {2{`RANDOM}};
  b_reg_9 = _RAND_89[63:0];
  _RAND_90 = {2{`RANDOM}};
  b_reg_10 = _RAND_90[63:0];
  _RAND_91 = {2{`RANDOM}};
  b_reg_11 = _RAND_91[63:0];
  _RAND_92 = {2{`RANDOM}};
  b_reg_12 = _RAND_92[63:0];
  _RAND_93 = {2{`RANDOM}};
  b_reg_13 = _RAND_93[63:0];
  _RAND_94 = {2{`RANDOM}};
  b_reg_14 = _RAND_94[63:0];
  _RAND_95 = {2{`RANDOM}};
  b_reg_15 = _RAND_95[63:0];
  _RAND_96 = {2{`RANDOM}};
  b_reg_16 = _RAND_96[63:0];
  _RAND_97 = {2{`RANDOM}};
  b_reg_17 = _RAND_97[63:0];
  _RAND_98 = {2{`RANDOM}};
  b_reg_18 = _RAND_98[63:0];
  _RAND_99 = {2{`RANDOM}};
  b_reg_19 = _RAND_99[63:0];
  _RAND_100 = {2{`RANDOM}};
  theta_reg_0 = _RAND_100[63:0];
  _RAND_101 = {2{`RANDOM}};
  theta_reg_1 = _RAND_101[63:0];
  _RAND_102 = {2{`RANDOM}};
  theta_reg_2 = _RAND_102[63:0];
  _RAND_103 = {2{`RANDOM}};
  theta_reg_3 = _RAND_103[63:0];
  _RAND_104 = {2{`RANDOM}};
  theta_reg_4 = _RAND_104[63:0];
  _RAND_105 = {2{`RANDOM}};
  theta_reg_5 = _RAND_105[63:0];
  _RAND_106 = {2{`RANDOM}};
  theta_reg_6 = _RAND_106[63:0];
  _RAND_107 = {2{`RANDOM}};
  theta_reg_7 = _RAND_107[63:0];
  _RAND_108 = {2{`RANDOM}};
  theta_reg_8 = _RAND_108[63:0];
  _RAND_109 = {2{`RANDOM}};
  theta_reg_9 = _RAND_109[63:0];
  _RAND_110 = {2{`RANDOM}};
  theta_reg_10 = _RAND_110[63:0];
  _RAND_111 = {2{`RANDOM}};
  theta_reg_11 = _RAND_111[63:0];
  _RAND_112 = {2{`RANDOM}};
  theta_reg_12 = _RAND_112[63:0];
  _RAND_113 = {2{`RANDOM}};
  theta_reg_13 = _RAND_113[63:0];
  _RAND_114 = {2{`RANDOM}};
  theta_reg_14 = _RAND_114[63:0];
  _RAND_115 = {2{`RANDOM}};
  theta_reg_15 = _RAND_115[63:0];
  _RAND_116 = {2{`RANDOM}};
  theta_reg_16 = _RAND_116[63:0];
  _RAND_117 = {2{`RANDOM}};
  theta_reg_17 = _RAND_117[63:0];
  _RAND_118 = {2{`RANDOM}};
  theta_reg_18 = _RAND_118[63:0];
  _RAND_119 = {2{`RANDOM}};
  theta_reg_19 = _RAND_119[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module complex_vector_divide(
  input         clock,
  input         reset,
  input  [63:0] io_dividedVector_0_re,
  input  [63:0] io_dividedVector_0_im,
  input  [63:0] io_dividedVector_1_re,
  input  [63:0] io_dividedVector_1_im,
  input  [63:0] io_dividedVector_2_re,
  input  [63:0] io_dividedVector_2_im,
  input  [63:0] io_dividedVector_3_re,
  input  [63:0] io_dividedVector_3_im,
  input  [63:0] io_dividedVector_4_re,
  input  [63:0] io_dividedVector_4_im,
  input  [63:0] io_dividedVector_5_re,
  input  [63:0] io_dividedVector_5_im,
  input  [63:0] io_dividedVector_6_re,
  input  [63:0] io_dividedVector_6_im,
  input  [63:0] io_dividedVector_7_re,
  input  [63:0] io_dividedVector_7_im,
  input  [63:0] io_dividedVector_8_re,
  input  [63:0] io_dividedVector_8_im,
  input  [63:0] io_dividedVector_9_re,
  input  [63:0] io_dividedVector_9_im,
  input  [63:0] io_valueIn_re,
  input  [63:0] io_valueIn_im,
  output [63:0] io_vectorOut_0_re,
  output [63:0] io_vectorOut_0_im,
  output [63:0] io_vectorOut_1_re,
  output [63:0] io_vectorOut_1_im,
  output [63:0] io_vectorOut_2_re,
  output [63:0] io_vectorOut_2_im,
  output [63:0] io_vectorOut_3_re,
  output [63:0] io_vectorOut_3_im,
  output [63:0] io_vectorOut_4_re,
  output [63:0] io_vectorOut_4_im,
  output [63:0] io_vectorOut_5_re,
  output [63:0] io_vectorOut_5_im,
  output [63:0] io_vectorOut_6_re,
  output [63:0] io_vectorOut_6_im,
  output [63:0] io_vectorOut_7_re,
  output [63:0] io_vectorOut_7_im,
  output [63:0] io_vectorOut_8_re,
  output [63:0] io_vectorOut_8_im,
  output [63:0] io_vectorOut_9_re,
  output [63:0] io_vectorOut_9_im
);
  wire  io_vectorOut_0_unit_clock; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_0_unit_reset; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_0_unit_io_op1_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_0_unit_io_op1_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_0_unit_io_op2_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_0_unit_io_op2_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_0_unit_io_res_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_0_unit_io_res_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_1_unit_clock; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_1_unit_reset; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_1_unit_io_op1_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_1_unit_io_op1_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_1_unit_io_op2_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_1_unit_io_op2_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_1_unit_io_res_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_1_unit_io_res_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_2_unit_clock; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_2_unit_reset; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_2_unit_io_op1_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_2_unit_io_op1_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_2_unit_io_op2_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_2_unit_io_op2_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_2_unit_io_res_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_2_unit_io_res_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_3_unit_clock; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_3_unit_reset; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_3_unit_io_op1_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_3_unit_io_op1_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_3_unit_io_op2_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_3_unit_io_op2_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_3_unit_io_res_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_3_unit_io_res_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_4_unit_clock; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_4_unit_reset; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_4_unit_io_op1_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_4_unit_io_op1_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_4_unit_io_op2_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_4_unit_io_op2_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_4_unit_io_res_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_4_unit_io_res_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_5_unit_clock; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_5_unit_reset; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_5_unit_io_op1_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_5_unit_io_op1_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_5_unit_io_op2_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_5_unit_io_op2_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_5_unit_io_res_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_5_unit_io_res_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_6_unit_clock; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_6_unit_reset; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_6_unit_io_op1_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_6_unit_io_op1_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_6_unit_io_op2_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_6_unit_io_op2_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_6_unit_io_res_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_6_unit_io_res_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_7_unit_clock; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_7_unit_reset; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_7_unit_io_op1_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_7_unit_io_op1_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_7_unit_io_op2_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_7_unit_io_op2_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_7_unit_io_res_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_7_unit_io_res_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_8_unit_clock; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_8_unit_reset; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_8_unit_io_op1_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_8_unit_io_op1_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_8_unit_io_op2_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_8_unit_io_op2_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_8_unit_io_res_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_8_unit_io_res_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_9_unit_clock; // @[Cordic_Complex_Divide.scala 87:24]
  wire  io_vectorOut_9_unit_reset; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_9_unit_io_op1_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_9_unit_io_op1_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_9_unit_io_op2_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_9_unit_io_op2_im; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_9_unit_io_res_re; // @[Cordic_Complex_Divide.scala 87:24]
  wire [63:0] io_vectorOut_9_unit_io_res_im; // @[Cordic_Complex_Divide.scala 87:24]
  cordic_complex_divide io_vectorOut_0_unit ( // @[Cordic_Complex_Divide.scala 87:24]
    .clock(io_vectorOut_0_unit_clock),
    .reset(io_vectorOut_0_unit_reset),
    .io_op1_re(io_vectorOut_0_unit_io_op1_re),
    .io_op1_im(io_vectorOut_0_unit_io_op1_im),
    .io_op2_re(io_vectorOut_0_unit_io_op2_re),
    .io_op2_im(io_vectorOut_0_unit_io_op2_im),
    .io_res_re(io_vectorOut_0_unit_io_res_re),
    .io_res_im(io_vectorOut_0_unit_io_res_im)
  );
  cordic_complex_divide io_vectorOut_1_unit ( // @[Cordic_Complex_Divide.scala 87:24]
    .clock(io_vectorOut_1_unit_clock),
    .reset(io_vectorOut_1_unit_reset),
    .io_op1_re(io_vectorOut_1_unit_io_op1_re),
    .io_op1_im(io_vectorOut_1_unit_io_op1_im),
    .io_op2_re(io_vectorOut_1_unit_io_op2_re),
    .io_op2_im(io_vectorOut_1_unit_io_op2_im),
    .io_res_re(io_vectorOut_1_unit_io_res_re),
    .io_res_im(io_vectorOut_1_unit_io_res_im)
  );
  cordic_complex_divide io_vectorOut_2_unit ( // @[Cordic_Complex_Divide.scala 87:24]
    .clock(io_vectorOut_2_unit_clock),
    .reset(io_vectorOut_2_unit_reset),
    .io_op1_re(io_vectorOut_2_unit_io_op1_re),
    .io_op1_im(io_vectorOut_2_unit_io_op1_im),
    .io_op2_re(io_vectorOut_2_unit_io_op2_re),
    .io_op2_im(io_vectorOut_2_unit_io_op2_im),
    .io_res_re(io_vectorOut_2_unit_io_res_re),
    .io_res_im(io_vectorOut_2_unit_io_res_im)
  );
  cordic_complex_divide io_vectorOut_3_unit ( // @[Cordic_Complex_Divide.scala 87:24]
    .clock(io_vectorOut_3_unit_clock),
    .reset(io_vectorOut_3_unit_reset),
    .io_op1_re(io_vectorOut_3_unit_io_op1_re),
    .io_op1_im(io_vectorOut_3_unit_io_op1_im),
    .io_op2_re(io_vectorOut_3_unit_io_op2_re),
    .io_op2_im(io_vectorOut_3_unit_io_op2_im),
    .io_res_re(io_vectorOut_3_unit_io_res_re),
    .io_res_im(io_vectorOut_3_unit_io_res_im)
  );
  cordic_complex_divide io_vectorOut_4_unit ( // @[Cordic_Complex_Divide.scala 87:24]
    .clock(io_vectorOut_4_unit_clock),
    .reset(io_vectorOut_4_unit_reset),
    .io_op1_re(io_vectorOut_4_unit_io_op1_re),
    .io_op1_im(io_vectorOut_4_unit_io_op1_im),
    .io_op2_re(io_vectorOut_4_unit_io_op2_re),
    .io_op2_im(io_vectorOut_4_unit_io_op2_im),
    .io_res_re(io_vectorOut_4_unit_io_res_re),
    .io_res_im(io_vectorOut_4_unit_io_res_im)
  );
  cordic_complex_divide io_vectorOut_5_unit ( // @[Cordic_Complex_Divide.scala 87:24]
    .clock(io_vectorOut_5_unit_clock),
    .reset(io_vectorOut_5_unit_reset),
    .io_op1_re(io_vectorOut_5_unit_io_op1_re),
    .io_op1_im(io_vectorOut_5_unit_io_op1_im),
    .io_op2_re(io_vectorOut_5_unit_io_op2_re),
    .io_op2_im(io_vectorOut_5_unit_io_op2_im),
    .io_res_re(io_vectorOut_5_unit_io_res_re),
    .io_res_im(io_vectorOut_5_unit_io_res_im)
  );
  cordic_complex_divide io_vectorOut_6_unit ( // @[Cordic_Complex_Divide.scala 87:24]
    .clock(io_vectorOut_6_unit_clock),
    .reset(io_vectorOut_6_unit_reset),
    .io_op1_re(io_vectorOut_6_unit_io_op1_re),
    .io_op1_im(io_vectorOut_6_unit_io_op1_im),
    .io_op2_re(io_vectorOut_6_unit_io_op2_re),
    .io_op2_im(io_vectorOut_6_unit_io_op2_im),
    .io_res_re(io_vectorOut_6_unit_io_res_re),
    .io_res_im(io_vectorOut_6_unit_io_res_im)
  );
  cordic_complex_divide io_vectorOut_7_unit ( // @[Cordic_Complex_Divide.scala 87:24]
    .clock(io_vectorOut_7_unit_clock),
    .reset(io_vectorOut_7_unit_reset),
    .io_op1_re(io_vectorOut_7_unit_io_op1_re),
    .io_op1_im(io_vectorOut_7_unit_io_op1_im),
    .io_op2_re(io_vectorOut_7_unit_io_op2_re),
    .io_op2_im(io_vectorOut_7_unit_io_op2_im),
    .io_res_re(io_vectorOut_7_unit_io_res_re),
    .io_res_im(io_vectorOut_7_unit_io_res_im)
  );
  cordic_complex_divide io_vectorOut_8_unit ( // @[Cordic_Complex_Divide.scala 87:24]
    .clock(io_vectorOut_8_unit_clock),
    .reset(io_vectorOut_8_unit_reset),
    .io_op1_re(io_vectorOut_8_unit_io_op1_re),
    .io_op1_im(io_vectorOut_8_unit_io_op1_im),
    .io_op2_re(io_vectorOut_8_unit_io_op2_re),
    .io_op2_im(io_vectorOut_8_unit_io_op2_im),
    .io_res_re(io_vectorOut_8_unit_io_res_re),
    .io_res_im(io_vectorOut_8_unit_io_res_im)
  );
  cordic_complex_divide io_vectorOut_9_unit ( // @[Cordic_Complex_Divide.scala 87:24]
    .clock(io_vectorOut_9_unit_clock),
    .reset(io_vectorOut_9_unit_reset),
    .io_op1_re(io_vectorOut_9_unit_io_op1_re),
    .io_op1_im(io_vectorOut_9_unit_io_op1_im),
    .io_op2_re(io_vectorOut_9_unit_io_op2_re),
    .io_op2_im(io_vectorOut_9_unit_io_op2_im),
    .io_res_re(io_vectorOut_9_unit_io_res_re),
    .io_res_im(io_vectorOut_9_unit_io_res_im)
  );
  assign io_vectorOut_0_re = io_vectorOut_0_unit_io_res_re; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_0_im = io_vectorOut_0_unit_io_res_im; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_1_re = io_vectorOut_1_unit_io_res_re; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_1_im = io_vectorOut_1_unit_io_res_im; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_2_re = io_vectorOut_2_unit_io_res_re; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_2_im = io_vectorOut_2_unit_io_res_im; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_3_re = io_vectorOut_3_unit_io_res_re; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_3_im = io_vectorOut_3_unit_io_res_im; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_4_re = io_vectorOut_4_unit_io_res_re; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_4_im = io_vectorOut_4_unit_io_res_im; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_5_re = io_vectorOut_5_unit_io_res_re; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_5_im = io_vectorOut_5_unit_io_res_im; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_6_re = io_vectorOut_6_unit_io_res_re; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_6_im = io_vectorOut_6_unit_io_res_im; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_7_re = io_vectorOut_7_unit_io_res_re; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_7_im = io_vectorOut_7_unit_io_res_im; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_8_re = io_vectorOut_8_unit_io_res_re; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_8_im = io_vectorOut_8_unit_io_res_im; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_9_re = io_vectorOut_9_unit_io_res_re; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_9_im = io_vectorOut_9_unit_io_res_im; // @[Complex_Vector_Divide.scala 23:21]
  assign io_vectorOut_0_unit_clock = clock;
  assign io_vectorOut_0_unit_reset = reset;
  assign io_vectorOut_0_unit_io_op1_re = io_dividedVector_0_re; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_0_unit_io_op1_im = io_dividedVector_0_im; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_0_unit_io_op2_re = io_valueIn_re; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_0_unit_io_op2_im = io_valueIn_im; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_1_unit_clock = clock;
  assign io_vectorOut_1_unit_reset = reset;
  assign io_vectorOut_1_unit_io_op1_re = io_dividedVector_1_re; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_1_unit_io_op1_im = io_dividedVector_1_im; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_1_unit_io_op2_re = io_valueIn_re; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_1_unit_io_op2_im = io_valueIn_im; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_2_unit_clock = clock;
  assign io_vectorOut_2_unit_reset = reset;
  assign io_vectorOut_2_unit_io_op1_re = io_dividedVector_2_re; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_2_unit_io_op1_im = io_dividedVector_2_im; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_2_unit_io_op2_re = io_valueIn_re; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_2_unit_io_op2_im = io_valueIn_im; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_3_unit_clock = clock;
  assign io_vectorOut_3_unit_reset = reset;
  assign io_vectorOut_3_unit_io_op1_re = io_dividedVector_3_re; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_3_unit_io_op1_im = io_dividedVector_3_im; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_3_unit_io_op2_re = io_valueIn_re; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_3_unit_io_op2_im = io_valueIn_im; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_4_unit_clock = clock;
  assign io_vectorOut_4_unit_reset = reset;
  assign io_vectorOut_4_unit_io_op1_re = io_dividedVector_4_re; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_4_unit_io_op1_im = io_dividedVector_4_im; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_4_unit_io_op2_re = io_valueIn_re; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_4_unit_io_op2_im = io_valueIn_im; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_5_unit_clock = clock;
  assign io_vectorOut_5_unit_reset = reset;
  assign io_vectorOut_5_unit_io_op1_re = io_dividedVector_5_re; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_5_unit_io_op1_im = io_dividedVector_5_im; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_5_unit_io_op2_re = io_valueIn_re; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_5_unit_io_op2_im = io_valueIn_im; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_6_unit_clock = clock;
  assign io_vectorOut_6_unit_reset = reset;
  assign io_vectorOut_6_unit_io_op1_re = io_dividedVector_6_re; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_6_unit_io_op1_im = io_dividedVector_6_im; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_6_unit_io_op2_re = io_valueIn_re; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_6_unit_io_op2_im = io_valueIn_im; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_7_unit_clock = clock;
  assign io_vectorOut_7_unit_reset = reset;
  assign io_vectorOut_7_unit_io_op1_re = io_dividedVector_7_re; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_7_unit_io_op1_im = io_dividedVector_7_im; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_7_unit_io_op2_re = io_valueIn_re; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_7_unit_io_op2_im = io_valueIn_im; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_8_unit_clock = clock;
  assign io_vectorOut_8_unit_reset = reset;
  assign io_vectorOut_8_unit_io_op1_re = io_dividedVector_8_re; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_8_unit_io_op1_im = io_dividedVector_8_im; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_8_unit_io_op2_re = io_valueIn_re; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_8_unit_io_op2_im = io_valueIn_im; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_9_unit_clock = clock;
  assign io_vectorOut_9_unit_reset = reset;
  assign io_vectorOut_9_unit_io_op1_re = io_dividedVector_9_re; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_9_unit_io_op1_im = io_dividedVector_9_im; // @[Cordic_Complex_Divide.scala 88:19]
  assign io_vectorOut_9_unit_io_op2_re = io_valueIn_re; // @[Cordic_Complex_Divide.scala 89:19]
  assign io_vectorOut_9_unit_io_op2_im = io_valueIn_im; // @[Cordic_Complex_Divide.scala 89:19]
endmodule
