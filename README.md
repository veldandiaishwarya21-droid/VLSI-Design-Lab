# 2x1 Multiplexer (MUX) using Verilog HDL

## Project Overview
This project implements a 2x1 Multiplexer using Verilog HDL and verifies its functionality using a testbench.

## Files
- mux2x1.v : Verilog design for the 2x1 Multiplexer
- tb_mux2x1.v : Testbench for simulation

## Logic
Y = (sel) ? B : A

## Truth Table

| Sel | Output |
|-----|--------|
| 0 | A |
| 1 | B |

## Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave (optional)
- Ubuntu (WSL)

## Simulation

The design was compiled using:

```bash
iverilog -o mux_sim mux2x1.v tb_mux2x1.v
```

Simulation:

```bash
vvp mux_sim
```

## Author

Aishwarya Veldandi
B.Tech Electronics Engineering (VLSI)
CBIT Hyderabad
