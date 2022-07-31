`timescale 1ns / 1ps
module jkff(j, k, clk, q);
    input j,k,clk;
    output q;
    reg q=0;
    always @ (negedge clk)
    begin
    if (j==0 && k==0)
    q<=q;
    else if (j==0 && k==1)
    q=0;
    else if (j==1 && k==0)
    q=1;
    else
    q<=~q;
    end
endmodule 