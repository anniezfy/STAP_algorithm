`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/27 09:14:41
// Design Name: 
// Module Name: Delay_FF
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


module DFFY(
input clk,
input [63:0] shift_x,
output reg [63:0] shift_x17
    );
    
     reg [31:0]  shift_x0,shift_x1,shift_x2,shift_x3,shift_x4,shift_x5,shift_x6,
     shift_x7,shift_x8,shift_x9,shift_x10,shift_x11,shift_x12,shift_x13,shift_x14,
     shift_x15,shift_x16;
   
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
    end
endmodule
