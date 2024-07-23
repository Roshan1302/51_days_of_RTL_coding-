`timescale 1ns / 1ps
module TB_RIPPLE_CARRY_ADDER();
    reg [3:0]a,b;
    wire [4:0]final_sum;
    integer i;
ripple_carry_adder DUT (.a(a),.b(b),.final_sum(final_sum));
    initial 
        begin
            for (i=180;i<200;i=i+1)
                begin 
                     #10
                     {a,b}=i;
                 end  
            #10
              $finish;
         end
endmodule
