`timescale 1ns / 1ns


module TB_SR_latch; 
    reg s,r;
    wire q , qn;
SR_latch DUT(
         .s(s),
         .r(r),
         .q(q),
         .qn(qn));
         initial 
             begin 
             $display("----------using nor ---------");
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
