`timescale 1ns / 1ps
module demux_tb_1_2();
reg i,sel;
wire y1,y2;

demux_1_2 dut (.i(i),.sel(sel),.y1(y1),.y2(y2));

initial 
begin 
i=0;
sel =0;
#10

i=1;
sel =0;
#10

i=0;
sel =1;
#10

i=1;
sel =1;
#50 $finish;
end 

endmodule
