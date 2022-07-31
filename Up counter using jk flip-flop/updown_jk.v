`timescale 1ns / 1ps
module upcount_jk(clk, up, q);
    input clk,up;
    output [3:0]q;
    wire q1,q2,q3;
    jkff a(1,1,clk,q[0]);
    ud a1(up,q[0],q1);
    jkff b(1,1,q1,q[1]);
    ud b1(up,q[1],q2);
    jkff c(1,1,q2,q[2]);
    ud c1(up,q[2],q3);
    jkff d(1,1,q3,q[3]);
endmodule