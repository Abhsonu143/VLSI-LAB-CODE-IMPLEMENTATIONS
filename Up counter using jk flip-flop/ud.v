`timescale 1ns / 1ps
module ud(up, q, c);
    input up,q;
    output c;
    assign c=(up&q)|(~up&~q);
endmodule