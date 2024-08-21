`timescale 1ns / 1ps
module freq_div_6_1(
    input clk, rst,
    output freq_out
);
    reg [2:0]q;
    wire D;

    always @(posedge clk) begin
        if (rst)
            q <= 0;
        else
            begin     
                q[2] <= D;     
                q[1] <= q[2];
                q[0] <= q[1];
            end       
    end

    assign D = ~q[0];
    assign freq_out = q[0];
endmodule
