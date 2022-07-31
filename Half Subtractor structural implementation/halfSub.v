`timescale 1ns / 1ps
module halfSub(
    input a,
    input b,
    output d,
    output bout
    );
wire neg_a;
xor(d,a,b);
not(neg_a,a);
and(bout,neg_a,b);
endmodule
