`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/19 19:19:42
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

reg rst_n;
reg clk;
reg [63:0] x;
reg start;
wire finish;
wire [63:0] square_result;
  
  
 parameter period = 10'd10;
initial
begin
rst_n = 1'b1;
clk =1'b1;
start = 1'b1;
#10 rst_n= 1'b0;
#20 x = 64'h0000000280000000;
end

always #(period/2) clk = ~clk;

Real uut(
.rst_n(rst_n),
.clk(clk),
.x(x),
.start(start),
.finish(finish),
.square_result(square_result)
    );
endmodule
