`timescale 1ns / 1ps
module tb_demux();

reg [1:0] sel;
reg [3:0] i;
wire [3:0] a;
wire [3:0] b;
wire [3:0] c;
wire [3:0] d;
initial
begin
#100;
sel=2'b00;
i=4'b1010;
#10;
sel=2'b01;
i=4'b1010;
#10;
sel=2'b10;
i=4'b1010;
#10;
sel=2'b11;
i=4'b1010;
#10;
$finish;
end
demux dm1(
.sel(sel),
.i(i),
.a(a),
.b(b),
.c(c),
.d(d)
);
endmodule