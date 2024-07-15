`timescale 1ns / 1ps

module TB_JK_FF; 
    reg j , k , clk, rst  ;
    wire q , qn;
JK_FF DUT(
         .j(j),
         .k(k),
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
                 j<=0 ; k= 0 ;
                 #10
                 j<=0 ; k<=1 ;
                 #10
                 j<=1 ; k<=0 ;
                 #10
                 j<=1 ; k<=1 ;
                 #10
                 j<=0 ; k<=0 ;
                 #10
                 j<=0 ; k<=1 ;
                 #10
                 j<=1 ; k<=0 ;
                 #10
                 j<=1 ; k<=1 ;
                 
                 #15
                 $finish;
             end
             initial 
                begin 
                    
                    $monitor ("at %0d time || j : %0b | k : %0b | q : %0b | qn : %0b ",$time,j,k,q,qn );
                end 
             
endmodule