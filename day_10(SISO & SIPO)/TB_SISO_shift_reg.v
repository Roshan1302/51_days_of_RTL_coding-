`timescale 1ns / 1ps
module TB_SISO_shift_reg;
        reg si;// serial in 
        reg clk,rst ;
        wire so;
   SISO_shift_reg DUT( // 4 bit 
        .si(si),// serial in 
        .clk(clk) ,
        .so(so),
        .rst(rst)
                );
       always #5 clk = ~ clk ;         
       initial 
            begin  
                clk = 0;    
                rst = 1;
                
                #29
                rst = 0;
                si=1;
                #9
                si = 0;
                #10
                si=0;
                #10
                si = 1;
                #10
                si=1;
                #10
                si = 1;
                #10
                si = 0;
                #10
                si=0;
                #10
               $finish;
             end         
endmodule
