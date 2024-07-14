
`timescale 1ns / 1ns

module TB_D_using_T();
    reg clk,rst,d;
    wire q;
D_using_T dut (  .clk(clk),
            .rst(rst),
            .D(d),
            .q(q));
    always #5 clk=~clk;
    always #9 d=~d;
    initial    
        begin 
            
              rst=1'b1;
              clk =1'b0;
              d = 0;
              #7
              rst=1'b0;
              #30
              rst = 1;
              #10
              rst = 0;
            #40 $finish  ;
        end 
endmodule
