module TB_non_ovp_1010_moore();
parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
          s4=3'b100;
reg in,clk,rst;
wire out;
non_ovp_1010_moore dut(.clk(clk),.rst(rst),.in(in),.out(out));
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
        in=0;
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
