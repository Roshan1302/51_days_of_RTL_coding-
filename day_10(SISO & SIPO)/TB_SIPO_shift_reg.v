`timescale 1ns / 1ps

module TB_SIPO_shift_reg();
            reg si;// serial in 
            reg clk,rst;
            wire [3:0]po;
SIPO_shift_reg DUT( // 4 bit 
        .si(si),// serial in 
        .clk(clk),
        .rst(rst),
        .po(po));
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
