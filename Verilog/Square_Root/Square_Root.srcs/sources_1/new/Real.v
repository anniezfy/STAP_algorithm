`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/19 17:28:50
// Design Name: 
// Module Name: Real
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


module Real(
input rst_n,
input clk,
input [63:0] x,
input start,
output reg finish,
output  reg signed [63:0] square_result
    );


reg signed 	[63:0] 		x0 =0,y0 =0;
reg signed 	[63:0] 		x1 =0,y1 =0;
reg signed 	[63:0] 		x2 =0,y2 =0;
reg signed 	[63:0] 		x3 =0,y3 =0;
reg signed 	[63:0] 		x4 =0,y4 =0;
reg signed 	[63:0] 		x5 =0,y5 =0;
reg signed 	[63:0] 		x6 =0,y6 =0;
reg signed 	[63:0] 		x7 =0,y7 =0;
reg signed 	[63:0] 		x8 =0,y8 =0;
reg signed 	[63:0] 		x9 =0,y9 =0;
reg signed 	[63:0] 		x10=0,y10=0;
reg signed 	[63:0] 		x11=0,y11=0;
reg signed 	[63:0] 		x12=0,y12=0;
reg signed 	[63:0] 		x13=0,y13=0;
reg signed 	[63:0] 		x14=0,y14=0;
reg signed 	[63:0] 		x15=0,y15=0;
reg signed 	[63:0] 		x16=0,y16=0;
    
reg done;
reg signed [63:0] x_1;
reg [1:0] state=2'b00;
reg [7:0]shift_x=8'b0;



always@(x)
begin
if(x[63])
x_1 = x*(-1);
else 
x_1 = x;
shift_x=8'b0;
end    
    

always@(posedge clk)
begin
if(start&&x_1>0)
begin
case(state)
2'b00:
begin
if(x_1>=64'h0000000200000000)
begin
    x_1 = x_1>>1;
   shift_x =  shift_x+1;  // right positive
end
else if(x_1<=64'h0000000040000000)
begin
    x_1 = x_1<<1;    // left negative
   shift_x =  shift_x-1;  
end
else
begin
     if( shift_x%2)
     begin
        if(shift_x[63])
        begin
           x_1 = x_1<<1;
          shift_x =  shift_x-1;  
        end
        else
        begin
         x_1 = x_1>>1;
         shift_x =  shift_x+1;   
        end
     end
     state = 2'b01;
 end
end
2'b01:
begin
done = 1'b1;
end
endcase
end

end


always@(posedge clk or negedge rst_n)begin
	if(rst_n)begin
		x0 <= 'b0;
		y0 <= 'b0;
	end
	else if(done)
	begin
		x0 <= x_1+64'h0000000040000000;
		y0 <=  x_1-64'h0000000040000000;
	end
end 


always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x1 <= 'b0;
		y1 <= 'b0;
	end
	else if(y0[63]) begin
		x1 <= x0+y0>>1;
		y1 <= y0 + x0>>1;
	end
	else
	 begin
		x1 <= x0-(y0>>>1);
		y1 <= y0 - (x0>>1);
	end
end 
    
  always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x2 <= 'b0;
		y2 <= 'b0;
	end
	else if(y1[63]) begin
		x2 <= x1+ (y1>>>2);
		y2 <= y1 + (x1>>>2);
	end
	else begin
		x2 <= x1-(y1>>>2);
		y2 <= y1 - (x1>>>2);
	end
end 
 
 
 always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x3<= 'b0;
		y3 <= 'b0;
	end
	else if(y2[63]) begin
		x3 <= x2+(y2>>>3);
		y3 <= y2 + (x2>>>3);
	end
	else begin
	     x3 <= x2-(y2>>>3);
		y3 <= y2 - (x2>>>3);
	end
end    


always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x4<= 'b0;
		y4 <= 'b0;
	end
	else if(y3[63]) begin
		x4 <= x3+(y3>>>3);
		y4 <= y3 + (x3>>>3);
	end
	else begin
	     x4 <= x3-(y3>>>3);
		y4 <= y3 - (x3>>>3);
	end
end    

     always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x5<= 'b0;
		y5 <= 'b0;
	end
	else if(y4[63]) begin
		x5 <= x4+(y4>>>3);
		y5 <= y4 + (x4>>>3);
	end
	else begin
	     x5 <= x4- (y4>>>4);
		y5 <= y4 - (x4>>>4);
	end
end    

always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x6<= 'b0;
		y6 <= 'b0;
	end
	else if(y5[63]) begin
		x6 <= x5+(y5>>>5);
		y6 <= y5 + (x5>>>5);
	end
	else begin
	     x6 <= x5-(y5>>>5);
		y6<= y5 - (x5>>>5);
	end
end    

always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x7<= 'b0;
		y7 <= 'b0;
	end
	else if(y6[63]) begin
		x7 <= x6+ (y6>>>6);
		y7 <= y6 + (x6>>>6);
	end
	else begin
	     x7 <= x6- (y6>>>6);
		y7<= y6 -  (x6>>>6);
	end
end    


always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x8<= 'b0;
		y8 <= 'b0;
	end
	else if(y7[63]) begin
		x8 <= x7+ (y7>>>7);
		y8 <= y7 + (x7>>>7);
	end
	else begin
	    	x8 <= x7- (y7>>>7);
		y8 <= y7 - (x7>>>7);
	end
end    





always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x9<= 'b0;
		y9 <= 'b0;
	end
	else if(y8[63]) begin
		x9 <= x8+ (y8>>>8);
		y9 <= y8 + (x8>>>8);
	end
	else begin
	    x9 <= x8-(y8>>>8);
		y9 <= y8 - (x8>>>8);
	end
end    

always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x10<= 'b0;
		y10<= 'b0;
	end
	else if(y9[63]) begin
		x10<= x9+ (y9>>>9);
		y10<= y9 + (x9>>>9);
	end
	else begin
	    x10<= x9- (y9>>>9);
		y10<= y9 - (x9>>>9);
	end
end   


always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x11<= 'b0;
		y11<= 'b0;
	end
	else if(y10[63]) begin
		x11<= x10+ (y10>>>10);
		y11<= y10 + (x10>>>10);
	end
	else begin
	  	x11<= x10- (y10>>>10);
		y11<= y10 - (x10>>>10);
	end
end   




always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x12<= 'b0;
		y12<= 'b0;
	end
	else if(y11[63]) begin
		x12<= x11+ (y11>>>11);
		y12<= y11 + (x11>>>11);
	end
	else begin
	  	x12<= x11- (y11>>>11);
		y12<= y11 - (x11>>>11);
	end
end   


always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x13<= 'b0;
		y13<= 'b0;
	end
	else if(y12[63]) begin
		x13<= x12+ (y12>>>12);
		y13<= y12 + (x12>>>12);
	end
	else begin
		x13<= x12+ (y12>>>12);
		y13<= y12 + (x12>>>12);
	end
end   


always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x14<= 'b0;
		y14<= 'b0;
	end
	else if(y13[63]) begin
		x14<= x13+ (y13>>>13);
		y14<= y13 + (x13>>>13);
	end
	else begin
		x14<= x13+ (y13>>>13);
		y14<= y13 + (x13>>>13);
	end
end   


always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x15<= 'b0;
		y15<= 'b0;
	end
	else if(y14[63]) begin
		x15<= x14+ (y14>>>14);
		y15<= y14 + (x14>>>14);
	end
	else begin
		x15<= x14+ (y14>>>14);
		y15<= y14 + (x14>>>14);
	end
end   

always@(posedge clk or negedge rst_n)begin//第一次迭代
	if(rst_n)begin
		x16<= 'b0;
		y16<= 'b0;
	end
	else if(y15[63]) begin
		x16<= x15+ (y15>>>15);
		y16<= y15 + (x15>>>15);
	end
	else begin
		x16<= x15+ (y15>>>15);
		y16<= y15 + (x15>>>15);
	end
end   
reg signed [63:0] temp,temp1,temp2,temp3,temp4;

always@(x16)
begin
 temp = x16>>>3;
 temp1 = x16>>>4;
 temp2 = x16>>>7;
  temp3 = x16>>>8;
 temp4= (temp+temp1+temp2+temp3*5+x16)>>>1;

 if(shift_x[7])
 begin
  square_result= temp4>>>(shift_x*(-1)/2);
 end
 else
  begin
 square_result = temp4<<(shift_x/2);
 end
   finish = 1'b1;
end
    
endmodule
