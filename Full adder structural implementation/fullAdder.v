`timescale 1ns / 1ps
module fullAdder(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
wire s1,c1,c2;
xor(s1,a,b);
xor(s,s1,cin);
and(c1,a,b);
and(c2,cin,s1);
or(cout,c1,c2);
endmodule
