# Challenge 5 - GrayCoder

## Problem Statement

Design a Verilog module that converts a 4-bit binary input into its equivalent Gray code.

## Inputs

| Signal | Width | Description |
|---------|------:|-------------|
| binary_in | 4 | 4-bit binary input |

## Outputs

| Signal | Width | Description |
|---------|------:|-------------|
| gray_out | 4 | 4-bit Gray code output |

## Design Approach

The module uses combinational logic to convert binary to Gray code.

Conversion equations:

- G3 = B3
- G2 = B3 XOR B2
- G1 = B2 XOR B1
- G0 = B1 XOR B0

The output updates only when the input changes.

## Files

- GrayCoder.v
- README.md