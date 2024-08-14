`timescale 1ns / 1ps
module load_counter_tb();
reg [3:0]in;
reg clk,rst,load,mode;
wire [3:0]q;

load_counter dut (.clk(clk),.rst(rst),.load(load),.mode(mode),.in(in),.q(q));

always #5clk=~clk;
initial 
    begin
        clk=0;
        rst=1;
        mode=0;
        load=0;
        #10
        rst= 0 ;
        #50
        mode=1;
        #50
        mode = 0 ;
        load=1;
        in = 4'b1110;
        #10
        load = 0;
        rst=0;
        
        #100 
        
        $finish;
    end 
    initial 
        begin
            $monitor("time =%d,clk=%d,rst=%d,load=%d,mode=%d,q=%d", $time, clk,rst,load,mode ,q );
        end 
endmodule
