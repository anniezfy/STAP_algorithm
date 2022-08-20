`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/23 16:47:31
// Design Name: 
// Module Name: sim
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


module sim();


reg						clk;
reg 						rst_n;
reg	 signed [63:0]		x;
reg	signed[63:0]		y;

wire			finished;

wire signed[63:0]	tan;

initial 
begin
clk = 1;
rst_n = 1;

#10      rst_n = 1'b0;
         x =64'h0000000020000000;
         y =64'h0000000040000000;
         
         //q = 64'hfffffffe00000000;
#10  
         y =64'h00000000a0000000;
         x =64'h0000000080000000;

 
         
         
#1000 $stop;
       
      
end



always#5 clk = ~clk;
Cordic_Divide_Top uut(
.clk(clk),
.rst_n(rst_n),
.y(y),
.x(x),
.tan(tan),
.finished(finished)
    );

endmodule
