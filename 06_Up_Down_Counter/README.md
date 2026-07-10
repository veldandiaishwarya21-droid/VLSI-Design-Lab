# 05. Up/Down Counter

## Overview
This project implements a 4-bit synchronous Up/Down Counter using Verilog HDL. The counter increments or decrements on every positive edge of the clock based on the control signal.

- **Mode = 1** → Count Up
- **Mode = 0** → Count Down

An asynchronous reset is used to initialize the counter.

---

## Files

- `up_down_counter.v` - Verilog RTL design
- `tb_up_down_counter.v` - Testbench
- `up_down_counter.vcd` - Simulation waveform
- `waveform.png` - GTKWave output

---

## Inputs

| Signal | Description |
|---------|-------------|
| clk | Clock signal |
| reset | Asynchronous reset |
| mode | Up/Down control |

---

## Output

| Signal | Description |
|---------|-------------|
| count[3:0] | 4-bit counter output |

---

## Working

When reset is HIGH:

```
count = 0000
```

When reset becomes LOW:

If

```
mode = 1
```

Counter sequence:

```
0000
0001
0010
0011
0100
...
```

If

```
mode = 0
```

Counter sequence:

```
1001
1000
0111
0110
...
```

---

## Simulation

Compile

```bash
iverilog -o up_down_sim up_down_counter.v tb_up_down_counter.v
```

Run

```bash
vvp up_down_sim
```

Open GTKWave

```bash
gtkwave up_down_counter.vcd
```

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Ubuntu (WSL)
