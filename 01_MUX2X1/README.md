# 2x1 Multiplexer (MUX) using Verilog HDL

## Project Overview

This project implements a 2x1 Multiplexer using Verilog HDL and verifies its functionality using a testbench.

## Files

- mux2x1.v : Verilog design module
- tb_mux2x1.v : Testbench for simulation

## Truth Table

| Sel | Y |
|-----|---|
| 0 | A |
| 1 | B |

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave (optional)
- Ubuntu (WSL)

## Simulation

Compile:
bash
iverilog -o mux_sim mux2x1.v tb_mux2x1.v


Run:
bash
vvp mux_sim


## Author

Aishwarya Veldandi
