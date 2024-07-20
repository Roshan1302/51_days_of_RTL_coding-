`timescale 1ns / 1ps
module TB_cnt_no_of_ones();
reg [7:0] in;
wire [3:0] count;
cnt_no_of_ones dut(.in(in),.count(count));
        task t();
            begin
            repeat(5) 
                begin
                    in=$random;
                    #10;
                    in = 8'b11111111;
                    #10;
                end
            end
        endtask
        
         initial 
             begin
                 t();
                 #10
                 $finish;
             end
        endmodule
