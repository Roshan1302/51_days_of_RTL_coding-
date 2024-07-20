`timescale 1ns / 1ps
module PIPO_shift_reg(clk,pi,mode,po,rst);
input clk,mode,rst;
input [3:0]pi;
output reg [3:0]po;

always @(posedge clk)
    begin 
        if(rst)
            po<=4'b0000;
        else 
            po=pi;
    end
endmodule