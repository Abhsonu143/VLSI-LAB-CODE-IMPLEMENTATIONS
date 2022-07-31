`timescale 1ns / 1ps
module halfAdder(
    input a,
    input b,
    output s,
    output cout
    );
xor(s,a,b);
and(cout,a,b);
endmodule
