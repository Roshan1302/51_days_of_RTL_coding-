`timescale 1ns / 1ps

module assign_basic_gates(input a_in,
                          input b_in,
                        output and_out, 
                        output or_out,
                        output xor_out,
                        output anot_out, 
                        output bnot_out,
                        output nand_out, 
                        output nor_out,
                        output xnor_out);
    assign and_out=a_in & b_in;
    assign or_out=a_in | b_in;
    assign xor_out=a_in ^ b_in;
    assign anot_out=~a_in;    
    assign bnot_out=~b_in;
    assign nand_out=~(a_in&b_in);
    assign nor_out=~(a_in|b_in);
    assign xnor_out=~(a_in^b_in);

endmodule
