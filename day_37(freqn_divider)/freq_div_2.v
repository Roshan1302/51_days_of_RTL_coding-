`timescale 1ns / 1ps

module freq_div_2(
    input clk, rst,
    output freq_out
);
    reg q;
    wire D;

    always @(posedge clk) begin
        if (rst)
            q <= 0;
        else
            q <= D;        
    end

    assign D = ~q;
    assign freq_out = q;
endmodule

