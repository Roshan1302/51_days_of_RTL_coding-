`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 10:53:45
// Design Name: 
// Module Name: TB_gated_sr_latch
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


module TB_SR_FF; 
    reg s , r , clk, rst  ;
    wire q , qn;
SR_FF DUT(
         .s(s),
         .r(r),
         .clk(clk),
         .q(q),
         .qn(qn));
         always #5 clk = ~clk;
         initial 
             begin 
                 rst = 1'b1;
                 clk = 1'b0;
                 #10
                 rst=0;
                 s<=0 ; r= 0 ;
                 #10
                 s<=0 ; r<=1 ;
                 #10
                 s<=1 ; r<=0 ;
                 #10
                 s<=1 ; r<=1 ;
                 #10
                 s<=0 ; r<=0 ;
                 #10
                 s<=0 ; r<=1 ;
                 #10
                 s<=1 ; r<=0 ;
                 #10
                 s<=1 ; r<=1 ;
                 
                 #10
                 $finish;
             end
             initial 
                begin 
                    
                    $monitor ("at %0d time || s : %0b | r : %0b | q : %0b | qn : %0b ",$time,s,r,q,qn );
                end 
             
endmodule