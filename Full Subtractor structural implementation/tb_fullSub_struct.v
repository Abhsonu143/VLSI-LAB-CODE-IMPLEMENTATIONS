`timescale 1ns / 1ps
module tb_fullSub_struct(
    );
reg a;
reg b;
reg bin;
wire d;
wire bout;
    
initial
begin
    #100
    a=1'b0;
    b=1'b0;
    bin=1'b0;
    #10
    a=1'b0;
    b=1'b0;
    bin=1'b1;
    #10
    a=1'b0;
    b=1'b1;
    bin=1'b0;
    #10
    a=1'b0;
    b=1'b1;
    bin=1'b1;
    #10
    a=1'b1;
    b=1'b0;
    bin=1'b0;
    #10
    a=1'b1;
    b=1'b0;
    bin=1'b1;
    #10
    a=1'b1;
    b=1'b1;
    bin=1'b0;
    #10
    a=1'b1;
    b=1'b1;
    bin=1'b1;
    #10
    a=1'b0;
    b=1'b0;
    bin=1'b0;
    #10
    $finish;
end
     
fullSub fs(
        .a(a),
        .b(b),
        .bin(bin),
        .d(d),
        .bout(bout)
     );
endmodule
