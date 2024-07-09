`timescale 1ns / 1ps

module mux_4_1_using_2x1(mux_out,sel1,sel2,in_0,in_1,in_2,in_3);
    input sel1,sel2,in_0,in_1,in_2,in_3;
    output mux_out;
    wire w1,w2;
      mux_2_1 mux_inst0 (.i0(in_0), .i1(in_1), .sel(sel1), .y(w1));
      mux_2_1 mux_inst1 (.i0(in_2), .i1(in_3), .sel(sel1), .y(w2));
      mux_2_1 mux_inst2 (.i0(w1), .i1(w2), .sel(sel2), .y(mux_out));
endmodule