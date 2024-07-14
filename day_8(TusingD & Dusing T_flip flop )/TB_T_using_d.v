`timescale 1ns / 1ns

module TB_T_using_d();
    reg clk,rst,T;
    wire q;
T_using_d_ff dut (  .clk(clk),
            .rst(rst),
            .T(T),
            .q(q));
    always #5 clk=~clk;
    always #8 T=~T;
    initial    
        begin 
          
              rst=1'b1;
              clk =1'b0;
              T = 0;
              #7
              rst=1'b0;
              #30
              rst = 1;
              #10
              rst = 0;
            #40 $finish  ;
        end 
endmodule