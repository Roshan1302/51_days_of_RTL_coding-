`timescale 1ns / 1ps

module basic_logic_gates(input a_in,
                         input b_in,
                         output and_out, 
                         output or_out,
                         output xor_out,
                         output anot_out,
                         output bnot_out,
                         output nand_out,
                         output nor_out, xnor_out);
                and (and_out,a_in,b_in);
                or (or_out,a_in,b_in);
                xor (xor_out,a_in,b_in);
                not (anot_out,a_in);
                not (bnot_out,b_in);
                nand (nand_out,a_in,b_in);
                nor (nor_out,a_in,b_in);
                xnor (xnor_out,a_in,b_in);
endmodule