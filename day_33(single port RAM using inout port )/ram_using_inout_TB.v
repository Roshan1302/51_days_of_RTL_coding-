`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2024 15:11:11
// Design Name: 
// Module Name: ram_using_inout_TB
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


module ram_using_inout_TB();
reg wr,cs,clk;
wire [7:0]data;
reg [3:0]add;
reg[7:0] d_in;

integer i,j;
assign data =  (wr && cs) ? d_in:'hz;

    ram_using_inout_port dut (.data(data),.clk(clk),.cs(cs),.wr(wr),.add(add));
    
    always #5 clk =~clk;
    
    initial 
    
    begin 
    clk=0;
    cs=0;
    
    #10
    cs=1;
    
        for (i=0;i<16;i=i+1)
            begin 
            wr=1;
            #10 
            add=i;
            d_in=$random;
            
            end 
           #10
            wr = 0;
            for (j=16;j>=0;j=j-1)
            begin 
            #10 
            add=j;
            end 
            #200
            $finish ;
    end    
endmodule
