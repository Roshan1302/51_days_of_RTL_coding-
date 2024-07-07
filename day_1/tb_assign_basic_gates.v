`timescale 1ns / 1ps

module tb_assign_basic_gates();
reg a_in, b_in;
wire and_out, or_out, xor_out, anot_out, bnot_out, nand_out, nor_out, xnor_out;

assign_basic_gates inst1 (  .a_in(a_in),
                            .b_in(b_in),
                            .and_out(and_out),
                            .or_out(or_out),
                            .xor_out(xor_out),
                            .anot_out(anot_out),
                            .bnot_out(bnot_out),
                            .nand_out(nand_out),
                            .nor_out(nor_out),
                            .xnor_out(xnor_out));
initial
    begin
        a_in = 0;
        b_in = 0;  
        #15 
        a_in=0;                                                             
        b_in = 1;  
        #15
        a_in=1;
        b_in=0;  
        #15  
        a_in=1;                                                                                                                                                                                       
        b_in=1;
        #15
        $finish;
    end

initial
    begin
        $monitor("T=%0t a=%0b b=%0b and_out=%0b or_out=%0b xor_out=%0b anot_out=%0b bnot_out=%0b nand_out=%0b nor_out=%0b xnor_out=%0b",$time,a_in,b_in,and_out, or_out, xor_out, anot_out, bnot_out, nand_out, nor_out, xnor_out);
 end 
 
endmodule
