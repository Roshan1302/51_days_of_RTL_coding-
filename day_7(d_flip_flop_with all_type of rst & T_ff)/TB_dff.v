`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2024 10:13:17
// Design Name: 
// Module Name: TB_dff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module TB_dff();
    reg clk,rst,d;
    wire q;
d_ff dut (  .clk(clk),
            .rst(rst),
            .d(d),
            .q(q));
    always #5 clk=~clk;
    always #9 d=~d;
    initial    
        begin 
            $dumpfile("TB_dff.vcd");
            $dumpvars (0,TB_dff);
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
