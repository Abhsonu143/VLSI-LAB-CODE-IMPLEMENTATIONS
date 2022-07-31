`timescale 1ns / 1ps
module sipoD (d, clk, q);
    input d,clk;
    output [3:0]q;
    d_ff aa(d, clk, q[3]);
    d_ff bb(q[3], clk, q[2]);
    d_ff cc(q[2], clk, q[1]);
    d_ff dd(q[1], clk, q[0]);
endmodule
