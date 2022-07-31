`timescale 1ns / 1ps

module sr_latch_s(
   input S,
   input R,
   output Q,
   output QB
);
//Qn=SR'+R'Q
//Qn'=S'R+S'Q'
wire neg_R,neg_S,a1,a2,a3,a4;
not(neg_R,R);
and(a1,neg_R,Q);
and(a2,S,neg_R);
or(Q,a1,a2);

not(neg_S,S);
and(a3,neg_S,R);
and(a4,neg_S,QB);
or(QB,a3,a4);

endmodule
