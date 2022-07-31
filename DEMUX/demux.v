`timescale 1ns / 1ps
module demux(

input [1:0]sel,
input [3:0] i,
output reg [3:0] a,
output reg [3:0] b,
output reg [3:0] c,
output reg [3:0] d
);
always @(sel or i)
begin
if(sel==2'b00)
begin
assign a=i;
assign b=0;
assign c=0;
assign d=0;
end
else if(sel==2'b01)
begin
assign a=0;
assign b=i;
assign c=0;
assign d=0;
end
else if(sel==2'b10)
begin
assign a=0;
assign b=0;
assign c=i;
assign d=0;
end
else if(sel==2'b11)
begin
assign a=0;
assign b=0;
assign c=0;
assign d=i;
end
end
endmodule