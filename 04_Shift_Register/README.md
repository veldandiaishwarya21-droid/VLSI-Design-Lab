# 4-Bit Shift Register using Verilog HDL

## Overview
This project implements a **4-bit Serial-In Serial-Out (SISO) Shift Register** using Verilog HDL. The register shifts the input data by one bit on every positive edge of the clock. It also includes an active-high reset to initialize the register.

---

## Features
- 4-bit Shift Register
- Serial Input (serial_in)
- Serial Output (serial_out)
- Active-High Reset
- Positive Edge Triggered
- Verified using a Verilog Testbench
- Waveforms generated using GTKWave

---

## Files

| File | Description |
|------|-------------|
| `shift_register.v` | Shift Register design |
| `tb_shift_register.v` | Testbench |
| `waveform.png` | Simulation waveform |
| `shift.vcd` | VCD waveform file (optional) |
| `README.md` | Project documentation |

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Ubuntu (WSL)
- Git & GitHub

---

## Simulation Steps

Compile the design:

```bash
iverilog -o shift_sim shift_register.v tb_shift_register.v
```

Run the simulation:

```bash
vvp shift_sim
```

Generate the waveform:

```bash
gtkwave shift.vcd
```

---

## Simulation Result

The waveform verifies that:

- Reset initializes the register to 0.
- Data is shifted one bit on every positive clock edge.
- Serial output produces the shifted-out bit.
- The register behaves as expected.
<"https://github.com/user-attachments/assets/278fee71-f9bf-48b4-b76a-7230acf220af" />


## Learning Outcomes

- Verilog RTL Design
- Sequential Logic Design
- Shift Register Implementation
- Testbench Development
- Digital Circuit Simulation
- GTKWave Analysis
- GitHub Project Documentation
