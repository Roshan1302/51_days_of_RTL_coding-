`timescale 1ns / 1ps
module T_using_d_ff(
input clk,rst,T,
output reg q
    );
    wire d;
    always @(posedge clk)
     begin 
        if (rst)  
           q<=1'b0;
        else 
           q<=d;   
     end 
     assign d= T ^ q ;
endmodule
