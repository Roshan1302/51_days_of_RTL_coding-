`timescale 1ns / 1ps

module TB_CLA();
    reg [3:0]a,b;
    wire [4:0] result ; 
    
    CLA dut(.a(a),.b(b),.result(result));
        initial 
            begin 
                a=4'b0000;
                b=4'b1100;
                
                #10
                a=4'b1000;
                b=4'b1110;
                #20
                a=4'b1000;
                b=4'b1100;
                #30
                a=4'b1100;
                b=4'b1100;
                #100 
                $finish;
            end 
endmodule
