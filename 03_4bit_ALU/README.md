# 4-bit ALU using Verilog HDL

## Project Overview
This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.

## Operations

| Opcode | Operation |
|---------|-----------|
| 000 | Addition |
| 001 | Subtraction |
| 010 | AND |
| 011 | OR |
| 100 | XOR |
| 101 | NOT |
| 110 | Left Shift |
| 111 | Right Shift |

## Files

- alu.v
- tb_alu.v

## Tools Used

- Verilog HDL
- Icarus Verilog
- Ubuntu (WSL)

## Simulation

Compile:

```bash
iverilog -o alu_sim alu.v tb_alu.v
```

Run:

```bash
vvp alu_sim
```

## Author

Aishwarya Veldandi
