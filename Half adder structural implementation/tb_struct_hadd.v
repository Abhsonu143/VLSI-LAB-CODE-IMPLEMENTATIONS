`timescale 1ns / 1ps
module tb_struct_hadd(
    );
reg a;
reg b;
wire s;
wire cout;

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
 
 halfAdder ha(
    .a(a),
    .b(b),
    .s(s),
    .cout(cout)
 );
endmodule
