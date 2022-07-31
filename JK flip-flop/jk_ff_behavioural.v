`timescale 1ns / 1ps

module jk_ff_behavioural(
    input J,
    input K,
    input clk,
    output reg Q,
    output reg QBar
     );
always @(posedge clk)
begin
case({J,K})
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
 Q <= QBar;
 QBar <= Q;
 end
endcase
end
endmodule