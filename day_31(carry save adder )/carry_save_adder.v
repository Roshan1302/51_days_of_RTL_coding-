`timescale 1ns / 1ps
module carry_save_adder( 

output [5:0] final_result,

input [3:0]x,y,z
);

wire [4:0] ripple_carry;
wire [4:0]save_sum;
wire [4:0]main_sum;
wire [3:0]carry_save;

    genvar i;
    generate 
    for(i=0;i<4;i=i+1)
    begin
    
    full_adder fa_inst(.a(x[i]),.b(y[i]),.cin(z[i]),.cout(carry_save[i]),.sum(save_sum[i]) );
    
    end 
    endgenerate

  genvar j;
    generate 
    for(j=0;j<3;j=j+1)
    begin
    
    full_adder fa_inst(.a(carry_save[j]),.b(save_sum[j+1]),.cin(ripple_carry[j]),.cout(ripple_carry[j+1]),.sum(main_sum[j+1]) );
    
    end 
    endgenerate

    assign ripple_carry[0]=1'b0;
    assign save_sum[4] = 1'b0;
   
   assign main_sum[0] = save_sum[0];  
   assign {ripple_carry[4],main_sum[4]}=ripple_carry[3] + carry_save[3] + save_sum[4];
   assign  final_result = {ripple_carry[4] ,main_sum };
endmodule
