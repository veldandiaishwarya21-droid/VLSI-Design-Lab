`timescale 1ns/1ps

module tb_traffic_light_controller;

reg clk;
reg reset;
wire [2:0] light;

traffic_light_controller uut (
    .clk(clk),
    .reset(reset),
    .light(light)
);

// Clock Generation
always #5 clk = ~clk;

initial
begin
    $dumpfile("traffic_light.vcd");
    $dumpvars(0, tb_traffic_light_controller);

    clk = 0;
    reset = 1;

    #10 reset = 0;

    #60;

    $finish;
end

initial
begin
    $display("Time\tReset\tLight");
    $monitor("%0t\t%b\t%b", $time, reset, light);
end

endmodule
