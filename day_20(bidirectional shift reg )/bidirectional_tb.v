`timescale 1ns / 1ps

module bidirectional_tb();
reg  clk,direction ,si_right,si_left;   
wire [3:0] out;

bidirectional_shift_register dut( .si_right(si_right),.si_left(si_left),.clk(clk),.direction(direction),.out(out));
always #5clk=~clk;

                initial begin
                

                clk=0;
                #10
                direction =1;
                si_left<=0;
                
                #10
                si_left<=1;
                
                #10
                si_left<=0;
                
                #10
                si_left<=0;
                
                #10
                si_left<=1;
                
                #10
                si_left<=0;
                #10
                
                direction =0;
                si_right<=0;
                
                #10
                si_right<=1;
                
                #10
                si_right<=0;
                
                #10
                si_right<=0;
                
                #10
                si_right<=1;
                
                #10
                si_right<=0;
                #200
                $finish;
                end 
endmodule
