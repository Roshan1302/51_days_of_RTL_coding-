`timescale 1ns / 1ps
module decoder_2_4(dout, din ,en);
    input [1:0] din ;
    input en;
    output reg [3:0]dout;
    
    always @*
        begin
            if (en)
                begin
                    case(din)
                        2'b00 : dout =4'b0001;
                        2'b01 : dout =4'b0010;
                        2'b10 : dout =4'b0100;
                        2'b11 : dout =4'b1000; 
                    endcase
                end
            else 
                dout = 'hz;
        end        
endmodule