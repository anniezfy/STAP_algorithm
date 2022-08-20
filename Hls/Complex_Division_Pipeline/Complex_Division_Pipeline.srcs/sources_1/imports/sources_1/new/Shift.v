`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/25 14:24:56
// Design Name: 
// Module Name: Shift
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


module Shift(
input signed [63:0] y,
input  clk,
input rst_n,
output reg signed [31:0] shift_num,
output reg signed [63:0] newy,
output flag
    );
    
 reg signed[63:0] y0;	
wire signed[63:0]	y_1,y_2,y_3,y_4,y_5,y_6,y_7,y_8,y_9,y_10,y_11,y_12,y_13,y_14,y_15,
                    y_16,y_17,y_18,y_19,y_20,y_21,y_22,y_23,y_24,y_25,y_26,y_27,y_28,y_29,
                    y_30;
wire signed[63:0]	y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,
                    y16,y17,y18,y19,y20,y21,y22,y23,y24,y25,y26,y27,y28,y29,
                    y30,y31,y32,y33,y34;                   

assign flag = y[63];
always@(y)
begin
if(y[63]==1)
y0 = y*(-1);
else
y0 = y;
end

assign y_1 =  y0<<<1;
assign y_2 =  y0<<<2;
assign y_3 =  y0<<<3;
assign y_4 =  y0<<<4;
assign y_5 =  y0<<<5;
assign y_6 =  y0<<<6;
assign y_7 =  y0<<<7;
assign y_8 =  y0<<<8;
assign y_9 =  y0<<<9;
assign y_10 =  y0<<<10;
assign y_11 =  y0<<<11;
assign y_12 =  y0<<<12;
assign y_13 =  y0<<<13;
assign y_14 =  y0<<<14;
assign y_15 =  y0<<<15;
assign y_16 =  y0<<<16;
assign y_17 =  y0<<<17;
assign y_18 =  y0<<<18;
assign y_19 =  y0<<<19;
assign y_20 =  y0<<<20;
assign y_21 =  y0<<<21;
assign y_22 =  y0<<<22;
assign y_23 =  y0<<<23;
assign y_24 =  y0<<<24;
assign y_25 =  y0<<<25;
assign y_26 =  y0<<<26;
assign y_27 =  y0<<<27;
assign y_28 =  y0<<<28;
assign y_29 =  y0<<<29;
assign y_30 =  y0<<<30;

assign y1 =  y0>>>1;
assign y2 =  y0>>>2;
assign y3 =  y0>>>3;
assign y4 =  y0>>>4;
assign y5 =  y0>>>5;
assign y6 =  y0>>>6;
assign y7 =  y0>>>7;
assign y8 =  y0>>>8;
assign y9 =  y0>>>9;
assign y10 =  y0>>>10;
assign y11 =  y0>>>11;
assign y12 =  y0>>>12;
assign y13 =  y0>>>13;
assign y14 =  y0>>>14;
assign y15 =  y0>>>15;
assign y16 =  y0>>>16;
assign y17 =  y0>>>17;
assign y18 =  y0>>>18;
assign y19 =  y0>>>19;
assign y20 =  y0>>>20;
assign y21 =  y0>>>21;
assign y22 =  y0>>>22;
assign y23 =  y0>>>23;
assign y24 =  y0>>>24;
assign y25 =  y0>>>25;
assign y26 =  y0>>>26;
assign y27 =  y0>>>27;
assign y28 =  y0>>>28;
assign y29 =  y0>>>29;
assign y30 =  y0>>>30;
assign y31 =  y0>>>31;
assign y32 =  y0>>>32;
assign y33 =  y0>>>33;
assign y34 =  y0>>34;  



always@(posedge clk)
if(rst_n)
begin
shift_num <= 32'b0;
newy <= 32'b0;
end
else
begin
shift_num = 32'b0;
if(y_1>=64'h0000000020000000&&y_1<=64'h0000000040000000)
begin
shift_num = shift_num + 1'b1;
newy = y_1;
end
else if(y_2>=64'h0000000020000000&&y_2<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd2;
newy = y_2;
end
else if(y_3>=64'h0000000020000000&&y_3<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd3;
newy = y_3;
end
else if(y_4>=64'h0000000020000000&&y_4<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd4;
newy = y_4;
end
else if(y_5>=64'h0000000020000000&&y_5<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd5;
newy = y_5;
end
else if(y_6>=64'h0000000020000000&&y_6<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd6;
newy = y_6;
end
else if(y_7>=64'h0000000020000000&&y_7<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd7;
newy = y_7;
end
else if(y_8>=64'h0000000020000000&&y_8<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd8;
newy = y_8;
end
else if(y_9>=64'h0000000020000000&&y_9<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd9;
newy = y_9;
end
else if(y_10>=64'h0000000020000000&&y_10<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd10;
newy = y_10;
end
else if(y_11>=64'h0000000020000000&&y_11<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd11;
newy = y_11;
end
else if(y_12>=64'h0000000020000000&&y_12<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd12;
newy = y_12;
end
else if(y_13>=64'h0000000020000000&&y_13<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd13;
newy = y_13;
end
else if(y_14>=64'h0000000020000000&&y_14<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd14;
newy = y_14;
end
else if(y_15>=64'h0000000020000000&&y_15<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd15;
newy = y_15;
end
else if(y_16>=64'h0000000020000000&&y_16<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd16;
newy = y_16;
end
else if(y_17>=64'h0000000020000000&&y_17<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd17;
newy = y_17;
end
else if(y_18>=64'h0000000020000000&&y_18<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd18;
newy = y_18;
end
else if(y_19>=64'h0000000020000000&&y_19<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd19;
newy = y_19;
end
else if(y_20>=64'h0000000020000000&&y_20<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd20;
newy = y_20;
end
else if(y_21>=64'h0000000020000000&&y_21<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd21;
newy = y_21;
end
else if(y_22>=64'h0000000020000000&&y_22<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd22;
newy = y_22;
end
else if(y_23>=64'h0000000020000000&&y_23<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd23;
newy = y_23;
end
else if(y_24>=64'h0000000020000000&&y_24<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd24;
newy = y_24;
end
else if(y_25>=64'h0000000020000000&&y_25<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd25;
newy = y_25;
end
else if(y_26>=64'h0000000020000000&&y_26<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd26;
newy = y_26;
end
else if(y_27>=64'h0000000020000000&&y_27<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd27;
newy = y_27;
end
else if(y_28>=64'h0000000020000000&&y_28<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd28;
newy = y_28;
end
else if(y_29>=64'h0000000020000000&&y_29<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd29;
newy = y_29;
end
else if(y_30>=64'h0000000020000000&&y_30<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd30;
newy = y_30;
end
if(y1>=64'h0000000020000000&&y1<=64'h0000000040000000)
begin
shift_num = shift_num - 1'b1;
newy = y1;
end
else if(y2>=64'h0000000020000000&&y2<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd2;
newy = y2;
end
else if(y3>=64'h0000000020000000&&y3<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd3;
newy = y3;
end
else if(y4>=64'h0000000020000000&&y4<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd4;
newy = y4;
end
else if(y5>=64'h0000000020000000&&y5<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd5;
newy = y5;
end
else if(y6>=64'h0000000020000000&&y6<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd6;
newy = y6;
end
else if(y7>=64'h0000000020000000&&y7<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd7;
newy = y7;
end
else if(y8>=64'h0000000020000000&&y8<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd8;
newy = y8;
end
else if(y9>=64'h0000000020000000&&y9<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd9;
newy = y9;
end
else if(y10>=64'h0000000020000000&&y10<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd10;
newy = y10;
end
else if(y11>=64'h0000000020000000&&y11<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd11;
newy = y11;
end
else if(y12>=64'h0000000020000000&&y12<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd12;
newy = y12;
end
else if(y13>=64'h0000000020000000&&y13<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd13;
newy = y13;
end
else if(y14>=64'h0000000020000000&&y14<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd14;
newy = y14;
end
else if(y15>=64'h0000000020000000&&y15<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd15;
newy = y15;
end
else if(y16>=64'h0000000020000000&&y16<=64'h0000000040000000)
begin
shift_num = shift_num -32'd16;
newy = y16;
end
else if(y17>=64'h0000000020000000 &&y17<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd17;
newy = y17;
end
else if(y18>=64'h0000000020000000&&y18<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd18;
newy = y_18;
end
else if(y19>=64'h0000000020000000&&y19<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd19;
newy = y19;
end
else if(y20>=64'h0000000020000000&&y20<=64'h0000000040000000)
begin
shift_num = shift_num -32'd20;
newy = y20;
end
else if(y21>=64'h0000000020000000&&y21<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd21;
newy = y21;
end
else if(y22>=64'h0000000020000000&&y22<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd22;
newy = y22;
end
else if(y23>=64'h0000000020000000&&y23<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd23;
newy = y23;
end
else if(y24>=64'h0000000020000000&&y24<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd24;
newy = y24;
end
else if(y25>=64'h0000000020000000&&y25<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd25;
newy = y25;
end
else if(y26>=64'h0000000020000000&&y26<=64'h0000000040000000)
begin
shift_num = shift_num -32'd26;
newy = y26;
end
else if(y27>=64'h0000000020000000&&y27<=64'h0000000040000000)
begin
shift_num = shift_num + 32'd27;
newy = y27;
end
else if(y28>=64'h0000000020000000&&y28<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd28;
newy = y28;
end
else if(y29>=64'h0000000020000000&&y29<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd29;
newy = y29;
end
else if(y30>=64'h0000000020000000&&y30<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd30;
newy = y30;
end
else if(y31>=64'h0000000020000000&&y31<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd31;
newy = y31;
end
else if(y32>=64'h0000000020000000&&y32<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd32;
newy = y32;
end
else if(y33>=64'h0000000020000000&&y33<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd33;
newy = y33;
end
else if(y34>=64'h0000000020000000&&y34<=64'h0000000040000000)
begin
shift_num = shift_num - 32'd34;
newy = y34;
end
end
  
endmodule

