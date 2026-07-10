# 4-bit Synchronous Counter using Verilog HDL

## Overview
This project implements a 4-bit synchronous up counter using Verilog HDL. The counter increments by one on every positive edge of the clock and resets to zero when the reset signal is asserted.

---

## Features
- 4-bit synchronous up counter
- Positive edge triggered
- Active-high reset
- Verilog testbench
- GTKWave simulation

---

## Files

| File | Description |
|------|-------------|
| counter.v | Counter design |
| tb_counter.v | Testbench |
| waveform.png | Simulation waveform |
| counter.vcd | VCD waveform (optional) |
| README.md | Documentation |

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Ubuntu (WSL)

---

## Simulation

Compile:

```bash
iverilog -o counter_sim counter.v tb_counter.v
```

Run:

```bash
vvp counter_sim
```

View waveform:

```bash
gtkwave counter.vcd
```

---

## Simulation Result
<"https://github.com/user-attachments/assets/7f1b4198-ebe2-4579-9a55-542326e40ef2" />

