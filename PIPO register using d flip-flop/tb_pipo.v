`timescale 1ns / 1ps
module tb_pipo();
reg clk;
reg [3:0]d;
wire [3:0]q;
pipoD a(d, clk, q);
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
#10 d=4'b1001;
#10 d=4'b1011;
#10 d=4'b1101;
#10 d=4'b1111;
#10 d=4'b1000;
#20 $finish;
end 
endmodule
