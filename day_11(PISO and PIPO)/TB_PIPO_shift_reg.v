`timescale 1ns / 1ps

module TB_PIPO_shift_reg();
    reg clk,rst;
    reg [3:0]pi;
    wire [3:0]po;
    integer i;
PIPO_shift_reg DUT (.clk(clk),.pi(pi),.po(po),.rst(rst));

always #5 clk=~clk;
    initial 
        begin
        rst =1;
        clk = 0 ;
        #9
        rst =0;
        for(i =0;i<10;i=i+1)
            begin #10
                pi = i;
            end 
            $finish;
        end 
endmodule
