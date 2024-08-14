`timescale 1ns / 1ps

module load_counter(
 input [3:0]in,
 input clk,rst,load,mode,
 output reg [3:0]q
    );
    always @(posedge clk)
    begin 
     if(rst)
        q<=4'b0000;
     else if(load) 
        q<=in;
     else 
         begin
           if(mode )
               q<=q+1;
           else 
                q<=q-1;
         end
    end 
endmodule
