`timescale 1ns/1ps

module tb_frequency_divider;

reg clk;
reg reset;
wire clk_out;

frequency_divider uut(
    .clk(clk),
    .reset(reset),
    .clk_out(clk_out)
);

// Clock Generation
always #5 clk = ~clk;

initial begin

    $dumpfile("frequency_divider.vcd");
    $dumpvars(0, tb_frequency_divider);

    clk = 0;
    reset = 1;

    #10 reset = 0;

    #100;

    $finish;

end

endmodule
