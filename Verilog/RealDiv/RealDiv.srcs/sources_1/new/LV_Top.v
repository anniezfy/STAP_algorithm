`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/25 17:19:26
// Design Name: 
// Module Name: LV_Top
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/07/25 16:33:07
// Design Name: 
// Module Name: Cordic_Divide_Top
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


module Cordic_Divide_Top(
input 			clk,
input 			rst_n,
input signed[63:0]	y,
input signed[63:0]	x,
output 	signed[63:0] tan,
output 	finished
    );

wire signed [31:0] shift_num_x,shift_num_y;
wire signed [63:0] newx,newy;
wire flagx,flagy;

Shift  shift_x(
.y(y),
.clk(clk),
.rst_n(rst_n),
.shift_num(shift_num_x),
.newy(newx),
.flag(flagx)
    );
    
Shift  shift_y(
.y(x),
.clk(clk),
.rst_n(rst_n),
.shift_num(shift_num_y),
.newy(newy),
.flag(flagy)
    );

cordic_div divide(
.clk(clk),
.rst_n(rst_n),
.y(y),
.x(x),
.shift_x(shift_num_x),
.shift_y(shift_num_y),
.flag_y(flagy),
.flag_x(flagx),
.tan(tan),
.finished(finished)
);    
    
endmodule

