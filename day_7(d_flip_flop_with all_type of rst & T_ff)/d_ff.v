`timescale 1ns / 1ps


module d_ff(
input clk,rst,d,
output reg q
    );
//    always @(posedge clk)                 //sync rst
//  always @(posedge clk, posedge rst)  //async rst active high
//  always @(posedge clk, negedge rst)  //async rst active low
    always @(posedge clk)
     begin 
        if (!rst)  
           q<=1'b0;
        else 
           q<=d;   
     end 
     
endmodule
