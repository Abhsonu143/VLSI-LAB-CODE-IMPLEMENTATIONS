`timescale 1ns / 1ps

module fullSub(
    input clock,
    input a,
    input b,
    input bin,
    output reg d,
    output reg bout
    );
always @(posedge clock)
    begin
    d <= (a & b & bin)|(a & ~b & ~bin)|(~a & b & ~bin)|(~a & ~b & bin);
    bout <= (~a & b)|(~a & bin)|(b & bin);
    end    
endmodule