`timescale 1ns / 1ps

module single_port_ram( //32x8
inout [7:0]data,
input [4:0]adder,
input cs,wr,clk 
    );
    reg [7:0]mem[31:0];
    reg [7:0]d_out;
    assign data =(cs && ~wr)?d_out:1'bz;
    
    // write 
    always @ (posedge clk )
    begin
    if(wr && cs )
    mem[adder]<=data;
    end 
     // read 
     always @ (posedge clk )
    begin
    if(~wr && cs )
  d_out<=  mem[adder];
    end 
endmodule
