`timescale 1ns / 1ps


module halfSub(
    input clock,
    input a,
    input b,
    output reg diff,
    output reg bout
    );
always @(posedge clock)
    begin
    diff <= (a & ~b)|(~a & b);
    bout <= ~a & b;
    end    
endmodule