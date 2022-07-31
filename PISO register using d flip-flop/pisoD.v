`timescale 1ns / 1ps
module pisoD(d, clk, sl, q);
    input [3:0]d;
input clk,sl;
    output q;
    wire q1,q2,q3,d1,d2,d3;
    d_ff a(d[3],clk,q1);
    sl a1(q1,d[2],sl,d1);
    d_ff b(d1,clk,q2);
    sl b1(q2,d[1],sl,d2);
    d_ff c(d2,clk,q3);
    sl c1(q3,d[0],sl,d3);
    d_ff e(d3,clk,q);
endmodule
