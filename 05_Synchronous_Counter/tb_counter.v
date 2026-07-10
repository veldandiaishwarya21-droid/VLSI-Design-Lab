`timescale 1ns/1ps

module tb_counter;

reg clk;
reg reset;
wire [3:0] count;

// Instantiate the counter
counter uut (
    .clk(clk),
    .reset(reset),
    .count(count)
);

// Clock generation
always #5 clk = ~clk;

// Test sequence
initial begin
    $dumpfile("counter.vcd");
    $dumpvars(0, tb_counter);

    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    #100;

    $finish;
end

// Display values
initial begin
    $display("Time\tReset\tCount");
    $monitor("%0t\t%b\t%b", $time, reset, count);
end

endmodule
