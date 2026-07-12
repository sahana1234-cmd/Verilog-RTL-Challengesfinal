# Challenge 9 - RotatorUnit

## Problem Statement

Design a Verilog module that rotates an 8-bit input either left or right by one position on each clock cycle based on a direction signal.

## Inputs

| Signal | Width | Description |
|---------|------:|-------------|
| clk | 1 | Clock signal |
| reset | 1 | Reset signal |
| direction | 1 | Rotation direction (0 = Left, 1 = Right) |
| data_in | 8 | Input data |

## Output

| Signal | Width | Description |
|---------|------:|-------------|
| data_out | 8 | Rotated output |

## Design Approach

On every positive clock edge:

- If direction is LOW, the data rotates left by one bit.
- If direction is HIGH, the data rotates right by one bit.

The bits wrap around during rotation.

## Files

- RotatorUnit.v
- README.md