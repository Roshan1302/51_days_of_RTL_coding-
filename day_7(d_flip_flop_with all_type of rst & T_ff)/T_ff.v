`timescale 1ns / 1ps
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 17:40:27
// Design Name: 
// Module Name: d_filp_flop_asyc_rst
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module T_ff(
input clk,rst,T,
output reg q
    );
always @(posedge clk)
     begin 
        if (rst)  
           q <= 1'b0;
        else if(T &&!rst)
           q <= ~q;   
        else
           q <= q;  
     end 
     
endmodule
