`timescale 1ns / 1ps

module TB_DOWN_CNTR;
    wire [3:0]q;
    reg clk;
    reg rst;
//integer fd;
    DOWN_CNTR DUT(.q(q),.clk(clk),.rst(rst));
    always #5 clk<=~clk;
    initial 
        begin 
            $monitor ($time ,"clk=%b,rst=%b,q=%b",q,clk,rst);
            clk=0;
            rst=1;
            #28
             rst=0;
            #100
            rst=1;
            #14
            rst = 0;
            #60
            $finish ;
        end 
    endmodule
