`timescale 1ns / 1ps
module freq_div_by_5(
    input clk,
    input rst,
    output  freq_out
);

    reg [2:0] cnt; // 2-bit counter to count up to 3
    reg q;
    wire D;
    // mod-3 counter
    always @(posedge clk or posedge rst) begin
        if (rst)
            cnt <= 0;
        else if (cnt == 3'b100)
            cnt <= 3'b000;
        else
            cnt <= cnt + 1;
    end

    // Frequency division logic
    always @(negedge clk ) 
        begin
            if (rst)
                q <= 0;
            else
                q <= D; 
        end
assign D = cnt[1] ;
assign freq_out = cnt[1] | q;
endmodule
