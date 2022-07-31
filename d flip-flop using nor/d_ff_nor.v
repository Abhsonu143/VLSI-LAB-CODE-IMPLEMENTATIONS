`timescale 1ns / 1ps

module d_ff_nor(
    input D,
    input clk,
    output reg Q,
    output reg Qbar
     );
always @(posedge clk)
begin
case({D,~D})
1:begin 
 Q <= 1'b0;
 Qbar <= 1'b1;
 end
2:begin
 Q <= 1'b1;
 Qbar <= 1'b0;
 end
endcase
end
endmodule