`timescale 1ns / 1ps


module ram_2d_64x32x8(
input clk,cs,wr,
input [7:0] d_in,
input [5:0] add_a,
input [4:0] add_b,
output reg [7:0]d_out
    );
    
    reg [7:0] mem [63:0][31:0];
    
    always @(posedge clk )
    begin 
        if (cs && wr)
        mem[add_a][add_b] <= d_in ;
    end 
    
    always @(posedge clk )
    begin 
        if (cs && ~wr )
        d_out <= mem[add_a][add_b];
    end 
     
endmodule
