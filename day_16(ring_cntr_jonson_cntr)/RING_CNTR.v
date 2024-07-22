`timescale 1ns / 1ps

module RING_CNTR(
input clk ,rst ,
output reg[3:0]cnt
    );
    wire D;
    always @(posedge clk)
       if(rst)
            cnt <= 4'b1000;
        else
            begin
                cnt[3]<=cnt[0];
                cnt[2]<=cnt[3];
                cnt[1]<=cnt[2];
                cnt[0]<=cnt[1];
            end
endmodule