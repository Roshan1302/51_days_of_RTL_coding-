`timescale 1ns / 1ps
module TB_JONSON_CNTR();

reg clk ,rst ;
wire[3:0]cnt;
   
 JONSON_CNTR DUT(
           .clk(clk) ,
           .rst(rst) ,
           .cnt(cnt)
          );
          always #5 clk = ~clk ;
          initial 
            begin 
                clk = 0;
                rst = 1;
                #9
                rst = 0;
                #100
                $finish;
            end 
          
endmodule
