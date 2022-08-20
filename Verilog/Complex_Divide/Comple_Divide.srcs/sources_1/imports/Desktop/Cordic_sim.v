`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/14 12:56:57
// Design Name: 
// Module Name: Cordic_sim
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


module Cordic_sim();

parameter PERIOD = 10;
reg clk,rst_n;
reg signed [63:0] a,b,p,q;
wire signed [63:0] Real,Imaginary;

always #(PERIOD/2) clk = ~clk;

initial 
begin
clk = 0;
rst_n = 1;
#100 rst_n =0;
#10 @(posedge clk)
         a = 64'h0000000040000000;
         b =  64'h0000000100000000;
         p = 64'hffffffff80000000;
         q = 64'hffffffff80000000;
         //q = 64'hfffffffe00000000;
         
         
#1000 $stop;
       
      
end

Cordic_Top inst1(
.clk(clk),
.rst_n(rst_n),
.a(a),
.b(b),
.p(p),
.q(q),
.Real(Real),
.Imaginary(Imaginary)
  );


endmodule
