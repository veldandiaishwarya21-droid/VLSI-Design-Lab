`timescale 1ns/1ps

module tb_rca4;

reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] Sum;
wire Cout;

rca4 uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin
    $display("Time\tA\tB\tCin\tSum\tCout");
    $monitor("%0t\t%b\t%b\t%b\t%b\t%b",
              $time, A, B, Cin, Sum, Cout);

    A = 4'b0000; B = 4'b0000; Cin = 0;
    #10;

    A = 4'b0011; B = 4'b0101; Cin = 0;
    #10;

    A = 4'b1111; B = 4'b0001; Cin = 0;
    #10;

    A = 4'b1010; B = 4'b0101; Cin = 1;
    #10;

    $finish;
end

endmodule
