# UART Transmitter (UART TX)

## Overview

This project implements a simple UART (Universal Asynchronous Receiver/Transmitter) Transmitter using Verilog HDL.

The transmitter converts an 8-bit parallel input into a serial data stream.

---

## Features

- 8-bit data transmission
- Start bit generation
- Stop bit generation
- Busy signal
- Shift register based transmission

---

## Inputs

- clk
- reset
- start
- data_in[7:0]

---

## Outputs

- tx
- busy

---

## UART Frame

```
Idle | Start | D0 | D1 | D2 | D3 | D4 | D5 | D6 | D7 | Stop

 1      0      x    x    x    x    x    x    x    x     1
```

---

## Files

- uart_tx.v
- tb_uart_tx.v
- waveform_uart_tx.png

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Ubuntu (WSL)

---

## Simulation

The waveform confirms:

- Idle line remains HIGH
- Start bit becomes LOW
- Data bits are transmitted serially
- Stop bit returns HIGH
