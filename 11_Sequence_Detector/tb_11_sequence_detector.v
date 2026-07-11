`timescale 1ns/1ps

module tb_sequence_detector;

reg clk;
reg reset;
reg din;
wire detected;

sequence_detector uut (
    .clk(clk),
    .reset(reset),
    .din(din),
    .detected(detected)
);

// Clock Generation
always #5 clk = ~clk;

initial
begin
    $dumpfile("sequence_detector.vcd");
    $dumpvars(0, tb_sequence_detector);

    clk = 0;
    reset = 1;
    din = 0;

    #10 reset = 0;

    // Input Sequence: 1 0 1 1 (Detected)
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 1;

    // Random Bits
    #10 din = 0;
    #10 din = 1;
    #10 din = 1;
    #10 din = 0;

    // Again: 1 0 1 1
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 1;

    #20;

    $finish;
end

initial
begin
    $display("Time\tReset\tDIN\tDetected");
    $monitor("%0t\t%b\t%b\t%b",$time,reset,din,detected);
end

endmodule
