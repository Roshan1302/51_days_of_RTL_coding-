`timescale 1ns / 1ps
module ovp_1010_moore(
    input in,clk,rst,
    output reg out
    );
parameter s0=2'b00,
          s1=2'b01,
          s2=2'b10,
          s3=2'b11;
reg [1:0]cs,ns;
//current state logic
always @(posedge clk or negedge rst)
    begin
        if(!rst)
            cs<=s0;
        else
            cs<=ns;
    end
//next state logic
always @(*)
    begin
        case(cs)
            s0:if(in)
               ns=s1;
               else
               ns=s0;
            s1:if(in)
               ns=s1;
               else
               ns=s2;
            s2:if(in)
                ns=s3;
               else
                ns=s0;
            s3:if(in)
                 ns=s1;
               else
                 ns=s2;
         endcase
    end

//output logic
always @(cs)
    begin
        case(cs)
            s0:out=0;
            s1:out=0;
            s2:out=0;
            s3: out=in ? 1'b0:1'b1;
        endcase
    end
endmodule

