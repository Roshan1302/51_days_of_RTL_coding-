`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2024 09:12:44
// Design Name: 
// Module Name: mux_4x1_behavioural
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


module mux_4x1_behavioural(
    input i0,i1,i2,i3,
    input [1:0]sel,
    output reg y);
    always @*
            begin
                if(sel==2'b00)
                    y = i0;
                else if(sel==2'b01)
                    y = i1;
                else if (sel==2'b10)
                    y = i2;
                else 
                    y = i3;            
            end 
endmodule
