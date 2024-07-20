`timescale 1ns / 1ps

module PISO_shift_reg(clk,d,mode,so,rst);
input clk,mode,rst;
input [3:0]d;
output so;
reg [3:0]q;
always @(posedge clk)
    begin 
        if(rst)
            q<=4'b0000;
        else if(mode)//loading 
            q<=d;
        else 
            begin//shifting
                q[3]<=d[3];
                q[2]<=q[3];
                q[1]<=q[2];
                q[0]<=q[1];
            end
    end
    assign so=q[0];
endmodule