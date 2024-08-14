`timescale 1ns / 1ps
module TImer_circuit(
                    input clk ,rst ,
                    output timer_out
                    );
                    reg [3:0]count ;
                    always @(posedge clk ,posedge rst )
                        begin 
                            if (rst)
                                count <= 4'b0000;
                            else 
                                count <= count +1;
                         end 
                     assign timer_out = (count == 4'b1111);    
                     
endmodule
