`timescale 1ns / 1ps

module demux_1x4_using_1x2(
         input din,
         input [1:0]sel,
         output [3:0] dout );
         wire w1,w2;
         demux_1_2 inst1(.i(din),.sel(sel[1]),.y1(w1),.y2(w2));
         demux_1_2 inst2(.i(w1),.sel(sel[0]),.y1(dout[0]),.y2(dout[1]));
         demux_1_2 inst3(.i(w2),.sel(sel[0]),.y1(dout[2]),.y2(dout[3]));

endmodule
