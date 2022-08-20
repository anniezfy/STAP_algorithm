`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/11 13:48:13
// Design Name: 
// Module Name: Cordic_Sin_Cos
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


module Cordic_Sin_Cos(
input 			clk,
input 			rst_n,
input	[31:0]	angle,
output 	reg signed[63:0]	Sin,
output 	reg signed[63:0]	Cos
    );
    
  
    
parameter angle_0 = 32'd2949120;		//45度*2^16
parameter angle_1 = 32'd1740992;     //26.5651度*2^16
parameter angle_2 = 32'd919872;      //14.0362度*2^16
parameter angle_3 = 32'd466944;      //7.1250度*2^16
parameter angle_4 = 32'd234368;      //3.5763度*2^16
parameter angle_5 = 32'd117312;     //1.7899度*2^16
parameter angle_6 = 32'd58688;      //0.8952度*2^16
parameter angle_7 = 32'd29312;      //0.4476度*2^16
parameter angle_8 = 32'd14656;      //0.2238度*2^16
parameter angle_9 = 32'd7360;      //0.1119度*2^16
parameter angle_10 = 32'd3648;      //0.0560度*2^16
parameter angle_11 = 32'd1856;	    //0.0280度*2^16
parameter angle_12 = 32'd896;      //0.0140度*2^16
parameter angle_13 = 32'd448;      //0.0070度*2^16
parameter angle_14 = 32'd256;      //0.0035度*2^16
parameter angle_15 = 32'd128;      //0.0018度*2^16

parameter pipeline = 16;
parameter K = 32'h09b74;			//0.607253*2^16,

// reg signed [31:0] Sin;
// reg signed [31:0] Cos;

reg signed 	[63:0] 		x0 =0,y0 =0,z0 =0;
reg signed 	[63:0] 	x1 =0,y1 =0,z1 =0;
reg signed [63:0] 		x2 =0,y2 =0,z2 =0;
reg signed 	[63:0]  		x3 =0,y3 =0,z3 =0;
reg signed [63:0] 		x4 =0,y4 =0,z4 =0;
reg signed 	[63:0] 	x5 =0,y5 =0,z5 =0;
reg signed 	[63:0] 	x6 =0,y6 =0,z6 =0;
reg signed 	[63:0]  		x7 =0,y7 =0,z7 =0;
reg signed [63:0]  		x8 =0,y8 =0,z8 =0;
reg signed 	 [63:0] 		x9 =0,y9 =0,z9 =0;
reg signed [63:0] 	x10=0,y10=0,z10=0;
reg signed [63:0] 	x11=0,y11=0,z11=0;
reg signed 	[63:0] 	x12=0,y12=0,z12=0;
reg signed [63:0] 	x13=0,y13=0,z13=0;
reg signed 		[63:0] 	x14=0,y14=0,z14=0;
reg signed [63:0] 		x15=0,y15=0,z15=0;
reg signed [63:0] 		x16=0,y16=0,z16=0;

reg  [4:0]           count;

always@(posedge clk)
begin



end

always@(posedge clk)begin
	if(rst_n)begin
		x0 <= 'b0;
		y0 <= 'b0;
		z0 <= 'b0;

	end
	
	else 
	begin
		x0 <= K;
		y0 <= 64'd0;
		z0 <= angle[31]?(angle*(-1))<<16:angle <<16;
	end
end 

always@(posedge clk)
begin//第一次迭代
	if(rst_n)begin
		x1 <= 'b0;
		y1 <= 'b0;
		z1 <= 'b0;
	end
	else if(z0[31])
	 begin
		x1 <= x0 + y0;
		y1 <= y0 - x0;
		z1 <= z0 + angle_0;
	end
	else 
	 begin
		x1 <= x0 - y0;
		y1 <= y0 + x0;
		z1 <= z0 - angle_0;		
	end
end 

always@(posedge clk or negedge rst_n)begin//第二次迭代
	if(rst_n)begin
		x2 <= 'b0;
		y2 <= 'b0;
		z2 <= 'b0;
	end
	else if(z1[31]) begin
		x2 <= x1 + (y1>>>1);
		y2 <= y1 - (x1>>>1);
		z2 <= z1 + angle_1;
	end
	else 
	begin
		x2 <= x1 - (y1>>>1);
		y2 <= y1 + (x1>>>1);
		z2 <= z1 - angle_1;	
	end
end 

always@(posedge clk or negedge rst_n)begin//第3次迭代
	if(rst_n)begin
		x3 <= 'b0;
		y3 <= 'b0;
		z3 <= 'b0;
	end
	else if(z2[31]) begin
		x3 <= x2 + (y2>>>2);
		y3 <= y2 - (x2>>>2);
		z3 <= z2 + angle_2;
	end
	else 
	begin
		x3 <= x2 - (y2>>>2);
		y3 <= y2 + (x2>>>2);
		z3 <= z2 - angle_2;	
	end
end 

always@(posedge clk or negedge rst_n)begin//第4次迭代
	if(rst_n)begin
		x4 <= 'b0;
		y4 <= 'b0;
		z4 <= 'b0;
	end
	else if(z3[31]) begin
		x4 <= x3 + (y3>>>3);
		y4 <= y3 - (x3>>>3);
		z4 <= z3 + angle_3;
	end
	else 
	begin
		x4 <= x3 - (y3>>>3);
		y4 <= y3 + (x3>>>3);
		z4 <= z3 - angle_3;	
	end
end 

always@(posedge clk or negedge rst_n)begin//第5次迭代
	if(rst_n)begin
		x5 <= 'b0;
		y5 <= 'b0;
		z5 <= 'b0;
	end
	else if(z4[31]) begin
		x5 <= x4 + (y4>>>4);
		y5 <= y4 - (x4>>>4);
		z5 <= z4 + angle_4;
	end
	else 
	begin
		x5 <= x4 - (y4>>>4);
		y5 <= y4 + (x4>>>4);
		z5 <= z4 - angle_4;	
	end
end 

always@(posedge clk or negedge rst_n)begin//第6次迭代
	if(rst_n)begin
		x6 <= 'b0;
		y6 <= 'b0;
		z6 <= 'b0;
	end
	else if(z5[31]) 
	begin
		x6 <= x5 + (y5>>>5);
		y6 <= y5 - (x5>>>5);
		z6 <= z5 + angle_5;
	end
	else 
begin
		x6 <= x5 - (y5>>>5);
		y6 <= y5 + (x5>>>5);
		z6 <= z5 - angle_5;	
	end
end 

always@(posedge clk or negedge rst_n)begin//第7次迭代
	if(rst_n)begin
		x7 <= 'b0;
		y7 <= 'b0;
		z7 <= 'b0;
	end
	else if(z6[31]) begin
		x7 <= x6 + (y6>>>6);
		y7 <= y6 - (x6>>>6);
		z7 <= z6 + angle_6;
	end
	else
	begin
		x7 <= x6 - (y6>>>6);
		y7 <= y6 + (x6>>>6);
		z7 <= z6 - angle_6;	
	end
end 

always@(posedge clk or negedge rst_n)begin//第8次迭代
	if(rst_n)begin
		x8 <= 'b0;
		y8 <= 'b0;
		z8 <= 'b0;
	end
	else if(z7[31]) begin
		x8 <= x7 + (y7>>>7);
		y8 <= y7 - (x7>>>7);
		z8 <= z7 + angle_7;
	end
	else 
	begin
		x8 <= x7 - (y7>>>7);
		y8 <= y7 + (x7>>>7);
		z8 <= z7 - angle_7;	
	end
end 

always@(posedge clk or negedge rst_n)begin//第9次迭代
	if(rst_n)begin
		x9 <= 'b0;
		y9 <= 'b0;
		z9 <= 'b0;
	end
	else if(z8[31]) begin
		x9 <= x8 + (y8>>>8);
		y9 <= y8 - (x8>>>8);
		z9 <= z8 + angle_8;
	end
	else begin
		x9 <= x8 - (y8>>>8);
		y9 <= y8 + (x8>>>8);
		z9 <= z8 - angle_8;	
	end
end 

always@(posedge clk or negedge rst_n)begin//第10次迭代
	if(rst_n)begin
		x10 <= 'b0;
		y10 <= 'b0;
		z10 <= 'b0;
	end
	else if(z9[31]) begin
		x10 <= x9 + (y9>>>9);
		y10 <= y9 - (x9>>>9);
		z10 <= z9 + angle_9;
	end
	else  begin
		x10 <= x9 - (y9>>>9);
		y10 <= y9 + (x9>>>9);
		z10 <= z9 - angle_9;	
	end
end 

always@(posedge clk or negedge rst_n)begin//第11次迭代
	if(rst_n)begin
		x11 <= 'b0;
		y11 <= 'b0;
		z11 <= 'b0;
	end
	else if(z10[31]) begin
		x11 <= x10 + (y10>>>10);
		y11 <= y10 - (x10>>>10);
		z11 <= z10 + angle_10;
	end
	else  begin
		x11 <= x10 - (y10>>>10);
		y11 <= y10 + (x10>>>10);
		z11 <= z10 - angle_10;	
	end
end 

always@(posedge clk or negedge rst_n)begin//第12次迭代
	if(rst_n)begin
		x12 <= 'b0;
		y12 <= 'b0;
		z12 <= 'b0;
	end
	else if(z11[31]) begin
		x12 <= x11 + (y11>>>11);
		y12 <= y11 - (x11>>>11);
		z12 <= z11 + angle_11;
	end
	else begin
		x12 <= x11 - (y11>>>11);
		y12 <= y11 + (x11>>>11);
		z12 <= z11 - angle_11;	
	end
end 

always@(posedge clk or negedge rst_n)begin//第13次迭代
	if(rst_n)begin
		x13 <= 'b0;
		y13 <= 'b0;
		z13 <= 'b0;
	end
	else if(z12[31]) begin
		x13 <= x12 + (y12>>>12);
		y13 <= y12 - (x12>>>12);
		z13 <= z12 + angle_12;
	end
	else  begin
		x13 <= x12 - (y12>>>12);
		y13 <= y12 + (x12>>>12);
		z13 <= z12 - angle_12;	
	end
end 

always@(posedge clk or negedge rst_n)begin//第14次迭代
	if(rst_n)begin
		x14 <= 'b0;
		y14 <= 'b0;
		z14 <= 'b0;
	end
	else if(z13[31]) begin
		x14 <= x13 + (y13>>>13);
		y14 <= y13 - (x13>>>13);
		z14 <= z13 + angle_13;
	end
	else  begin
		x14 <= x13 - (y13>>>13);
		y14 <= y13 + (x13>>>13);
		z14 <= z13 - angle_13;	
	end
end 

always@(posedge clk or negedge rst_n)begin//第15次迭代
	if(rst_n)begin
		x15 <= 'b0;
		y15 <= 'b0;
		z15 <= 'b0;
	end
	else if(z14[31]) begin
		x15 <= x14 + (y14>>>14);
		y15 <= y14 - (x14>>>14);
		z15 <= z14 + angle_14;
	end
	else begin
		x15 <= x14 - (y14>>>14);
		y15 <= y14 + (x14>>>14);
		z15 <= z14 - angle_14;	
	end
end 

always@(posedge clk or negedge rst_n)begin//第16次迭代
	if(rst_n)begin
		x16 <= 'b0;
		y16 <= 'b0;
		z16 <= 'b0;
	end
	else if(z15[31]) begin
		x16 <= x15 + (y15>>>15);
		y16 <= y15 - (x15>>>15);
		z16 <= z15 + angle_15;
	end
	else 
	begin
		x16 <= x15 - (y15>>>15);
		y16 <= y15 + (x15>>>15);
		z16 <= z15 - angle_15;	
	end
end 

always@(posedge clk)begin
	if(rst_n)begin
		Cos <= 'b0;
		Sin <= 'b0;
	end
	else 
	 begin
        Sin = angle[31]?y16*(-1):y16;
        Sin = Sin<<<14;
        Cos = x16;
         Cos = Cos<<<14;
	end
end 


endmodule
