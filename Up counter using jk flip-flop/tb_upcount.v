`timescale 1ns / 1ps
module tb_updownjk();
reg clk,up;
wire [3:0]q;
upcount_jk u1(clk,up,q);
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
up=1;
#180
$finish;
end
endmodule
