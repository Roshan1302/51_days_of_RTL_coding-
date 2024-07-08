`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.07.2024 08:36:04
// Design Name: 
// Module Name: half_substractor
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


module half_substractor(a,b,diff,bout);
input a,b;
output diff,bout;
 xor(diff,a,b);
 and(bout,~a,b);
 endmodule 
