`timescale 1ns / 1ps
module MOD_CNTR(  // mod_11_cntr
    input clk , rst , 
    output reg[3:0]cnt
    );
    always@(posedge clk)
        begin 
            if(rst)
                cnt <= 4'b0000;
            else if (cnt == 4'b1010)
                cnt <= 4'b0000;
            else 
                cnt <= cnt + 4'b0001;        
        end 
endmodule
