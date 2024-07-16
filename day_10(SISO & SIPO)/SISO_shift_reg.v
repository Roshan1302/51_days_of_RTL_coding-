`timescale 1ns / 1ps

module SISO_shift_reg( // 4 bit 
        input si,// serial in 
        input clk,rst,
        output so
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
        assign so = temp[0];
endmodule
// else  
//                begin 
//                    temp[3] <= si;
//                    temp <= temp >> 1;
//                end
// The main mistake in the code is related to the 
//order of operations inside the always block.
// When you right shift the temp register (temp <= temp >> 1;),
 // it should happen before you assign si to temp[3]. 
// Otherwise, the value of temp[3] will be shifted out,
//  and the new si value won't propagate correctly through
//   the shift register.               