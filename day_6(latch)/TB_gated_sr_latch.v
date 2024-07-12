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


module TB_gated_sr_latch;
            reg s,r,en ;
            wire q;
            wire qn;
SR_gated_latch DUT(
             .s(s),
             .r(r),
             .en(en) ,
            .q(q),
            .qn(qn) );
            initial 
             begin 
                 en= 0 ;
                 #10
                 en = 1;
                 s<=0 ; r<= 0 ;
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
