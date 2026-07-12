# Challenge 6 - DebouncerLite

## Problem Statement

Design a Verilog module that filters button bounce by requiring two consecutive identical inputs before updating the output.

## Inputs

| Signal | Width | Description |
|---------|------:|-------------|
| clk | 1 | Clock signal |
| reset | 1 | Resets the module |
| button_in | 1 | Push button input |

## Output

| Signal | Width | Description |
|---------|------:|-------------|
| debounced_out | 1 | Debounced button output |

## Design Approach

The design stores the previous button input.

- If the current input matches the previous input, the output is updated.
- If the inputs differ, the output remains unchanged.

This removes short glitches caused by button bounce.

## Files

- DebouncerLite.v
- README.md