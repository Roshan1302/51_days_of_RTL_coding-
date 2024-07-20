`timescale 1ns / 1ps
module UP_CNTR (
    input clk,rst,
    output reg [3:0]q
                 );
always @(posedge clk , posedge rst) // assync rst
//always @(posedge clk) // sync rst
     begin
        if (rst)
           q<=4'b0000;
        else
            q<=q+4'b0001;
     end
endmodule
