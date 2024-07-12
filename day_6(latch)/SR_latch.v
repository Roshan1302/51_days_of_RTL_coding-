`timescale 1ns / 1ns

module SR_latch(
input s,r,
output q,qn);
//wire q=0, qn = 1;
nor (q ,r , qn);
nor (qn ,s , q);
endmodule
