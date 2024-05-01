module tb_binary_counter_latch;

reg clk, rst;
wire [1:0] count;

binary_counter_latch dut(
    .clk(clk),
    .rst(rst),
    .count(count)
);

initial begin
    clk = 0;
    rst = 1;
    #10 rst = 0; // Release reset after 10 time units
    // Clock generation
    forever #5 clk = ~clk;
end

// Dump waveform for EPWave
initial begin
    $dumpfile("tb_binary_counter_latch.vcd");
    $dumpvars(0, tb_binary_counter_latch);
    #1000 $finish; // Finish simulation after 1000 time units
end

endmodule
