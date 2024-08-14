`timescale 1ns / 1ps

module tb_single_port_memory();

reg clk, wr,en;
reg [3:0] address;
wire [7:0] data;
reg [7:0] tb_temp_data;

single_port_ram dut(.clk(clk),.wr(wr),.en(en),.data(data),.adder(address));

always #10 clk=~clk;

initial
begin
    clk=1'b1;
    en=1'b0;
    wr=1'b1;
    address=4'b0001;
    
    #100
    en=1'b1;
    tb_temp_data=8'b11111111;
end
assign data=(en & wr)?tb_temp_data:'bz;
endmodule
