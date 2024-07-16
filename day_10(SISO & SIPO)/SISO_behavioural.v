`timescale 1ns / 1ps

module SISO_behavioural( // 4 bit 
        input si,// serial in 
        input clk,rst,
        output so
            );
      wire q1,q2,q3;
      d_ff inst_1(.clk(clk),.rst(rst),.d(si),.q(q1));      
      d_ff inst_2(.clk(clk),.rst(rst),.d(q1),.q(q2));      
      d_ff inst_3(.clk(clk),.rst(rst),.d(q2),.q(q3));      
      d_ff inst_4(.clk(clk),.rst(rst),.d(q3),.q(so));      
endmodule
