`timescale 1ns / 1ps

module ram_using_inout_port
(    // 16x8
input wr,cs,clk,
inout [7:0]data,
input [3:0]add);
reg [7:0] mem [15:0];
reg [7:0]d_out;
    assign data = (cs && (!wr))  ? d_out :'hz;
    
    always @(posedge clk  )
    begin 
      if (cs && wr)
      mem[add] <= data ;

    end
    always @(posedge clk  )
    begin 
      if (cs && (!wr))
      d_out <= mem[add] ;

    end
endmodule
