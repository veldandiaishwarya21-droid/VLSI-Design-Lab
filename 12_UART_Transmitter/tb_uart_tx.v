`timescale 1ns/1ps

module tb_uart_tx;

reg clk;
reg reset;
reg start;
reg [7:0] data_in;

wire tx;
wire busy;

uart_tx uut (
    .clk(clk),
    .reset(reset),
    .start(start),
    .data_in(data_in),
    .tx(tx),
    .busy(busy)
);

// Clock Generation
always #5 clk = ~clk;

initial
begin
    $dumpfile("uart_tx.vcd");
    $dumpvars(0, tb_uart_tx);

    clk = 0;
    reset = 1;
    start = 0;
    data_in = 8'b10101010;

    #10 reset = 0;

    #10 start = 1;
    #10 start = 0;

    #200;

    $finish;
end

initial
begin
    $display("Time\tStart\tBusy\tTX");
    $monitor("%0t\t%b\t%b\t%b",$time,start,busy,tx);
end

endmodule
