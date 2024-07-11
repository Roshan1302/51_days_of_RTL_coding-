`timescale 1ns / 1ps
module priority_encoder_8_3(d_out, d_in);

   output reg [2:0] d_out;
   input [7:0] d_in ;

always @*
    begin 
        casex(d_in)
            8'b00000001 : d_out = 3'b000;
            8'b0000001x : d_out = 3'b001;
            8'b000001xx : d_out = 3'b010;
            8'b00001xxx : d_out = 3'b011;
            8'b0001xxxx : d_out = 3'b100;
            8'b001xxxxx : d_out = 3'b101;
            8'b01xxxxxx : d_out = 3'b110;
            8'b1xxxxxxx : d_out = 3'b111;
        endcase     
    end 
endmodule