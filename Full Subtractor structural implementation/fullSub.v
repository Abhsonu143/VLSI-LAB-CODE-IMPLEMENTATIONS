`timescale 1ns / 1ps
module fullSub(
    input a,
    input b,
    input bin,
    output d,
    output bout
    );
wire d1,neg_a,b1,b2,b3;
xor(d1,a,b);
xor(d,d1,bin);
not(neg_a,a);
and(b1,neg_a,b);
and(b2,neg_a,bin);
and(b3,b,bin);
or(bout,b1,b2,b3);
endmodule
