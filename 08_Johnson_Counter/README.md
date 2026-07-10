# 08. Johnson Counter

## Overview

This project implements a 4-bit Johnson Counter (Twisted Ring Counter) using Verilog HDL.

A Johnson Counter is a modified Ring Counter in which the inverted output of the last flip-flop is fed back to the first flip-flop. It generates 2N unique states using N flip-flops.

---

## Files

- johnson_counter.v
- tb_johnson_counter.v
- johnson_counter.vcd
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
| q[3:0] | 4-bit Johnson Counter Output |

---

## Working

After reset:

```
0000
```

On every positive edge of the clock, the counter follows the sequence:

```
0000
1000
1100
1110
1111
0111
0011
0001
0000
...
```

The inverted least significant bit is shifted into the most significant bit.

---

## Simulation

Compile

```bash
iverilog -o johnson_sim johnson_counter.v tb_johnson_counter.v
```

Run

```bash
vvp johnson_sim
```

Open GTKWave

```bash
gtkwave johnson_counter.vcd
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
- Johnson Counter Operation
- Shift Registers
- Feedback Logic
- Waveform Analysis
