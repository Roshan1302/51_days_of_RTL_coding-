`timescale 1ns / 1ps
module UP_DOWN_CNTR(
    input rst , clk , mode , //(mode is for up or down )
    output reg [3:0]count
    );
    always @(posedge clk)
        begin 
            if (rst)
                count <= 4'b0000;
            else if(mode)
                count <= count +4'b0001;
            else 
                count <= count -4'b0001;    
        end 
endmodule
