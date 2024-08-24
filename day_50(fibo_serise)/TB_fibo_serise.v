`timescale 1ns / 1ps
`timescale 1ns/1ps

module TB_fibo_series();

    // Testbench signals
    reg clk;
    reg rst;
    wire [4:0] series_out;
    
    // Instantiate the Fibonacci module
    fibo_series uut (
        .clk(clk),
        .rst(rst),
        .series_out(series_out)
    );
    
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns clock period
    end
    
    // Stimulus
    initial begin
        // Initialize
        rst = 1;
        #10;
        
        // Release reset
        rst = 0;
        #100;
        
        // Assert reset again to see behavior
        rst = 1;
        #10;
        
        // Release reset again
        rst = 0;
        #50;
        
        // Finish simulation
        $finish;
    end
    
    // Monitor
    initial begin
        $monitor("Time = %0t, Reset = %b, Fibonacci Output = %d", $time, rst, series_out);
    end
    
endmodule

