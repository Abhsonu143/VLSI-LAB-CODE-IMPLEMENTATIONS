`timescale 1ns / 1ps

module sisoD(d, clk, q);
    input d,clk;
    output q;
    wire q1,q2,q3;
    d_ff a(d, clk, q1);
    d_ff b(q1, clk, q2);
    d_ff c(q2, clk, q3);
    d_ff d1(q3, clk, q);
endmodule

