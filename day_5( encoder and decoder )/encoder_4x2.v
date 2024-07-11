`timescale 1ns / 1ps
module encoder_4x2(
//input en,
input [3:0]din,
output reg[1:0]dout 
    );
    always @*
       begin  
           case (din)
                4'b0001 :dout = 2'b00;
                4'b0010 :dout = 2'b01;
                4'b0100 :dout = 2'b10;
                4'b1000 :dout = 2'b11;
            endcase
        end            
                   
  endmodule
