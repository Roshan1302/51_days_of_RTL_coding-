`timescale 1ns / 1ps

module TB_freq_div_by_5();
    reg clk;
    reg rst;
    wire  freq_out;
    freq_div_by_5 DUT(.clk(clk),.rst(rst),.freq_out(freq_out));
    
    always #5 clk = ~clk ;
    initial 
        begin 
            clk =0;
            rst = 1;
            #10 
            rst = 0;
            #200
            $finish ;
        end 
endmodule
