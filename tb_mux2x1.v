`timescale 1ns/1ps

module tb_mux2x1;

reg a;
reg b;
reg sel;
wire y;

mux2x1 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
);

initial begin
    $display("Time\tSel A B | Y");
    $monitor("%0t\t%b   %b %b | %b", $time, sel, a, b, y);

    a = 0; b = 0; sel = 0;
    #10;

    a = 1; b = 0; sel = 0;
    #10;

    a = 0; b = 1; sel = 1;
    #10;

    a = 1; b = 1; sel = 1;
    #10;

    $finish;
end

endmodule
