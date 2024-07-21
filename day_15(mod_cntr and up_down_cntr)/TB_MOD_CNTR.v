`timescale 1ns / 1ps

module TB_MOD_CNTR;
 wire [3:0]cnt;
 reg clk;
 reg rst;

MOD_CNTR DUT(.cnt(cnt),.clk(clk),.rst(rst));
    always #5 clk<=~clk;
        initial 
            begin 
                clk=0;
                rst=1;
                #10
                rst =0;
                #130
               
                $finish;
             end 
endmodule
