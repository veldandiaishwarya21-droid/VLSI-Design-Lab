`timescale 1ps/1ps

module tb_up_down_counter;

reg clk;
reg reset;
reg up_down;
wire [3:0] count;

up_down_counter uut(
    .clk(clk),
    .reset(reset),
    .up_down(up_down),
    .count(count)
);

// Clock Generation
always #5000 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    up_down = 1;

    #10000;
    reset = 0;

    // Count Up
    #50000;

    // Change Direction
    up_down = 0;

    // Count Down
    #50000;

    $finish;
end

initial
begin
    $dumpfile("up_down_counter.vcd");
    $dumpvars(0, tb_up_down_counter);

    $display("Time\tReset\tUpDown\tCount");

    $monitor("%0t\t%b\t%b\t%b",
             $time,
             reset,
             up_down,
             count);
end

endmodule
