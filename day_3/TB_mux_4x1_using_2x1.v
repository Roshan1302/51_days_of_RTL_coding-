`timescale 1ns / 1ps

module TB_mux_4x1_using_2x1();
  reg in_0, in_1, in_2, in_3, sel1, sel2;
  wire mux_out;

  mux_4x1_using_2x1 dut (.mux_out(mux_out), .sel1(sel1), .sel2(sel2), .in_0(in_0), .in_1(in_1), .in_2(in_2), .in_3(in_3));
  initial 
      begin
        in_0 = 2'b000;  
        in_1 = 2'b001;
        in_2 = 2'b010;
        in_3 = 2'b011;
        sel1= 1'b0;
        #10;
        sel1= 1'b1;
        #10;
        sel2= 1'b0;
        #10;
        sel2= 1'b1;
        #10;
        $finish;
      end
    
  initial 
      begin
        $monitor("sel1 = %h, sel2 = %h, in_0 = %h, in_1 = %h, in_2 = %h, in_3 = %h --> mux_out = %h",
        sel1, sel2, in_0, in_1, in_2, in_3, mux_out);
       end

endmodule