`timescale 1ns/1ps

module tb_uart_rx;

reg clk;
reg reset;
reg rx;

wire [7:0] data_out;
wire done;

uart_rx uut (
    .clk(clk),
    .reset(reset),
    .rx(rx),
    .data_out(data_out),
    .done(done)
);

// Clock Generation
always #5 clk = ~clk;

initial
begin
    $dumpfile("uart_rx.vcd");
    $dumpvars(0, tb_uart_rx);

    clk = 0;
    reset = 1;
    rx = 1;

    #10 reset = 0;

    // Start Bit
    #10 rx = 0;

    // Send 10101010 (LSB first)
    #10 rx = 0;
    #10 rx = 1;
    #10 rx = 0;
    #10 rx = 1;
    #10 rx = 0;
    #10 rx = 1;
    #10 rx = 0;
    #10 rx = 1;

    // Stop Bit
    #10 rx = 1;

    #30;

    $finish;
end

initial
begin
    $display("Time\tRX\tDone\tData");
    $monitor("%0t\t%b\t%b\t%h",$time,rx,done,data_out);
end

endmodule
