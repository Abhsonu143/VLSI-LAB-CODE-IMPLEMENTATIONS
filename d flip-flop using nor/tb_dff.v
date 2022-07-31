`timescale 1ns / 1ps
module tb_dff();
 reg clk;
 reg D;
 wire Q;
 wire Qbar;
d_ff_nor d(
  .clk(clk),
  .D(D), 
  .Q(Q), 
  .Qbar(Qbar)
 );
initial
begin
clk=0;
forever #10
clk = ~clk;  
end 

initial
begin
#10;
D = 1'b0;
#10;
D = 1'b1;
#10;
D = 1'b1;
#10
D = 1'b0;
#10;
D = 1'b1;
#10
$finish;
end
endmodule
