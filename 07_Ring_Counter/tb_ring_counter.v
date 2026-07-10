`timescale 1ns/1ps

module tb_ring_counter;

reg clk;
reg reset;
wire [3:0] q;

// Instantiate the Ring Counter
ring_counter uut (
    .clk(clk),
    .reset(reset),
    .q(q)
);

// Clock Generation
always #5 clk = ~clk;

initial begin
    $dumpfile("ring_counter.vcd");
    $dumpvars(0, tb_ring_counter);

    $display("Time\tReset\tQ");
    $monitor("%0t\t%b\t%b", $time, reset, q);

    clk = 0;
    reset = 1;

    #10 reset = 0;

    #50;

    $finish;
end

endmodule
