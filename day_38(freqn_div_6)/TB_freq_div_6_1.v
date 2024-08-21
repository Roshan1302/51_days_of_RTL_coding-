`timescale 1ns / 1ps

module TB_freq_div_6_1;

    // Testbench signals
    reg clk;
    reg rst;
    wire freq_out;

    // Instantiate the frequency divider module
    freq_div_6_1 uut (
        .clk(clk),
        .rst(rst),
        .freq_out(freq_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Generate a clock with a period of 10 ns
    end

    // Test stimulus
    initial begin
        // Initialize reset
        rst = 1;
        #20;  // Hold reset for 20 ns
        rst = 0;

        // Observe the output
        #200;
        
        // Reset again to check reset functionality
        rst = 1;
        #20;
        rst = 0;
        
        // Observe the output after reset
        #200;

        // End the simulation
        $stop;
    end

    // Monitor signals
    initial begin
        $monitor("Time = %0t | clk = %b | rst = %b | freq_out = %b", 
                 $time, clk, rst, freq_out);
    end

endmodule
