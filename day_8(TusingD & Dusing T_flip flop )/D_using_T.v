`timescale 1ns / 1ns

module D_using_T(
input clk,rst,D,
output reg q
    );
    wire T;
always @(posedge clk)
     begin 
        if (rst)  
           q <= 1'b0;
        else if(T)
           q <= ~q;   
        else
           q <= q;  
     end 
     assign T = q ^ D ; 
endmodule
