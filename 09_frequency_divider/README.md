# 09. Frequency Divider

## 📌 Overview

This project implements a **Divide-by-2 Frequency Divider** using Verilog HDL.

A Frequency Divider reduces the frequency of an input clock signal by toggling the output after every clock edge. In this implementation, the output clock (`clk_out`) changes state on every positive edge of the input clock (`clk`), producing an output frequency that is half of the input frequency.

---

## 📂 Project Files

- `09_frequency_divider.v` – Verilog RTL design
- `tb_09_frequency_divider.v` – Testbench
- `frequency_divider.vcd` – Simulation waveform
- `waveform.png` – GTKWave output

---

## 🛠️ Tools Used

- Verilog HDL
- Icarus Verilog (iverilog)
- GTKWave
- Ubuntu (WSL)

---

## ▶️ Simulation Steps

Compile the design:

```bash
iverilog -o freq_sim 09_frequency_divider.v tb_09_frequency_divider.v
```

Run the simulation:

```bash
vvp freq_sim
```

Open the waveform:

```bash
gtkwave frequency_divider.vcd
```

---

## ⚙️ Working Principle

The Frequency Divider uses a flip-flop-like behavior.

- Initially, `reset` sets `clk_out` to **0**.
- On every positive edge of the input clock:
  - `clk_out` toggles between **0** and **1**.
- Since the output changes once for every input clock cycle, the output frequency becomes **half** of the input frequency.

Mathematically,

```
Output Frequency = Input Frequency / 2
```

Example:

| Input Clock | Output Clock |
|-------------|--------------|
| 100 MHz | 50 MHz |
| 50 MHz | 25 MHz |
| 20 MHz | 10 MHz |

---

## 📊 Simulation Result

The waveform confirms that:

- Reset initializes the output.
- The input clock toggles continuously.
- The output clock toggles once every input clock cycle.
- Therefore, the output frequency is exactly **half** of the input frequency.

---

## 📸 Waveform

---

## 📚 Applications

- Clock generation
- Digital timing circuits
- FPGA and ASIC clock management
- Counters
- Sequential digital systems
- Embedded hardware designs

---
