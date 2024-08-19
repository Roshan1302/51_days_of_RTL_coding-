`timescale 1ns / 1ps
module true_dual_port_ram(   //32x8
input clk,wr_a,wr_b,cs_a,cs_b,out_en_a,out_en_b,
input [7:0]d_in_a,d_in_b,
output [7:0]d_out_a,d_out_b,
input [4:0]add_a,add_b);

reg [7:0]mem [31:0];
reg[7:0]tmp_d_out_a;
reg[7:0]tmp_d_out_b;

// port_a

always @(posedge clk )
    begin 
        if (cs_a && wr_a )
              mem[add_a] <= d_in_a ;
        
        else if (cs_a && !wr_a)
            tmp_d_out_a<= mem[add_a]   ;
    end 
assign d_out_a = (cs_a && !wr_a && out_en_a) ? tmp_d_out_a : 'hz;
// port_b

always @(posedge clk )
    begin 
        if (cs_b && wr_b )
              mem[add_b] <= d_in_b ;
        
        else if (cs_b && !wr_b)
            tmp_d_out_b<= mem[add_b]   ;
     end
      
assign d_out_b = (cs_b && !wr_b && out_en_b) ? tmp_d_out_b : 'hz;

endmodule
