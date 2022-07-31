`timescale 1ns / 1ps
module tb_halfSub_struct(
    );
reg a;
reg b;
wire d;
wire bout;

initial
begin
    #100
    a=1'b0;
    b=1'b0;
    #10
    a=1'b0;
    b=1'b1;
    #10
    a=1'b1;
    b=1'b0;
    #10
    a=1'b1;
    b=1'b1;
    #10
    a=1'b0;
    b=1'b0;
    #10
    $finish;
 end
 
 halfSub hs(
    .a(a),
    .b(b),
    .d(d),
    .bout(bout)
 );
endmodule
