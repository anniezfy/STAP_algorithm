`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/25 15:14:55
// Design Name: 
// Module Name: sim3
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


module sim3();
reg signed [63:0] y,x;
reg  clk;
reg rst_n;

always#5 clk = ~clk;

initial
begin
clk = 1'b1;
rst_n=1'b1;

#10 rst_n = 1'b0;
    y =64'hffffffff80000000;
#10  y =64'h00000000f0000000;
#100 $stop;
end

Shift uut(
.y(y),
.clk(clk),
.rst_n(rst_n),
.shift_num(shift_num),
.newy(newy),
.flag(flag)
    );

endmodule
