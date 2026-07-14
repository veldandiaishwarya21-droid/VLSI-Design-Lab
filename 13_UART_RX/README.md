# UART Receiver (UART RX)

## Overview

This project implements a UART (Universal Asynchronous Receiver/Transmitter) Receiver using Verilog HDL.

The receiver accepts serial data on the `rx` line, reconstructs it into an 8-bit parallel output, and asserts a `done` signal when a complete byte has been received.

---

## Features

- 8-bit serial data reception
- Serial-to-parallel conversion
- Shift register implementation
- Done signal after successful reception

---

## Inputs

- clk
- reset
- rx

---

## Outputs

- data_out [7:0]
- done

---

## UART Frame

```
Idle | Start | D0 | D1 | D2 | D3 | D4 | D5 | D6 | D7 | Stop

 1      0      x    x    x    x    x    x    x    x     1
```

---

## Files

- uart_rx.v
- tb_uart_rx.v
- uart_rx_waveform.png

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Ubuntu (WSL)

---

## Simulation

The waveform verifies:

- Detection of the start bit
- Reception of 8 serial data bits
- Reconstruction into an 8-bit parallel output
- Assertion of the `done` signal after successful reception
