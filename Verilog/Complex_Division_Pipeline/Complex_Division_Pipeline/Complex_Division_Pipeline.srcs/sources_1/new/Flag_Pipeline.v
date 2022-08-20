`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 12:39:46
// Design Name: 
// Module Name: Flag_Pipeline
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Flag_Pipeline(
input clk,
input shift_x,
output reg shift_x34
    );
    
    
 reg  shift_x0,shift_x1,shift_x2,shift_x3,shift_x4,shift_x5,shift_x6,
     shift_x7,shift_x8,shift_x9,shift_x10,shift_x11,shift_x12,shift_x13,shift_x14,
     shift_x15,shift_x16,shift_x17;
 reg shift_x18,shift_x19,shift_x20,shift_x21,shift_x22,shift_x23,shift_x24,shift_x25,shift_x26,shift_x27,shift_x28,shift_x29,shift_x30,shift_x31,shift_x32,shift_x33;
 
   always@(shift_x)
   begin
   shift_x0 <= shift_x;
   end
   
     
    always@(posedge clk)
    begin
    shift_x1 <= shift_x0;
    shift_x2 <= shift_x1;
    shift_x3 <= shift_x2;
    shift_x4 <= shift_x3;
    shift_x5 <= shift_x4;
    shift_x6 <= shift_x5;
    shift_x7 <= shift_x6;
    shift_x8 <= shift_x7;
    shift_x9 <= shift_x8;
    shift_x10 <= shift_x9;
    shift_x11 <= shift_x10;
    shift_x12 <= shift_x11;
    shift_x13 <= shift_x12;
    shift_x14 <= shift_x13;
    shift_x15 <= shift_x14;
    shift_x16 <= shift_x15;
    shift_x17 <= shift_x16;
    shift_x18 <= shift_x17;
    shift_x19 <= shift_x18;
     shift_x20 <= shift_x19;
     shift_x21 <= shift_x20;
     shift_x22 <= shift_x21;
      shift_x23 <= shift_x22;
      shift_x24 <= shift_x23;
      shift_x25 <= shift_x24;
      shift_x26 <= shift_x25;
      shift_x27 <= shift_x26;
      shift_x28 <= shift_x27;
      shift_x29 <= shift_x28;
      shift_x30 <= shift_x29;
      shift_x31 <= shift_x30;
      shift_x32 <= shift_x31;
       shift_x33 <= shift_x32;
       shift_x34 <= shift_x33;
    end
endmodule
