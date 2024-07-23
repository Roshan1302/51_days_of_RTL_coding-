`timescale 1ns / 1ps

module ripple_carry_adder(
        input [3:0]a,b,
        output [4:0]final_sum);
        wire [4:0]ripple_carry;
        wire [3:0]sum;
        assign ripple_carry[0]=1'b0;
    genvar i;
        generate 
            for(i=0;i<4;i=i+1)
                begin 
                    assign{ripple_carry[i+1],sum[i]}= a[i] + b[i] + ripple_carry[i];
                end
        endgenerate
    assign final_sum ={ripple_carry[4], sum};
endmodule
