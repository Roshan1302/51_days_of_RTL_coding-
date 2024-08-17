`timescale 1ns / 1ps

module posedge_pulse_detector(
input ip ,clk ,rst ,
output out 
    );
    reg q;
    always @(posedge clk,posedge rst )
        begin        
            if (rst )
                q <= 0;
             else 
                q <= ip;       
            end 
            assign out = ~q & ip ;
endmodule
