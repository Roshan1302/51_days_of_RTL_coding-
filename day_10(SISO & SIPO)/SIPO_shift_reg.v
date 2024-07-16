`timescale 1ns / 1ps

module SIPO_shift_reg( // 4 bit 
        input si,// serial in 
        input clk,rst,
        output [3:0]po
    );
    reg [3:0]temp;
    always@(posedge clk, posedge rst)
        begin    
            if(rst)   
                temp <= 4'b0000;
            else  
                begin 
                    temp = temp >> 1;
                    temp[3] <= si;
                      //temp <= {si, temp[3:1]}; 
                end  
        end         
        assign po = temp;
endmodule