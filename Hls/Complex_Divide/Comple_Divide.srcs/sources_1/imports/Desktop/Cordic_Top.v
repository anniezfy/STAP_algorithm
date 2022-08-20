`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/14 11:44:01
// Design Name: 
// Module Name: Cordic_Top
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


module Cordic_Top(
input clk,
input rst_n,
input signed [63:0] a,b,p,q,
output reg signed [63:0] Real,Imaginary
  );
  
wire start,finished,finished_LV1,finished_LV2,finished_CR;
wire [63:0] mozhi;
wire signed [63:0] angle1,angle,Sin,Cos;
wire signed[63:0] tan_1,tan_2;
assign start =1'b1;

cordic_arctan CV(
.clk(clk),
.rst_n(rst_n),
.x(p),
.y(q),
.start(start),
.angle(angle),
.mozhi(mozhi),
.finished(finished)
);

assign angle1 = (angle >= 64'd0 && angle <= 64'd90 ) ? angle:
                        ((angle >64'd90 && angle <= 64'd180) ? angle-64'd180:
                        ((angle > 64'd180 && angle <= 64'd270)?angle-64'd180:
                        ((angle > 64'd270 && angle <= 64'd360)?angle-64'd360:64'dx)));
  
cordic_div LV_1(
.clk(clk),
.rst_n(rst_n),
.x(mozhi),
.y(a),
.start(finished),
.tan(tan_1),
.finished(finished_LV1)
);

cordic_div LV2(
.clk(clk),
.rst_n(rst_n),
.x(mozhi),
.y(b),
.start(finished),
.tan(tan_2),
.finished(finished_LV2)
);

Cordic_Sin_Cos CR(
.clk(clk),
.rst_n(rst_n),
.angle(angle1),
.start(finished_LV2&finished_LV1),
.Sin(Sin),
.Cos(Cos),
.finished(finished_CR)
 );
 
 
 reg [127:0] tmp_real;
 reg [127:0] tmp_imag;
 
always@(posedge clk)
begin
       if(finished_CR)
       begin
        if(p<0 && q<0)
        begin
           tmp_real = tan_1*(Cos)*(-1)+ tan_2*Sin*(-1);
           Real = {tmp_real [93:62],tmp_real[61:30]};
           tmp_imag = tan_2*(Cos)*(-1)- tan_1*Sin*(-1);
           Imaginary =  {tmp_imag[93:62],tmp_imag[61:30]};
        end
          if(p>0 && q>0)
        begin
           tmp_real = tan_1*(Cos)+ tan_2*Sin;
              Real = {tmp_real [93:62],tmp_real[61:30]};
           tmp_imag =  tan_2*(Cos)- tan_1*(Sin);
            Imaginary =  {tmp_imag[93:62],tmp_imag[61:30]};
        end
         if(p<0 && q>0)
        begin
           tmp_real = tan_1*(Cos)*(-1)+tan_2*(Sin)*(-1);
         Real = {tmp_real [93:62],tmp_real[61:30]};
           tmp_imag = tan_2*Cos*(-1)- tan_1*(Sin)*(-1);
        Imaginary =  {tmp_imag[93:62],tmp_imag[61:30]};
        end
         if(p>0 && q<0)
        begin
           tmp_real = tan_1*(Cos)+tan_2*Sin;
          Real = {tmp_real [93:62],tmp_real[61:30]};
           tmp_imag = tan_2*(Cos)- tan_1*Sin;
             Imaginary =  {tmp_imag[93:62],tmp_imag[61:30]};
        end
       end
end
 
 
 
 
 
 
    
    
endmodule
