`timescale 1ns / 1ps

module d_latch(
input d ,en,
output reg q
    );
    always @(en,d)
        begin 
           if (en)
              q <=d;
           else 
              q <= q;
        end 
endmodule
