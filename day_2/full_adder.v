`timescale 1ns / 1ps
module full_adder (
    input a,b,cin,
    output sum,cout);

        wire Po,Go,w1;       
        
        assign Po = a ^ b;
        assign sum= Po ^ cin;
        assign Go = a & b;
        assign  w1= Po & cin;
        assign cout = w1 | Go;  
        
endmodule