`timescale 1ns / 1ps

module TB_half_sub();
reg a,b;
wire diff,bout;

half_substractor DUT(a,b,diff,bout);

    initial 
    begin
        a = 0; b = 0;
        #10
        b = 0; b = 1;
        #10
        a = 1; b = 0;
        #10
        b = 1; b = 1;
        #10
        $finish();
    end
endmodule
