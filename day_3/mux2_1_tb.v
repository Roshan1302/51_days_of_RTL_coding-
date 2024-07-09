`timescale 1ns / 1ps

module mux2_1_tb();
reg a,b,sel;
wire  y ;

mux_2_1 dut(.a(a),.b(b),.sel(sel),.y(y));

initial 

begin 

a=1;
b=1;
sel=0;
#10

a=1;
b=0;
sel=1;

a=0;
b=1;
sel=0;
#40$finish ;

end 
endmodule
