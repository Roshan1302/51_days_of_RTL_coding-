`timescale 1ns / 1ps

module async_fifo #(parameter fd = 8, fw = 8, add_size = 3)
(
    input w_clk,
    input r_clk,
    input rst,
    input wr,
    input rd,
    input [fw-1:0] wdata,
    output reg [fw-1:0] rdata,
    output full,
    output empty,
    output reg overflow,
    output reg underflow
);
    reg [add_size:0] wptr, rptr;
    wire [add_size:0] c_wptr, c_rptr; // Gray coded pointers
    reg [add_size:0] c_wptr_q1, c_wptr_q2, c_rptr_q1, c_rptr_q2;
    reg [fw-1:0] mem[fd-1:0];

    // Writing data into FIFO
    always @(posedge w_clk) begin
        if (rst) 
            wptr <= 0;
        else begin
            if (wr && !full) begin
                mem[wptr[add_size-1:0]] <= wdata; // Use lower bits for addressing
                wptr <= wptr + 1; // Increment in binary
            end
        end
    end

    // Read operation
    always @(posedge r_clk) begin
        if (rst)
            rptr <= 0; 
        else begin
            if (rd && !empty) begin
                rdata <= mem[rptr[add_size-1:0]]; // Use lower bits for addressing
                rptr <= rptr + 1; // Increment in binary
            end
        end
    end

    // Convert binary to Gray code
    assign c_wptr = wptr ^ (wptr >> 1);
    assign c_rptr = rptr ^ (rptr >> 1);

    // Synchronizing write pointer to read clock
    always @(posedge r_clk) begin
        if (rst) begin
            c_wptr_q1 <= 0;
            c_wptr_q2 <= 0;
        end else begin
            c_wptr_q1 <= c_wptr;
            c_wptr_q2 <= c_wptr_q1;
        end
    end

    // Synchronizing read pointer to write clock
    always @(posedge w_clk) begin
        if (rst) begin
            c_rptr_q1 <= 0;
            c_rptr_q2 <= 0;
        end else begin
            c_rptr_q1 <= c_rptr;
            c_rptr_q2 <= c_rptr_q1;
        end
    end

    // Empty and full condition (using synchronized pointers)
    assign empty = (c_rptr_q2 == c_wptr_q2);
    assign full  = (c_wptr_q2 == {~c_rptr_q2[add_size], c_rptr_q2[add_size-1:0]});

    // Overflow and underflow conditions
    always @(posedge w_clk) begin
        if (rst)
            overflow <= 0;
        else
            overflow <= (full && wr);
    end

    always @(posedge r_clk) begin
        if (rst)
            underflow <= 0;
        else
            underflow <= (empty && rd);
    end

endmodule
