`timescale 1ns / 1ps
module tb_sipo();
reg clk,d;
wire [3:0]q;
sipoD a(d, clk, q);
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
#10 d=1;
#10 d=0;
#10 d=1;
#10 d=0;
#10 d=1;
#40 $finish;
end 
endmodule