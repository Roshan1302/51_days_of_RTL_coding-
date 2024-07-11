`timescale 1ns / 1ps
module tb_decoder_2_4;
    reg [1:0] din;
    reg en;
    wire [3:0] dout;
    
    decoder_2_4 uut(.dout(dout),.din(din),.en(en));
    initial 
        begin
            en=0;
            #10
            en = 1;
            din =2'b00; 
            #20;
            din = 2'b01; 
            #20;
            din = 2'b10; 
            #20;
            din = 2'b11; 
            #20;
            $finish;
        end
endmodule