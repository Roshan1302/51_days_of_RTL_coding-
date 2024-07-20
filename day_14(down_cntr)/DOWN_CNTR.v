`timescale 1ns / 1ps

module DOWN_CNTR(q,clk,rst);
    output reg [3:0]q;
    input clk,rst;
    always @(posedge clk)
        begin
            if (rst)
              q<=4'b1111;   
            else
              q<=q-4'b0001;
        end
endmodule

