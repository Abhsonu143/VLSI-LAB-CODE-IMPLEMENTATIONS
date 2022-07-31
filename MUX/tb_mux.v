`timescale 1ns / 1ps
module tb_mux();
reg [3:0] in0;
reg [3:0] in1;
reg [3:0] in2;
reg [3:0] in3;
reg [1:0] se1;
wire[3:0] out1;

initial 
begin
#100;
in0=5;
in1=6;
in2=7;
in3=8;
se1=2'b00;
#10;
in0=5;
in1=6;
in2=7;
in3=8;
se1=2'b01;
#10;
in0=5;
in1=6;
in2=7;
in3=8;
se1=2'b10;
#10;
in0=5;
in1=6;
in2=7;
in3=8;
se1=2'b11;
#10;
$finish;
end

mux m(
 .in0(in0),
 .in1(in1),
 .in2(in2),
 .in3(in3),
 .se1(se1),
 .out1(out1)
 );
endmodule