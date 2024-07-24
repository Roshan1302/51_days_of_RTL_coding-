`timescale 1ns / 1ps
module CLA(
    input [3:0]a,b,
    output [4:0] result);
    wire [3:0]p_c;
    wire [3:0]g_c;
    wire [3:0]sum;
    wire [4:0]cout;
    assign cout[0] = 1'b0;
    genvar i;
        generate 
            for ( i=0;i<5;i=i+1)
                begin 
                    full_adder f1(.a(a[i]),.b(b[i]),.cin(cout[i]),.cout(),.sum(sum[i]));
                end 
        endgenerate 
    
    genvar j;
            generate 
                for ( j=0;j<5;j=j+1)
                    begin 
                       assign p_c[j]=a[j]^b[j]; 
                       assign g_c[j]=a[j] & b[j]; 
                       assign cout[j+1]=(p_c[j] & cout[j]) | g_c[j]; 
                    end 
            endgenerate 
    assign result = {cout[4],sum };
endmodule

                   