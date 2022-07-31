`timescale 1ns / 1ps
module mux(
input [3:0] in0,
input [3:0] in1,
input [3:0] in2,
input [3:0] in3,
input [1:0]se1,
output reg [3:0] out1
);
always @(se1 or in0 or in1 or in2 or in3)
begin
 case(se1)
 2'b00: out1=in0;
 2'b01: out1=in1;
 2'b10: out1=in2;
 2'b11: out1=in3;
 endcase
end 
 
    
endmodule