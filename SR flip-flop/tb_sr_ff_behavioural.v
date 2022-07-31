`timescale 1ns / 1ps
module tb_sr_ff_behavioural();
 reg clk;
 reg S;
 reg R;
 wire Q;
 wire QBar;

 sr_ff_behavioural ff (
  .clk(clk),
  .S(S), 
  .R(R),
  .Q(Q), 
  .QBar(QBar)
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
S = 1'b0;
R = 1'b0;
#10;
S = 1'b1;
R = 1'b0;
#10;
S = 1'b0;
R = 1'b1;
#10;
S = 1'b1;
R = 1'b1;
#10;
S = 1'b1;
R = 1'b1;
#10;
S = 1'b1;
R = 1'b0;
#10;
S = 1'b1;
R = 1'b0;
#10;
S = 1'b1;
R = 1'b1;
#10
$finish;
end
      
endmodule