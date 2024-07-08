`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2024 08:54:52
// Design Name: 
// Module Name: TB_full_sub
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


module TB_full_sub();
 reg a,b,bin;
 wire diff,bout;
 
 full_sub DUT(a,b,bin,diff,bout);
     initial 
         begin
            a = 0; b = 0; bin = 0;
            #10
            a = 0; b = 0; bin = 1;
            #10
            a = 0; b = 1; bin = 0;
            #10
            a = 0; b = 1; bin = 1;
            #10
            a = 1; b = 0; bin = 0;
            #10
            a = 1; b = 0; bin = 1;
            #10
            a = 1; b = 1; bin = 0;
            #10
            a = 1; b = 1; bin = 1;
            #10
            $finish();
        end
endmodule
