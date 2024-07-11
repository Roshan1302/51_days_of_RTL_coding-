`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2024 21:54:56
// Design Name: 
// Module Name: demux_1x4
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


module demux_1x4(
         input din,
         input [1:0]sel,
         output reg [3:0] dout );
         always@*
            begin 
                case(sel)
                    2'b00 :begin 
                            dout[0] = din ; 
                            dout[3:1]= 0;
                           end 
                    2'b01 : begin 
                                dout[1] = din ; 
                                {dout[0],dout[2],dout[3]}= 0;
                             end 
                    2'b10 : begin 
                                dout[2] = din ; 
                                {dout[0],dout[1],dout[3]}= 0;
                             end  
                    2'b11 : begin 
                                dout[3] = din ; 
                                {dout[0],dout[1],dout[2]}= 0;
                             end 
                 endcase 
            end 
endmodule
