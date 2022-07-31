`timescale 1ns / 1ps
module tb_fullAdder_struct(
    );
reg a;
reg b;
reg cin;
wire s;
wire cout;
    
initial
begin
    #100
    a=1'b0;
    b=1'b0;
    cin=1'b0;
    #10
    a=1'b0;
    b=1'b0;
    cin=1'b1;
    #10
    a=1'b0;
    b=1'b1;
    cin=1'b0;
    #10
    a=1'b0;
    b=1'b1;
    cin=1'b1;
    #10
    a=1'b1;
    b=1'b0;
    cin=1'b0;
    #10
    a=1'b1;
    b=1'b0;
    cin=1'b1;
    #10
    a=1'b1;
    b=1'b1;
    cin=1'b0;
    #10
    a=1'b1;
    b=1'b1;
    cin=1'b1;
    #10
    a=1'b0;
    b=1'b0;
    cin=1'b0;
    #10
    $finish;
end
     
fullAdder fa(
        .a(a),
        .b(b),
        .cin(cin),
        .s(s),
        .cout(cout)
     );
endmodule
