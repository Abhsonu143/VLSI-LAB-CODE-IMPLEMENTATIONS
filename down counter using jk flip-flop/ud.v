`timescale 1ns / 1ps
module ud(down, q, c);
    input down,q;
    output c;
    assign c=(down&q)|(~down&~q);
endmodule
