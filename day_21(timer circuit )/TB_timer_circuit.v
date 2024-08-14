`timescale 1ns / 1ps
module TB_timer_circuit();
                    reg clk ,rst ;
                    wire timer_out;
 TImer_circuit DUT(
                    .clk(clk) ,
                    .rst(rst) ,
                    .timer_out(timer_out)
                    );
                    always #5clk = ~clk ;
                    initial 
                        begin 
                            clk = 0;
                            rst = 1;
                            #10 
                            rst = 0;
                            #300
                            $finish;
                        end 
endmodule
