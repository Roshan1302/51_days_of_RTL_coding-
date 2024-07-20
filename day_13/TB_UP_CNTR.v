`timescale 1ns / 1ps

module TB_UP_CNTR;
 wire [3:0]q;
 reg clk;
 reg rst;

UP_CNTR DUT(.q(q),.clk(clk),.rst(rst));
    always #5 clk<=~clk;
        initial 
            begin 
                clk=0;
                rst=1;
                #10
                rst =0;
                #70
                rst=1;
                #70
                rst =0;
                #40
                $finish;
             end 
endmodule
