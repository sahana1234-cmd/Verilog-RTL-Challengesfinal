# Challenge 8 - SeqCheck

## Problem Statement

Design a Verilog module that detects the serial bit sequence `101` and asserts the output for one clock cycle when the sequence is detected.

## Inputs

| Signal | Width | Description |
|---------|------:|-------------|
| clk | 1 | Clock signal |
| reset | 1 | Reset signal |
| serial_in | 1 | Serial input stream |

## Output

| Signal | Width | Description |
|---------|------:|-------------|
| detected | 1 | HIGH for one clock cycle when `101` is detected |

## Design Approach

A finite state machine (FSM) is used to track the received input sequence.

States:

- S0 : No bits detected
- S1 : Received `1`
- S2 : Received `10`

When the FSM receives the final `1`, the sequence `101` is detected and the output is asserted for one clock cycle.

## Files

- SeqCheck.v
- README.md