`timescale 1ns/1ps

module tb_shift_register;

reg clk;
reg reset;
reg serial_in;
wire serial_out;

shift_register uut (
    .clk(clk),
    .reset(reset),
    .serial_in(serial_in),
    .serial_out(serial_out)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("shift.vcd");
    $dumpvars(0, tb_shift_register);

    $display("Time\tReset\tSerial_in\tSerial_out");
    $monitor("%0t\t%b\t%b\t\t%b",
             $time, reset, serial_in, serial_out);

    clk = 0;
    reset = 1;
    serial_in = 0;

    #10;
    reset = 0;

    serial_in = 1; #10;
    serial_in = 0; #10;
    serial_in = 1; #10;
    serial_in = 1; #10;
    serial_in = 0; #10;


    #10;
    $finish;
end

endmodule
