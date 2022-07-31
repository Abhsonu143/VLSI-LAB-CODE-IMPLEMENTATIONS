`timescale 1ns / 1ps
module tb_sr_latch_b();
        reg S;
        reg R;
        wire Q;
        wire QB;
            
initial
begin
#10;
S = 1'b0;
R = 1'b0;
#10;
S = 1'b1;
R = 1'b0;
#10;
S = 1'b0;
R = 1'b1;
#10;
S = 1'b1;
R = 1'b1;
#10;
S = 1'b0;
R = 1'b0;
#10;
$finish;
end
sr_latch_b l1(
         .R(R),
         .S(S),
         .Q(Q),
         .QB(QB)
             );
endmodule