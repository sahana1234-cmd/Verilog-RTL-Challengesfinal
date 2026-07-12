# Challenge 3 - NibbleSwapper

## Problem Statement

Design a Verilog module that swaps the upper and lower 4-bit nibbles of an 8-bit input when the control signal is asserted.

## Assumption

Since the assignment does not specify a clock or storage element, the design is implemented as combinational logic. When the control signal is deasserted, the input is passed to the output unchanged.

## Inputs

| Signal | Width | Description |
|---------|------:|-------------|
| data_in | 8 | 8-bit input data |
| swap | 1 | Swap control signal |

## Outputs

| Signal | Width | Description |
|---------|------:|-------------|
| data_out | 8 | Swapped or unchanged output |

## Design Approach

When `swap` is HIGH, the upper and lower nibbles are exchanged using Verilog concatenation. When `swap` is LOW, the output equals the input.

## Files

- NibbleSwapper.v
- README.md