`timescale 1ns / 1ps
module demux_1x4_behavioural(
            input din,
            input [1:0]sel,
            output reg [3:0] dout 
    );
    always@(sel,din)
        begin 
            if (sel==2'b00)
                begin 
                    dout[0] = din ; 
                    {dout[1],dout[2],dout[3]}= 3'b000;
                end     
           else if (sel==2'b01)
                begin 
                    dout[1] = din ; 
                    {dout[0],dout[2],dout[3]}= 3'b000;
                end   
             else if (sel==2'b10)
                begin 
                    dout[2] = din ; 
                    {dout[0],dout[1],dout[3]}= 3'b000;
                end 
             else 
                begin 
                    dout[3] = din ; 
                    {dout[0],dout[1],dout[2]}= 0;
                end          
         end 
endmodule
