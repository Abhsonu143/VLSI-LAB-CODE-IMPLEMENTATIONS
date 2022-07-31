`timescale 1ns / 1ps
module pipoD(d, clk, q);
    input [3:0]d;
input clk;
    output [3:0]q;
    d_ff a(d[3], clk, q[3]);
    d_ff b(d[2], clk, q[2]);
    d_ff c(d[1], clk, q[1]);
    d_ff e(d[0], clk, q[0]);
endmodule