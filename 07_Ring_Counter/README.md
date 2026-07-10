# 07. Ring Counter

## Overview

This project implements a 4-bit Ring Counter using Verilog HDL.

A Ring Counter is a circular shift register where a single logic '1' rotates through all flip-flops on every positive edge of the clock.

---

## Files

- ring_counter.v
- tb_ring_counter.v
- ring_counter.vcd
- waveform.png

---

## Inputs

| Signal | Description |
|---------|-------------|
| clk | Clock Signal |
| reset | Asynchronous Reset |

---

## Output

| Signal | Description |
|---------|-------------|
| q[3:0] | 4-bit Ring Counter Output |

---

## Working

After reset:

```
0001
```

Each clock pulse rotates the single HIGH bit:

```
0001
0010
0100
1000
0001
...
```

Only one bit remains HIGH at any instant.

---

## Simulation

Compile

```bash
iverilog -o ring_sim ring_counter.v tb_ring_counter.v
```

Run

```bash
vvp ring_sim
```

Open GTKWave

```bash
gtkwave ring_counter.vcd
```

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Ubuntu (WSL)

---

## Learning Outcomes

- Sequential Circuit Design
- Shift Registers
- Ring Counter Operation
- Clock Triggered Logic
- Waveform Analysis
