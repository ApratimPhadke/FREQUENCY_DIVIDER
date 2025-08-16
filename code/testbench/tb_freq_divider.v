`timescale 1ns/1ps

module tb_freq_divider;

    // Testbench signals
    reg clk;
    reg rst;
    wire clk_out;

    // Parameter for divide factor
    parameter N = 4;

    // Instantiate DUT (Device Under Test)
    CLK_DIVIDER #(.N(N)) uut (
        .clk(clk),
        .rst(rst),
        .clk_out(clk_out)
    );

    // Generate clock (10ns period => 100MHz)
    always #5 clk = ~clk;

    // Test sequence
    initial begin
        // Initialize
        clk = 0;
        rst = 1;

        // Apply reset for some time
        #20 rst = 0;

        // Run simulation for some cycles
        #200 $stop;   // Stop simulation
    end

endmodule
