`timescale 1ns / 1ps
module ovp_1010_moore(
    input in,clk,rst,
    output reg out
    );
parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011,
          s4=3'b100;
reg [2:0]cs,ns;
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
                 ns=s4;
            s4:if(in)
               ns=s3;
               else
               ns=s0;
        endcase
    end

//output logic
always @(cs)
    begin
        case(cs)
            s0:out=0;
            s1:out=0;
            s2:out=0;
            s3:out=0;
            s4:out=1;
        endcase
    end
endmodule

