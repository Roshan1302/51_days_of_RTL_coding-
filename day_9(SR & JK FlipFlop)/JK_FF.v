`timescale 1ns / 1ns
module JK_FF (
            input j,k,clk,rst,
            output reg q,
            output qn );
            
            assign qn = ~q;
            always @(posedge clk)
                begin
                    if (rst) 
                         q<= 0; 
                    else      
                        begin 
                            case({j,k})
                                2'b00: q = q;
                                2'b01: q = 0;
                                2'b10: q = 1;
                                2'b11: q = qn; 
                            endcase 
                         end 
                 end          
endmodule