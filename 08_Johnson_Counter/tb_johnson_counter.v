`timescale 1ns/1ps

module tb_johnson_counter;

reg clk;
reg reset;
wire [3:0] q;

// Instantiate the Johnson Counter
johnson_counter uut (
    .clk(clk),
    .reset(reset),
    .q(q)
);

// Clock Generation
always #5 clk = ~clk;

initial begin
    $dumpfile("johnson_counter.vcd");
    $dumpvars(0, tb_johnson_counter);

    $display("Time\tReset\tQ");
    $monitor("%0t\t%b\t%b", $time, reset, q);

    clk = 0;
    reset = 1;

    #10 reset = 0;

    #80;

    $finish;
end

endmodule
