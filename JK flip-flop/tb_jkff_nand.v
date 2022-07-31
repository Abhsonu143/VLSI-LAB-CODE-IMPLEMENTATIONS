`timescale 1ns / 1ps
module tb_jkff_nand();
 reg clk;
 reg J;
 reg K;
 wire Q;
 wire QBar;

 jk_ff_behavioural ff (
  .clk(clk),
  .J(J), 
  .K(K),
  .Q(Q), 
  .QBar(QBar)
 );
initial
begin
clk=0;
forever #1
clk = ~clk;  
end 

initial
begin
#10;
J = 1'b0;
K = 1'b0;
#10;
J = 1'b1;
K = 1'b0;
#10;
J = 1'b0;
K = 1'b1;
#10;
J = 1'b1;
K = 1'b1;
#10;
J = 1'b1;
K = 1'b1;
#10;
J = 1'b1;
K = 1'b0;
#10;
J = 1'b0;
K = 1'b1;
#10;
J = 1'b1;
K = 1'b1;
#10
$finish;
end
endmodule