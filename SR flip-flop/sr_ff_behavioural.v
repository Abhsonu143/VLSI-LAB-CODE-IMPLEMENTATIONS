`timescale 1ns / 1ps

module sr_ff_behavioural(
    input S,
    input R,
    input clk,
    output reg Q,
    output reg QBar
     );
always @(posedge clk)
begin
case({S,R})
0:begin
 Q <= Q;
 QBar <= QBar;
 end
1:begin 
 Q <= 1'b0;
 QBar <= 1'b1;
 end
2:begin
 Q <= 1'b1;
 QBar <= 1'b0;
 end
3:begin
 Q <= 1'b0;
 QBar <= 1'b0;
 end
endcase
end
endmodule