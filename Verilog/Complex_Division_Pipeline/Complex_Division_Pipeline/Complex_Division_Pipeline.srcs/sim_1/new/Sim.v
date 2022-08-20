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
reg clk,rst_n,start;
reg signed [63:0] a,b,p,q;
wire signed [63:0] Real,Imaginary;
wire finish;
always #(PERIOD/2) clk = ~clk;

initial 
begin
clk = 1;
rst_n = 1;
start = 1'b1;
#10      rst_n = 1'b0;
         p=64'h0000000020000000;
         q =64'h0000000040000000;
         a = 64'h00000000a0000000;
         b=64'h0000000040000000;
  
  /*       //q = 64'hfffffffe00000000;
#30
         p =64'h00000000a0000000;
         q =64'h0000000080000000;
         a = 64'h0000000040000000;
         b=64'h00000000a0000000;

#10
         p =64'h00000000d0000000;
         q =64'h0000000020000000;
         a = 64'h0000000060000000;
         b = 64'h00000000f0000000; 
         
    */     
#10      p =64'h0000000020000000; //0.5
         q =64'h0000000004000000;  //0.0625
         a = 64'h0000000060000000;// 1.5
         b = 64'hfffffffff0000000;       //-0.25    


#10      p =64'hffffffff20000000; //0.5
         q =64'h0000000400000000;  //0.0625
         a = 64'h0000000600000000;
         b = 64'hfffffffff0000000;           
                 
         
#1000 $stop;
       
      
end

Complex_Divide_Top inst1(
.clk(clk),
.rst_n(rst_n),
.a(a),
.b(b),
.p(p),
.q(q),
.start(start),
.Real(Real),
.Imaginary(Imaginary),
.finish(finish)
  );


endmodule
