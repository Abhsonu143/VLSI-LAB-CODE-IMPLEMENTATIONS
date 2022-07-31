`timescale 1ns / 1ps

module tb(
    );
    
reg clk;
reg a;
reg b;
reg bin;
wire d;
wire borrow_out;

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
b = 1'b0;
bin = 1'b0;
#20;
a = 1'b0;
b = 1'b0;
bin = 1'b1;
#20
a = 1'b0;
b = 1'b1;
bin = 1'b0;
#20
a = 1'b0;
b = 1'b1;
bin = 1'b1;
#20
a = 1'b1;
b = 1'b0;
bin = 1'b0;
#20
a = 1'b1;
b = 1'b0;
bin = 1'b1;
#20
a = 1'b1;
b = 1'b1;
bin = 1'b0;
#20
$finish;
end
fullSub fa(
    .clock(clk),
    .a(a),
    .b(b),
    .bin(bin),
    .d(d),
    .bout(borrow_out)
);
endmodule
