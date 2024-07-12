`timescale 1ns / 1ps
module SR_gated_latch (
            input s,r,en ,
            output reg q,
            output qn );
            
            assign qn = ~q;
            always @(s,r,en)
                begin
                    if (en)
                        begin 
                            case({s,r})
                            2'b00: q = q;
                            2'b01: q = 0;
                            2'b10: q = 1;
                            2'b11: q = 2'bxx; 
                            endcase 
                         end
                     else 
                         q<= 0;      
                end          
endmodule