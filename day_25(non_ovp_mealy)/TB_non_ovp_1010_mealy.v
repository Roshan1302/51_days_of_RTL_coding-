`timescale 1ns / 1ps
module TB_non_ovp_1010_mealy();
parameter s0=2'b00,
          s1=2'b01,
          s2=2'b10,
          s3=2'b11;
      reg in,clk,rst;
      wire out;
non_ovp_1010_mealy dut(.clk(clk),.rst(rst),.in(in),.out(out));
initial 
    begin
        forever #5 clk=~clk;
    end
initial 
    begin
        clk=0;
        rst=0;
        in=0;
        #10;
        rst=1;
        #10
        in=1;
        #10
        in=0;
        #10
        in=1;
        #10
        in=0;
        #10
        in=1;
        #10
        in=0;
        #10
        in=1;
        #10
        in=0;
        #10
        in=1;
        #10
        in=0;
    end
endmodule
