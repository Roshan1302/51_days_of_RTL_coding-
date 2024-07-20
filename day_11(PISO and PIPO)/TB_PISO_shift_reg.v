`timescale 1ns / 1ps
module TB_PISO_shift_reg();
    reg [3:0]d;
    reg clk,sl;
    wire so;
    PISO_shift_reg dut(.clk(clk),.d(d),.mode(sl),.so(so));
    initial 
        begin
            clk=1'b1;
            forever #5 clk=~clk;
        end
    initial 
        begin
            sl=1;
            d=4'b1010;
            #10 
            sl=0;
            #50 
            sl=1;
            d=4'b0110;
            #10
            sl=0;
            #70 
            $finish;
        end
endmodule
