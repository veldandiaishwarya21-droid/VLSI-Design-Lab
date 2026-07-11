# Traffic Light Controller

## Overview

This project implements a simple Traffic Light Controller using a Finite State Machine (FSM) in Verilog HDL.

The controller cycles through three traffic light states:

- RED
- GREEN
- YELLOW

The state changes occur on every positive edge of the clock.

---

## State Sequence

RED → GREEN → YELLOW → RED

---

## Inputs

- clk
- reset

---

## Output

- light[2:0]

| Light | Output |
|--------|---------|
| RED | 100 |
| GREEN | 001 |
| YELLOW | 010 |

---

## Files

- 10_traffic_light_controller.v
- tb_10_traffic_light_controller.v
- traffic_light_waveform.png

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Ubuntu (WSL)

---

## Simulation

The waveform verifies the correct sequence:

RED → GREEN → YELLOW → RED
