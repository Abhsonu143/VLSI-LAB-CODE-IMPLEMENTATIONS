`timescale 1ns / 1ps
module sr_ff_behavioural(
    input clk,
    input S,
    input R,
    output Q,
    output Qbar
    );
 reg M,N;

always @(posedge clk) begin
 M <= !(S & clk);
 N <= !(R & clk);
end
assign Q = !(M & Qbar);
assign Qbar = !(N & Q);
endmodule
