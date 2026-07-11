# Sequence Detector (1011)

## Overview

This project implements a Sequence Detector using a Finite State Machine (FSM) in Verilog HDL.

The detector continuously monitors the serial input stream and generates a HIGH output whenever the sequence **1011** is detected.

---

## Sequence

1011

---

## Inputs

- clk
- reset
- din

---

## Output

- detected

When the input sequence becomes **1011**, the output `detected` goes HIGH for one clock cycle.

---

## State Diagram

S0 → S1 → S2 → S3 → S4

After detecting the sequence, the FSM continues monitoring the incoming data.

---

## Files

- 11_sequence_detector.v
- tb_11_sequence_detector.v
- waveform_sequence_detector.png

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Ubuntu (WSL)

---

## Simulation

The waveform confirms that the detector successfully identifies the input sequence **1011** and asserts the `detected` signal.
