`timescale 1ns / 1ps

module tb_hs(
    );
reg clk;
reg a;
reg b;
wire diff;
wire bout;

initial
begin
clk = 1'b0;
forever
begin
#5 clk = ~clk;
end
end

initial
begin
#100;
a = 1'b0;
b = 1'b1;
#20;
a = 1'b0;
b = 1'b0;
#20
a = 1'b1;
b = 1'b1;
#20
a = 1'b1;
b = 1'b0;
#20
a = 1'b0;
b = 1'b1;
#20
$finish;
end
halfSub hs(
    .clock(clk),
    .a(a),
    .b(b),
    .diff(diff),
    .bout(bout)
);
endmodule
