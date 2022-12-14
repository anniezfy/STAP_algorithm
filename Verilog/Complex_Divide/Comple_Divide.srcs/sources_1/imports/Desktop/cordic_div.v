`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/05 21:47:06
// Design Name: 
// Module Name: cordic_div
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


module cordic_div(
input 			clk,
input 			rst_n,
input signed[63:0]	y,
input signed[63:0]	x,
input			start,

output 	reg signed[63:0]	tan,
output 			finished
);


parameter pipeline = 16;
parameter K = 32'h09b74;			//0.607253*2^16,

// reg signed [31:0] Sin;
// reg signed [31:0] Cos;
reg signed 	[63:0] 		x_1 =0,y_1 =0;
reg signed 	[63:0] 		x0 =0,y0 =0,z0 =0;
reg signed 	[63:0] 		x1 =0,y1 =0,z1 =0;
reg signed [63:0]  		x2 =0,y2 =0,z2 =0;
reg signed 	[63:0]  		x3 =0,y3 =0,z3 =0;
reg signed [63:0] 		x4 =0,y4 =0,z4 =0;
reg signed 		[63:0] 	x5 =0,y5 =0,z5 =0;
reg signed[63:0] 		x6 =0,y6 =0,z6 =0;
reg signed 	[63:0]  		x7 =0,y7 =0,z7 =0;
reg signed [63:0] 	x8 =0,y8 =0,z8 =0;
reg signed[63:0] 	x9 =0,y9 =0,z9 =0;
reg signed [63:0] 	x10=0,y10=0,z10=0;
reg signed 	[63:0] 	x11=0,y11=0,z11=0;
reg signed [63:0] 	x12=0,y12=0,z12=0;
reg signed [63:0] 	x13=0,y13=0,z13=0;
reg signed[63:0] 		x14=0,y14=0,z14=0;
reg signed [63:0] x15=0,y15=0,z15=0;
reg signed [63:0] 	x16=0,y16=0,z16=0;

reg  [4:0]           count;
reg signed[63:0]	m = 64'h0000000040000000;
wire [1:0]  flag;

reg signed [31:0] shift_x=0,shift_y=0,sub;
reg done=0,done_y =0;

assign  flag[0]=(y[63]==1'b1)?1:0;
assign  flag[1]=(x[63]==1'b1)?1:0;

always@(x)
begin
begin
if(x[63]==1)
x_1 = x*(-1);
else
x_1 = x;
end
shift_x=0;
end

always@(y)
begin
if(y[63]==1)
y_1 = y*(-1);
else
y_1 = y;
shift_y=0;
end



reg [1:0] state =2'b00,state_y = 2'b00;
always@(posedge clk)
begin
if(x_1>0)
begin
case(state)
   2'b00:
   begin
   if(x_1<64'h0000000020000000)//x<0.5
   begin
   x_1=(x_1<<<1); //  shift on left
   shift_x = shift_x + 1'b1; // positive on left negative on right 
   end
   else if(x_1>64'h0000000040000000)
   begin
   x_1=(x_1>>>1); //  shift on right
   shift_x = shift_x - 1'b1;
   end
   else
   state = 2'b01;
   end
   2'b01:
   begin
   state = 2'b01;
   done = 1'b1;
   end
endcase
end

if(y_1>0)
begin
case(state_y)
   2'b00:
   begin
   if(y_1<64'h0000000020000000 && y_1>64'b0)//y<0.5
   begin
   y_1=(y_1<<<1); //  shift on left
   shift_y = shift_y + 1'b1; // positive on left negative on right 
   end
   else if(y_1>64'h0000000040000000)
   begin
   y_1=(y_1>>>1); //  shift on right
   shift_y = shift_y - 1'b1;
   end
   else
   state_y = 2'b01;
   end
   2'b01:
   begin
   state_y = 2'b01;
   done_y =1'b1;
   end
endcase

end

end


always@(posedge clk or negedge rst_n)begin
	if(rst_n)
		count <= 'b0;
	else if(start)begin
		if(count != 5'd18)
			count <= count + 1'b1;
		else 
			count <= count;
	end
end

assign finished = (count == 5'd18)?1'b1:1'b0;

always@(posedge clk or negedge rst_n)begin
	if(rst_n)begin
		x0 <= 'b0;
		y0 <= 'b0;
		z0 <= 'b0;

	end
	else if(done&&done_y)
	begin
		x0 <= x_1;
		y0 <= y_1;
		z0 <= 0;
	end
end 

always@(posedge clk or negedge rst_n)begin//??????????
	if(rst_n)begin
		x1 <= 'b0;
		y1 <= 'b0;
		z1 <= 'b0;
	end
	else if(y0[63]) begin
		x1 <= x0;
		y1 <= y0 + x0;
		z1 <= z0 - m;
	end
	else begin
		x1 <= x0;
		y1 <= y0 - x0;
		z1 <= z0 + m;
	end
end 

always@(posedge clk or negedge rst_n)begin//??????????
	if(rst_n)begin
		x2 <= 'b0;
		y2 <= 'b0;
		z2 <= 'b0;
	end
	else if(y1[63]) begin
		x2 <= x1;
		y2 <= y1 + (x1>>>1);
		z2 <= z1 - (m>>>1);
	end
	else begin
		x2 <= x1;
		y2 <= y1 - (x1>>>1);
		z2 <= z1 + (m>>>1);	
	end
end 

always@(posedge clk or negedge rst_n)begin//??3??????
	if(rst_n)begin
		x3 <= 'b0;
		y3 <= 'b0;
		z3 <= 'b0;
	end
	else if(y2[63]) begin
		x3 <= x2 ;
		y3 <= y2 + (x2>>>2);
		z3 <= z2 - (m>>>2);
	end
	else begin
		x3 <= x2;
		y3 <= y2 - (x2>>>2);
		z3 <= z2 + (m>>>2);	
	end
end 

always@(posedge clk or negedge rst_n)begin//??4??????
	if(rst_n)begin
		x4 <= 'b0;
		y4 <= 'b0;
		z4 <= 'b0;
	end
	else if(y3[63]) begin
		x4 <= x3;
		y4 <= y3 + (x3>>>3);
		z4 <= z3 - (m>>>3);
	end
	else begin
		x4 <= x3;
		y4 <= y3 - (x3>>>3);
		z4 <= z3 + (m>>>3);	
	end
end 

always@(posedge clk or negedge rst_n)begin//??5??????
	if(rst_n)begin
		x5 <= 'b0;
		y5 <= 'b0;
		z5 <= 'b0;
	end
	else if(y4[63]) begin
		x5 <= x4 ;
		y5 <= y4 + (x4>>>4);
		z5 <= z4 - (m>>>4);
	end
	else begin
		x5 <= x4;
		y5 <= y4 - (x4>>>4);
		z5 <= z4 + (m>>>4);	
	end
end 

always@(posedge clk or negedge rst_n)begin//??6??????
	if(rst_n)begin
		x6 <= 'b0;
		y6 <= 'b0;
		z6 <= 'b0;
	end
	else if(y5[63]) begin
		x6 <= x5;
		y6 <= y5 + (x5>>>5);
		z6 <= z5 - (m>>>5);
	end
	else begin
		x6 <= x5;
		y6 <= y5 - (x5>>>5);
		z6 <= z5 + (m>>>5);	
	end
end 

always@(posedge clk or negedge rst_n)begin//??7??????
	if(rst_n)begin
		x7 <= 'b0;
		y7 <= 'b0;
		z7 <= 'b0;
	end
	else if(y6[63]) begin
		x7 <= x6;
		y7 <= y6 + (x6>>>6);
		z7 <= z6 - (m>>>6);
	end
	else begin
		x7 <= x6;
		y7 <= y6 - (x6>>>6);
		z7 <= z6 + (m>>>6);	
	end
end 

always@(posedge clk or negedge rst_n)begin//??8??????
	if(rst_n)begin
		x8 <= 'b0;
		y8 <= 'b0;
		z8 <= 'b0;
	end
	else if(y7[63]) begin
		x8 <= x7;
		y8 <= y7 + (x7>>>7);
		z8 <= z7 - (m>>>7);
	end
	else begin
		x8 <= x7;
		y8 <= y7 - (x7>>>7);
		z8 <= z7 + (m>>>7);	
	end
end 

always@(posedge clk or negedge rst_n)begin//??9??????
	if(rst_n)begin
		x9 <= 'b0;
		y9 <= 'b0;
		z9 <= 'b0;
	end
	else if(y8[63]) begin
		x9 <= x8;
		y9 <= y8 + (x8>>>8);
		z9 <= z8 - (m>>>8);
	end
	else begin
		x9 <= x8;
		y9 <= y8 - (x8>>>8);
		z9 <= z8 + (m>>>8);	
	end
end 

always@(posedge clk or negedge rst_n)begin//??10??????
	if(rst_n)begin
		x10 <= 'b0;
		y10 <= 'b0;
		z10 <= 'b0;
	end
	else if(y9[63]) begin
		x10 <= x9;
		y10 <= y9 + (x9>>>9);
		z10 <= z9 - (m>>>9);
	end
	else begin
		x10 <= x9;
		y10 <= y9 - (x9>>>9);
		z10 <= z9 + (m>>>9);	
	end
end 

always@(posedge clk or negedge rst_n)begin//??11??????
	if(rst_n)begin
		x11 <= 'b0;
		y11 <= 'b0;
		z11 <= 'b0;
	end
	else if(y10[63]) begin
		x11 <= x10;
		y11 <= y10 + (x10>>>10);
		z11 <= z10 - (m>>>10);
	end
	else begin
		x11 <= x10;
		y11 <= y10 - (x10>>>10);
		z11 <= z10 + (m>>>10);	
	end
end 

always@(posedge clk or negedge rst_n)begin//??12??????
	if(rst_n)begin
		x12 <= 'b0;
		y12 <= 'b0;
		z12 <= 'b0;
	end
	else if(y11[63]) begin
		x12 <= x11;
		y12 <= y11 + (x11>>>11);
		z12 <= z11 - (m>>>11);
	end
	else begin
		x12 <= x11;
		y12 <= y11 - (x11>>>11);
		z12 <= z11 + (m>>>11);	
	end
end 

always@(posedge clk or negedge rst_n)
begin//??13??????
	if(rst_n)begin
		x13 <= 'b0;
		y13 <= 'b0;
		z13 <= 'b0;
	end
	else if(y12[63]) begin
		x13 <= x12;
		y13 <= y12 + (x12>>>12);
		z13 <= z12 - (m>>>12);
	end
	else begin
		x13 <= x12;
		y13 <= y12 - (x12>>>12);
		z13 <= z12 + (m>>>12);	
	end
end 

always@(posedge clk or negedge rst_n)begin//??14??????
	if(rst_n)begin
		x14 <= 'b0;
		y14 <= 'b0;
		z14 <= 'b0;
	end
	else if(y13[63]) begin
		x14 <= x13;
		y14 <= y13 + (x13>>>13);
		z14 <= z13 - (m>>>13);
	end
	else begin
		x14 <= x13;
		y14 <= y13 - (x13>>>13);
		z14 <= z13 + (m>>>13);	
	end
end 

always@(posedge clk or negedge rst_n)begin//??15??????
	if(rst_n)begin
		x15 <= 'b0;
		y15 <= 'b0;
		z15 <= 'b0;
	end
	else if(y14[63]) begin
		x15 <= x14;
		y15 <= y14 + (x14>>>14);
		z15 <= z14 - (m>>>14);
	end
	else begin
		x15 <= x14;
		y15 <= y14 - (x14>>>14);
		z15 <= z14 + (m>>>14);	
	end
end 

always@(posedge clk or negedge rst_n)begin//??16??????
	if(rst_n)begin
		x16 <= 'b0;
		y16 <= 'b0;
		z16 <= 'b0;
	end
	else if(y15[63]) begin
		x16 <= x15;
		y16 <= y15 + (x15>>>15);
		z16 <= z15 - (m>>>15);
	end
	else begin
		x16 <= x15;
		y16 <= y15 - (x15>>>15);
		z16 <= z15 + (m>>>15);	
	end
end 

always@(posedge clk)begin
	if(rst_n)begin
		tan <= 'b0;
	end
	else 
    begin
	

	if(shift_y-shift_x<0)
	z16 =  z16<<<(shift_x-shift_y);
	else
	z16 =  z16>>>(shift_y-shift_x);
	
	
	case(flag)
	2'b00:
        tan = z16;
    2'b10:
        tan = z16*(-1);
    2'b11:
        tan = z16;    
    2'b01:
        tan = z16*(-1);        
    endcase
	end
end

endmodule
