`timescale 1ns / 1ps

module test_cordic_div_2();
reg clk;
reg rst;
// reg [32-1:0]in_1[4-1:0];
// reg [32-1:0]in_2[4-1:0];
wire [64-1:0] out;
reg [64-1:0] in_1;
reg [64-1:0] in_2;
wire valid;

initial       
    begin
    rst=1'b1;
    clk =1'b1;
    // $readmemb("T:/Code/vivadoproject/STAP_v1/data1_r.txt", in_r_1);
    // $readmemb("T:/Code/vivadoproject/STAP_v1/data1_i.txt", in_i_1);
    // $readmemb("T:/Code/vivadoproject/STAP_v1/data2_r.txt", in_r_2);
    // $readmemb("T:/Code/vivadoproject/STAP_v1/data2_i.txt", in_i_2);
     #10 rst=1'b0;
   
    in_1 = 64'b11111111_11111111_11111111_11111111_00000000_00000000_00000000_00000000;
    in_2 = 64'b00000000_00000000_00000000_00000000_10000000_00000000_00000000_00000000;
   
    #690 in_1 = 64'b00000000_00000000_00000000_00000000_01000000_00000000_00000000_00000000;
    end


Cordic_Divide_Top cordic_div(
.clk(clk),
.rst_n(rst),
.x(in_1),
.y(in_2),
.tan(out),
.finished(valid)
);

always
    begin
    #5 clk = ~clk;//每10ns翻转一次
    end

endmodule
