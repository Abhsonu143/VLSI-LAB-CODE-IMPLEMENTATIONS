`timescale 1ns / 1ps
module tb_downcount();
reg clk,down;
wire [3:0]q;
downcount_jk u1(clk,down,q);
initial
begin
clk=1'b0;
forever #5 clk=~clk;
end
initial
begin
down=0;
#180 $finish;
end
endmodule
