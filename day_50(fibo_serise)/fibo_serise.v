`timescale 1ns / 1ps
module fibo_series(
    input clk,
    input rst,
    output reg [4:0] series_out
);
    reg [4:0] q1, q2;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            q1 <= 5'd0;   // First Fibonacci number
            q2 <= 5'd1;   // Second Fibonacci number
        end else begin
            q1 <= q2;           // Shift q2 to q1
            q2 <= q1 + q2;      // Calculate next Fibonacci number
        end
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            series_out <= 5'd0;  // Reset output
        end else begin
            series_out <= q1;    // Output current Fibonacci number
        end
    end
endmodule

