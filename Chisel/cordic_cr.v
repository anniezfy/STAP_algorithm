module CORDIC_CR_ORIGIN(
  input         clock,
  input         reset,
  input  [31:0] io_theta,
  output [31:0] io_sin,
  output [31:0] io_cos
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
  reg [31:0] current_x_0; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_1; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_2; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_3; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_4; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_5; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_6; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_7; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_8; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_9; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_10; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_11; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_12; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_13; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_14; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_15; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_16; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_17; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_18; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_x_19; // @[Cordic_CR.scala 28:43]
  reg [31:0] current_y_0; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_1; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_2; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_3; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_4; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_5; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_6; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_7; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_8; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_9; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_10; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_11; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_12; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_13; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_14; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_15; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_16; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_17; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_18; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_y_19; // @[Cordic_CR.scala 29:43]
  reg [31:0] current_theta_0; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_1; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_2; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_3; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_4; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_5; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_6; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_7; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_8; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_9; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_10; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_11; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_12; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_13; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_14; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_15; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_16; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_17; // @[Cordic_CR.scala 30:47]
  reg [31:0] current_theta_18; // @[Cordic_CR.scala 30:47]
  wire [31:0] _current_y_0_T_2 = 32'sh0 - 32'sh100000; // @[Cordic_CR.scala 41:81]
  wire [31:0] _current_theta_0_T_2 = $signed(io_theta) + 32'sh2d00000; // @[Cordic_CR.scala 43:38]
  wire [31:0] _current_theta_0_T_5 = $signed(io_theta) - 32'sh2d00000; // @[Cordic_CR.scala 47:38]
  wire [30:0] _current_x_1_T = current_y_0[31:1]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_59 = {{1{_current_x_1_T[30]}},_current_x_1_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_1_T_3 = $signed(current_x_0) + $signed(_GEN_59); // @[Cordic_CR.scala 51:42]
  wire [30:0] _current_y_1_T = current_x_0[31:1]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_60 = {{1{_current_y_1_T[30]}},_current_y_1_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_1_T_3 = $signed(current_y_0) - $signed(_GEN_60); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_1_T_2 = $signed(current_theta_0) + 32'sh1a90a73; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_1_T_7 = $signed(current_x_0) - $signed(_GEN_59); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_1_T_7 = $signed(current_y_0) + $signed(_GEN_60); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_1_T_5 = $signed(current_theta_0) - 32'sh1a90a73; // @[Cordic_CR.scala 57:50]
  wire [29:0] _current_x_2_T = current_y_1[31:2]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_63 = {{2{_current_x_2_T[29]}},_current_x_2_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_2_T_3 = $signed(current_x_1) + $signed(_GEN_63); // @[Cordic_CR.scala 51:42]
  wire [29:0] _current_y_2_T = current_x_1[31:2]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_64 = {{2{_current_y_2_T[29]}},_current_y_2_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_2_T_3 = $signed(current_y_1) - $signed(_GEN_64); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_2_T_2 = $signed(current_theta_1) + 32'she09474; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_2_T_7 = $signed(current_x_1) - $signed(_GEN_63); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_2_T_7 = $signed(current_y_1) + $signed(_GEN_64); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_2_T_5 = $signed(current_theta_1) - 32'she09474; // @[Cordic_CR.scala 57:50]
  wire [28:0] _current_x_3_T = current_y_2[31:3]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_67 = {{3{_current_x_3_T[28]}},_current_x_3_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_3_T_3 = $signed(current_x_2) + $signed(_GEN_67); // @[Cordic_CR.scala 51:42]
  wire [28:0] _current_y_3_T = current_x_2[31:3]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_68 = {{3{_current_y_3_T[28]}},_current_y_3_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_3_T_3 = $signed(current_y_2) - $signed(_GEN_68); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_3_T_2 = $signed(current_theta_2) + 32'sh720011; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_3_T_7 = $signed(current_x_2) - $signed(_GEN_67); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_3_T_7 = $signed(current_y_2) + $signed(_GEN_68); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_3_T_5 = $signed(current_theta_2) - 32'sh720011; // @[Cordic_CR.scala 57:50]
  wire [27:0] _current_x_4_T = current_y_3[31:4]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_71 = {{4{_current_x_4_T[27]}},_current_x_4_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_4_T_3 = $signed(current_x_3) + $signed(_GEN_71); // @[Cordic_CR.scala 51:42]
  wire [27:0] _current_y_4_T = current_x_3[31:4]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_72 = {{4{_current_y_4_T[27]}},_current_y_4_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_4_T_3 = $signed(current_y_3) - $signed(_GEN_72); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_4_T_2 = $signed(current_theta_3) + 32'sh3938aa; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_4_T_7 = $signed(current_x_3) - $signed(_GEN_71); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_4_T_7 = $signed(current_y_3) + $signed(_GEN_72); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_4_T_5 = $signed(current_theta_3) - 32'sh3938aa; // @[Cordic_CR.scala 57:50]
  wire [26:0] _current_x_5_T = current_y_4[31:5]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_75 = {{5{_current_x_5_T[26]}},_current_x_5_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_5_T_3 = $signed(current_x_4) + $signed(_GEN_75); // @[Cordic_CR.scala 51:42]
  wire [26:0] _current_y_5_T = current_x_4[31:5]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_76 = {{5{_current_y_5_T[26]}},_current_y_5_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_5_T_3 = $signed(current_y_4) - $signed(_GEN_76); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_5_T_2 = $signed(current_theta_4) + 32'sh1ca379; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_5_T_7 = $signed(current_x_4) - $signed(_GEN_75); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_5_T_7 = $signed(current_y_4) + $signed(_GEN_76); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_5_T_5 = $signed(current_theta_4) - 32'sh1ca379; // @[Cordic_CR.scala 57:50]
  wire [25:0] _current_x_6_T = current_y_5[31:6]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_79 = {{6{_current_x_6_T[25]}},_current_x_6_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_6_T_3 = $signed(current_x_5) + $signed(_GEN_79); // @[Cordic_CR.scala 51:42]
  wire [25:0] _current_y_6_T = current_x_5[31:6]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_80 = {{6{_current_y_6_T[25]}},_current_y_6_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_6_T_3 = $signed(current_y_5) - $signed(_GEN_80); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_6_T_2 = $signed(current_theta_5) + 32'she52a2; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_6_T_7 = $signed(current_x_5) - $signed(_GEN_79); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_6_T_7 = $signed(current_y_5) + $signed(_GEN_80); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_6_T_5 = $signed(current_theta_5) - 32'she52a2; // @[Cordic_CR.scala 57:50]
  wire [24:0] _current_x_7_T = current_y_6[31:7]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_83 = {{7{_current_x_7_T[24]}},_current_x_7_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_7_T_3 = $signed(current_x_6) + $signed(_GEN_83); // @[Cordic_CR.scala 51:42]
  wire [24:0] _current_y_7_T = current_x_6[31:7]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_84 = {{7{_current_y_7_T[24]}},_current_y_7_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_7_T_3 = $signed(current_y_6) - $signed(_GEN_84); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_7_T_2 = $signed(current_theta_6) + 32'sh7296d; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_7_T_7 = $signed(current_x_6) - $signed(_GEN_83); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_7_T_7 = $signed(current_y_6) + $signed(_GEN_84); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_7_T_5 = $signed(current_theta_6) - 32'sh7296d; // @[Cordic_CR.scala 57:50]
  wire [23:0] _current_x_8_T = current_y_7[31:8]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_87 = {{8{_current_x_8_T[23]}},_current_x_8_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_8_T_3 = $signed(current_x_7) + $signed(_GEN_87); // @[Cordic_CR.scala 51:42]
  wire [23:0] _current_y_8_T = current_x_7[31:8]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_88 = {{8{_current_y_8_T[23]}},_current_y_8_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_8_T_3 = $signed(current_y_7) - $signed(_GEN_88); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_8_T_2 = $signed(current_theta_7) + 32'sh394ba; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_8_T_7 = $signed(current_x_7) - $signed(_GEN_87); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_8_T_7 = $signed(current_y_7) + $signed(_GEN_88); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_8_T_5 = $signed(current_theta_7) - 32'sh394ba; // @[Cordic_CR.scala 57:50]
  wire [22:0] _current_x_9_T = current_y_8[31:9]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_91 = {{9{_current_x_9_T[22]}},_current_x_9_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_9_T_3 = $signed(current_x_8) + $signed(_GEN_91); // @[Cordic_CR.scala 51:42]
  wire [22:0] _current_y_9_T = current_x_8[31:9]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_92 = {{9{_current_y_9_T[22]}},_current_y_9_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_9_T_3 = $signed(current_y_8) - $signed(_GEN_92); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_9_T_2 = $signed(current_theta_8) + 32'sh1ca5e; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_9_T_7 = $signed(current_x_8) - $signed(_GEN_91); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_9_T_7 = $signed(current_y_8) + $signed(_GEN_92); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_9_T_5 = $signed(current_theta_8) - 32'sh1ca5e; // @[Cordic_CR.scala 57:50]
  wire [21:0] _current_x_10_T = current_y_9[31:10]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_95 = {{10{_current_x_10_T[21]}},_current_x_10_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_10_T_3 = $signed(current_x_9) + $signed(_GEN_95); // @[Cordic_CR.scala 51:42]
  wire [21:0] _current_y_10_T = current_x_9[31:10]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_96 = {{10{_current_y_10_T[21]}},_current_y_10_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_10_T_3 = $signed(current_y_9) - $signed(_GEN_96); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_10_T_2 = $signed(current_theta_9) + 32'she52f; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_10_T_7 = $signed(current_x_9) - $signed(_GEN_95); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_10_T_7 = $signed(current_y_9) + $signed(_GEN_96); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_10_T_5 = $signed(current_theta_9) - 32'she52f; // @[Cordic_CR.scala 57:50]
  wire [20:0] _current_x_11_T = current_y_10[31:11]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_99 = {{11{_current_x_11_T[20]}},_current_x_11_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_11_T_3 = $signed(current_x_10) + $signed(_GEN_99); // @[Cordic_CR.scala 51:42]
  wire [20:0] _current_y_11_T = current_x_10[31:11]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_100 = {{11{_current_y_11_T[20]}},_current_y_11_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_11_T_3 = $signed(current_y_10) - $signed(_GEN_100); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_11_T_2 = $signed(current_theta_10) + 32'sh7297; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_11_T_7 = $signed(current_x_10) - $signed(_GEN_99); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_11_T_7 = $signed(current_y_10) + $signed(_GEN_100); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_11_T_5 = $signed(current_theta_10) - 32'sh7297; // @[Cordic_CR.scala 57:50]
  wire [19:0] _current_x_12_T = current_y_11[31:12]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_103 = {{12{_current_x_12_T[19]}},_current_x_12_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_12_T_3 = $signed(current_x_11) + $signed(_GEN_103); // @[Cordic_CR.scala 51:42]
  wire [19:0] _current_y_12_T = current_x_11[31:12]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_104 = {{12{_current_y_12_T[19]}},_current_y_12_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_12_T_3 = $signed(current_y_11) - $signed(_GEN_104); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_12_T_2 = $signed(current_theta_11) + 32'sh394c; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_12_T_7 = $signed(current_x_11) - $signed(_GEN_103); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_12_T_7 = $signed(current_y_11) + $signed(_GEN_104); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_12_T_5 = $signed(current_theta_11) - 32'sh394c; // @[Cordic_CR.scala 57:50]
  wire [18:0] _current_x_13_T = current_y_12[31:13]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_107 = {{13{_current_x_13_T[18]}},_current_x_13_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_13_T_3 = $signed(current_x_12) + $signed(_GEN_107); // @[Cordic_CR.scala 51:42]
  wire [18:0] _current_y_13_T = current_x_12[31:13]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_108 = {{13{_current_y_13_T[18]}},_current_y_13_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_13_T_3 = $signed(current_y_12) - $signed(_GEN_108); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_13_T_2 = $signed(current_theta_12) + 32'sh1ca6; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_13_T_7 = $signed(current_x_12) - $signed(_GEN_107); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_13_T_7 = $signed(current_y_12) + $signed(_GEN_108); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_13_T_5 = $signed(current_theta_12) - 32'sh1ca6; // @[Cordic_CR.scala 57:50]
  wire [17:0] _current_x_14_T = current_y_13[31:14]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_111 = {{14{_current_x_14_T[17]}},_current_x_14_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_14_T_3 = $signed(current_x_13) + $signed(_GEN_111); // @[Cordic_CR.scala 51:42]
  wire [17:0] _current_y_14_T = current_x_13[31:14]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_112 = {{14{_current_y_14_T[17]}},_current_y_14_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_14_T_3 = $signed(current_y_13) - $signed(_GEN_112); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_14_T_2 = $signed(current_theta_13) + 32'she53; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_14_T_7 = $signed(current_x_13) - $signed(_GEN_111); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_14_T_7 = $signed(current_y_13) + $signed(_GEN_112); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_14_T_5 = $signed(current_theta_13) - 32'she53; // @[Cordic_CR.scala 57:50]
  wire [16:0] _current_x_15_T = current_y_14[31:15]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_115 = {{15{_current_x_15_T[16]}},_current_x_15_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_15_T_3 = $signed(current_x_14) + $signed(_GEN_115); // @[Cordic_CR.scala 51:42]
  wire [16:0] _current_y_15_T = current_x_14[31:15]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_116 = {{15{_current_y_15_T[16]}},_current_y_15_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_15_T_3 = $signed(current_y_14) - $signed(_GEN_116); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_15_T_2 = $signed(current_theta_14) + 32'sh729; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_15_T_7 = $signed(current_x_14) - $signed(_GEN_115); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_15_T_7 = $signed(current_y_14) + $signed(_GEN_116); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_15_T_5 = $signed(current_theta_14) - 32'sh729; // @[Cordic_CR.scala 57:50]
  wire [15:0] _current_x_16_T = current_y_15[31:16]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_119 = {{16{_current_x_16_T[15]}},_current_x_16_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_16_T_3 = $signed(current_x_15) + $signed(_GEN_119); // @[Cordic_CR.scala 51:42]
  wire [15:0] _current_y_16_T = current_x_15[31:16]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_120 = {{16{_current_y_16_T[15]}},_current_y_16_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_16_T_3 = $signed(current_y_15) - $signed(_GEN_120); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_16_T_2 = $signed(current_theta_15) + 32'sh395; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_16_T_7 = $signed(current_x_15) - $signed(_GEN_119); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_16_T_7 = $signed(current_y_15) + $signed(_GEN_120); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_16_T_5 = $signed(current_theta_15) - 32'sh395; // @[Cordic_CR.scala 57:50]
  wire [14:0] _current_x_17_T = current_y_16[31:17]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_123 = {{17{_current_x_17_T[14]}},_current_x_17_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_17_T_3 = $signed(current_x_16) + $signed(_GEN_123); // @[Cordic_CR.scala 51:42]
  wire [14:0] _current_y_17_T = current_x_16[31:17]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_124 = {{17{_current_y_17_T[14]}},_current_y_17_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_17_T_3 = $signed(current_y_16) - $signed(_GEN_124); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_17_T_2 = $signed(current_theta_16) + 32'sh1ca; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_17_T_7 = $signed(current_x_16) - $signed(_GEN_123); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_17_T_7 = $signed(current_y_16) + $signed(_GEN_124); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_17_T_5 = $signed(current_theta_16) - 32'sh1ca; // @[Cordic_CR.scala 57:50]
  wire [13:0] _current_x_18_T = current_y_17[31:18]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_127 = {{18{_current_x_18_T[13]}},_current_x_18_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_18_T_3 = $signed(current_x_17) + $signed(_GEN_127); // @[Cordic_CR.scala 51:42]
  wire [13:0] _current_y_18_T = current_x_17[31:18]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_128 = {{18{_current_y_18_T[13]}},_current_y_18_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_18_T_3 = $signed(current_y_17) - $signed(_GEN_128); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_theta_18_T_2 = $signed(current_theta_17) + 32'she5; // @[Cordic_CR.scala 53:50]
  wire [31:0] _current_x_18_T_7 = $signed(current_x_17) - $signed(_GEN_127); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_18_T_7 = $signed(current_y_17) + $signed(_GEN_128); // @[Cordic_CR.scala 56:42]
  wire [31:0] _current_theta_18_T_5 = $signed(current_theta_17) - 32'she5; // @[Cordic_CR.scala 57:50]
  wire [12:0] _current_x_19_T = current_y_18[31:19]; // @[Cordic_CR.scala 51:62]
  wire [31:0] _GEN_131 = {{19{_current_x_19_T[12]}},_current_x_19_T}; // @[Cordic_CR.scala 51:42]
  wire [31:0] _current_x_19_T_3 = $signed(current_x_18) + $signed(_GEN_131); // @[Cordic_CR.scala 51:42]
  wire [12:0] _current_y_19_T = current_x_18[31:19]; // @[Cordic_CR.scala 52:62]
  wire [31:0] _GEN_132 = {{19{_current_y_19_T[12]}},_current_y_19_T}; // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_y_19_T_3 = $signed(current_y_18) - $signed(_GEN_132); // @[Cordic_CR.scala 52:42]
  wire [31:0] _current_x_19_T_7 = $signed(current_x_18) - $signed(_GEN_131); // @[Cordic_CR.scala 55:42]
  wire [31:0] _current_y_19_T_7 = $signed(current_y_18) + $signed(_GEN_132); // @[Cordic_CR.scala 56:42]
  wire [63:0] _io_cos_T = $signed(current_x_19) * 32'sh9b74f; // @[Cordic_CR.scala 67:43]
  wire [63:0] _io_sin_T = $signed(current_y_19) * 32'sh9b74f; // @[Cordic_CR.scala 68:43]
  wire [43:0] _GEN_135 = _io_sin_T[63:20]; // @[Cordic_CR.scala 68:10]
  wire [43:0] _GEN_137 = _io_cos_T[63:20]; // @[Cordic_CR.scala 67:10]
  assign io_sin = _GEN_135[31:0]; // @[Cordic_CR.scala 68:10]
  assign io_cos = _GEN_137[31:0]; // @[Cordic_CR.scala 67:10]
  always @(posedge clock) begin
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_0 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else begin
      current_x_0 <= 32'sh100000; // @[Cordic_CR.scala 39:20]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_1 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_0) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_1 <= _current_x_1_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_1 <= _current_x_1_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_2 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_1) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_2 <= _current_x_2_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_2 <= _current_x_2_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_3 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_2) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_3 <= _current_x_3_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_3 <= _current_x_3_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_4 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_3) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_4 <= _current_x_4_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_4 <= _current_x_4_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_5 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_4) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_5 <= _current_x_5_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_5 <= _current_x_5_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_6 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_5) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_6 <= _current_x_6_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_6 <= _current_x_6_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_7 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_6) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_7 <= _current_x_7_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_7 <= _current_x_7_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_8 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_7) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_8 <= _current_x_8_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_8 <= _current_x_8_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_9 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_8) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_9 <= _current_x_9_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_9 <= _current_x_9_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_10 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_9) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_10 <= _current_x_10_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_10 <= _current_x_10_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_11 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_10) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_11 <= _current_x_11_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_11 <= _current_x_11_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_12 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_11) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_12 <= _current_x_12_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_12 <= _current_x_12_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_13 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_12) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_13 <= _current_x_13_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_13 <= _current_x_13_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_14 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_13) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_14 <= _current_x_14_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_14 <= _current_x_14_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_15 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_14) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_15 <= _current_x_15_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_15 <= _current_x_15_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_16 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_15) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_16 <= _current_x_16_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_16 <= _current_x_16_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_17 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_16) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_17 <= _current_x_17_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_17 <= _current_x_17_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_18 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_17) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_18 <= _current_x_18_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_18 <= _current_x_18_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 28:43]
      current_x_19 <= 32'sh0; // @[Cordic_CR.scala 28:43]
    end else if ($signed(current_theta_18) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_x_19 <= _current_x_19_T_3; // @[Cordic_CR.scala 51:22]
    end else begin
      current_x_19 <= _current_x_19_T_7; // @[Cordic_CR.scala 55:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_0 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(io_theta) < 32'sh0) begin // @[Cordic_CR.scala 40:80]
      current_y_0 <= _current_y_0_T_2; // @[Cordic_CR.scala 41:22]
    end else begin
      current_y_0 <= 32'sh100000; // @[Cordic_CR.scala 45:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_1 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_0) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_1 <= _current_y_1_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_1 <= _current_y_1_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_2 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_1) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_2 <= _current_y_2_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_2 <= _current_y_2_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_3 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_2) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_3 <= _current_y_3_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_3 <= _current_y_3_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_4 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_3) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_4 <= _current_y_4_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_4 <= _current_y_4_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_5 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_4) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_5 <= _current_y_5_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_5 <= _current_y_5_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_6 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_5) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_6 <= _current_y_6_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_6 <= _current_y_6_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_7 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_6) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_7 <= _current_y_7_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_7 <= _current_y_7_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_8 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_7) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_8 <= _current_y_8_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_8 <= _current_y_8_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_9 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_8) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_9 <= _current_y_9_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_9 <= _current_y_9_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_10 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_9) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_10 <= _current_y_10_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_10 <= _current_y_10_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_11 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_10) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_11 <= _current_y_11_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_11 <= _current_y_11_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_12 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_11) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_12 <= _current_y_12_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_12 <= _current_y_12_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_13 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_12) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_13 <= _current_y_13_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_13 <= _current_y_13_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_14 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_13) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_14 <= _current_y_14_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_14 <= _current_y_14_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_15 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_14) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_15 <= _current_y_15_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_15 <= _current_y_15_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_16 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_15) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_16 <= _current_y_16_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_16 <= _current_y_16_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_17 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_16) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_17 <= _current_y_17_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_17 <= _current_y_17_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_18 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_17) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_18 <= _current_y_18_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_18 <= _current_y_18_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 29:43]
      current_y_19 <= 32'sh0; // @[Cordic_CR.scala 29:43]
    end else if ($signed(current_theta_18) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_y_19 <= _current_y_19_T_3; // @[Cordic_CR.scala 52:22]
    end else begin
      current_y_19 <= _current_y_19_T_7; // @[Cordic_CR.scala 56:22]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_0 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(io_theta) < 32'sh0) begin // @[Cordic_CR.scala 40:80]
      current_theta_0 <= _current_theta_0_T_2; // @[Cordic_CR.scala 43:26]
    end else begin
      current_theta_0 <= _current_theta_0_T_5; // @[Cordic_CR.scala 47:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_1 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_0) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_1 <= _current_theta_1_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_1 <= _current_theta_1_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_2 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_1) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_2 <= _current_theta_2_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_2 <= _current_theta_2_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_3 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_2) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_3 <= _current_theta_3_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_3 <= _current_theta_3_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_4 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_3) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_4 <= _current_theta_4_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_4 <= _current_theta_4_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_5 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_4) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_5 <= _current_theta_5_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_5 <= _current_theta_5_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_6 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_5) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_6 <= _current_theta_6_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_6 <= _current_theta_6_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_7 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_6) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_7 <= _current_theta_7_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_7 <= _current_theta_7_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_8 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_7) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_8 <= _current_theta_8_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_8 <= _current_theta_8_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_9 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_8) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_9 <= _current_theta_9_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_9 <= _current_theta_9_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_10 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_9) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_10 <= _current_theta_10_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_10 <= _current_theta_10_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_11 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_10) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_11 <= _current_theta_11_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_11 <= _current_theta_11_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_12 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_11) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_12 <= _current_theta_12_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_12 <= _current_theta_12_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_13 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_12) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_13 <= _current_theta_13_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_13 <= _current_theta_13_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_14 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_13) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_14 <= _current_theta_14_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_14 <= _current_theta_14_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_15 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_14) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_15 <= _current_theta_15_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_15 <= _current_theta_15_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_16 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_15) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_16 <= _current_theta_16_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_16 <= _current_theta_16_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_17 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_16) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_17 <= _current_theta_17_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_17 <= _current_theta_17_T_5; // @[Cordic_CR.scala 57:26]
    end
    if (reset) begin // @[Cordic_CR.scala 30:47]
      current_theta_18 <= 32'sh0; // @[Cordic_CR.scala 30:47]
    end else if ($signed(current_theta_17) < 32'sh0) begin // @[Cordic_CR.scala 50:92]
      current_theta_18 <= _current_theta_18_T_2; // @[Cordic_CR.scala 53:26]
    end else begin
      current_theta_18 <= _current_theta_18_T_5; // @[Cordic_CR.scala 57:26]
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
  current_y_19 = _RAND_39[31:0];
  _RAND_40 = {1{`RANDOM}};
  current_theta_0 = _RAND_40[31:0];
  _RAND_41 = {1{`RANDOM}};
  current_theta_1 = _RAND_41[31:0];
  _RAND_42 = {1{`RANDOM}};
  current_theta_2 = _RAND_42[31:0];
  _RAND_43 = {1{`RANDOM}};
  current_theta_3 = _RAND_43[31:0];
  _RAND_44 = {1{`RANDOM}};
  current_theta_4 = _RAND_44[31:0];
  _RAND_45 = {1{`RANDOM}};
  current_theta_5 = _RAND_45[31:0];
  _RAND_46 = {1{`RANDOM}};
  current_theta_6 = _RAND_46[31:0];
  _RAND_47 = {1{`RANDOM}};
  current_theta_7 = _RAND_47[31:0];
  _RAND_48 = {1{`RANDOM}};
  current_theta_8 = _RAND_48[31:0];
  _RAND_49 = {1{`RANDOM}};
  current_theta_9 = _RAND_49[31:0];
  _RAND_50 = {1{`RANDOM}};
  current_theta_10 = _RAND_50[31:0];
  _RAND_51 = {1{`RANDOM}};
  current_theta_11 = _RAND_51[31:0];
  _RAND_52 = {1{`RANDOM}};
  current_theta_12 = _RAND_52[31:0];
  _RAND_53 = {1{`RANDOM}};
  current_theta_13 = _RAND_53[31:0];
  _RAND_54 = {1{`RANDOM}};
  current_theta_14 = _RAND_54[31:0];
  _RAND_55 = {1{`RANDOM}};
  current_theta_15 = _RAND_55[31:0];
  _RAND_56 = {1{`RANDOM}};
  current_theta_16 = _RAND_56[31:0];
  _RAND_57 = {1{`RANDOM}};
  current_theta_17 = _RAND_57[31:0];
  _RAND_58 = {1{`RANDOM}};
  current_theta_18 = _RAND_58[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module cordic_cr(
  input         clock,
  input         reset,
  input  [31:0] io_theta,
  output [31:0] io_sin,
  output [31:0] io_cos
);
  wire  cordic_unit_clock; // @[Cordic_CR.scala 112:45]
  wire  cordic_unit_reset; // @[Cordic_CR.scala 112:45]
  wire [31:0] cordic_unit_io_theta; // @[Cordic_CR.scala 112:45]
  wire [31:0] cordic_unit_io_sin; // @[Cordic_CR.scala 112:45]
  wire [31:0] cordic_unit_io_cos; // @[Cordic_CR.scala 112:45]
  wire [31:0] _temp_theta_T_2 = $signed(io_theta) - 32'sh16800000; // @[Cordic_CR.scala 90:28]
  wire [31:0] _temp_theta_T_5 = $signed(io_theta) + 32'sh16800000; // @[Cordic_CR.scala 92:28]
  wire [31:0] _GEN_0 = $signed(io_theta) < -32'shb400000 ? $signed(_temp_theta_T_5) : $signed(io_theta); // @[Cordic_CR.scala 91:81 92:16 94:16]
  wire [31:0] temp_theta = $signed(io_theta) > 32'shb400000 ? $signed(_temp_theta_T_2) : $signed(_GEN_0); // @[Cordic_CR.scala 89:74 90:16]
  wire  _T_2 = $signed(temp_theta) > 32'sh5a00000; // @[Cordic_CR.scala 100:19]
  wire [31:0] _real_theta_T_2 = 32'shb400000 - $signed(temp_theta); // @[Cordic_CR.scala 103:74]
  wire [31:0] _real_theta_T_5 = $signed(temp_theta) - 32'shb400000; // @[Cordic_CR.scala 106:75]
  wire  _GEN_2 = $signed(temp_theta) < -32'sh5a00000 ? 1'h0 : 1'h1; // @[Cordic_CR.scala 104:82 105:15 108:15]
  wire [31:0] _GEN_3 = $signed(temp_theta) < -32'sh5a00000 ? $signed(_real_theta_T_5) : $signed(temp_theta); // @[Cordic_CR.scala 104:82 106:16 109:16]
  wire  sigma_cos = _T_2 ? 1'h0 : _GEN_2; // @[Cordic_CR.scala 101:4 102:15]
  wire [31:0] _io_cos_T_2 = 32'sh0 - $signed(cordic_unit_io_cos); // @[Cordic_CR.scala 118:15]
  CORDIC_CR_ORIGIN cordic_unit ( // @[Cordic_CR.scala 112:45]
    .clock(cordic_unit_clock),
    .reset(cordic_unit_reset),
    .io_theta(cordic_unit_io_theta),
    .io_sin(cordic_unit_io_sin),
    .io_cos(cordic_unit_io_cos)
  );
  assign io_sin = cordic_unit_io_sin; // @[Cordic_CR.scala 114:10]
  assign io_cos = sigma_cos ? $signed(cordic_unit_io_cos) : $signed(_io_cos_T_2); // @[Cordic_CR.scala 115:18 116:12 118:12]
  assign cordic_unit_clock = clock;
  assign cordic_unit_reset = reset;
  assign cordic_unit_io_theta = _T_2 ? $signed(_real_theta_T_2) : $signed(_GEN_3); // @[Cordic_CR.scala 101:4 103:16]
endmodule
