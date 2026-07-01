`timescale 1ns/1ps

module tb_alu;

reg [3:0] A;
reg [3:0] B;
reg [2:0] opcode;

wire [3:0] Result;

alu uut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .Result(Result)
);

initial begin
    $display("Time\tOpcode\tA\tB\tResult");
    $monitor("%0t\t%b\t%b\t%b\t%b",
             $time, opcode, A, B, Result);

    // Addition
    A = 4'b0011; B = 4'b0101; opcode = 3'b000;
    #10;

    // Subtraction
    A = 4'b1000; B = 4'b0011; opcode = 3'b001;
    #10;

    // AND
    A = 4'b1100; B = 4'b1010; opcode = 3'b010;
    #10;

    // OR
    A = 4'b1100; B = 4'b1010; opcode = 3'b011;
    #10;

    // XOR
    A = 4'b1100; B = 4'b1010; opcode = 3'b100;
    #10;

    // NOT
    A = 4'b1100; B = 4'b0000; opcode = 3'b101;
    #10;

    // Left Shift
    A = 4'b0011; B = 4'b0000; opcode = 3'b110;
    #10;

    // Right Shift
    A = 4'b1100; B = 4'b0000; opcode = 3'b111;
    #10;

    $finish;
end

endmodule
