`timescale 1ns / 1ps

module sr_latch_b(
    input S,
    input R,
    output reg Q,
    output reg QB
    );
always @(S,R)
begin 
case({S,R})
0:begin
   Q <= Q;
   QB <= QB;
end
1:begin
   Q <= 1'b0;
   QB <= 1'b1;
end
2:begin
   Q <= 1'b1;
   QB <= 1'b0;
end
3:begin
   Q <= 0;
   QB <= 0;
end
endcase

end
endmodule