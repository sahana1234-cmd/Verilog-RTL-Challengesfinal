# Challenge 10 - EdgeHighlighter

## Problem Statement

Design a Verilog module that detects rising and falling edges on an input signal and generates separate output pulses for each edge.

## Inputs

| Signal | Width | Description |
|---------|------:|-------------|
| clk | 1 | Clock signal |
| reset | 1 | Reset signal |
| signal_in | 1 | Input signal |

## Outputs

| Signal | Width | Description |
|---------|------:|-------------|
| rising_pulse | 1 | HIGH for one clock cycle on a rising edge |
| falling_pulse | 1 | HIGH for one clock cycle on a falling edge |

## Design Approach

The design stores the previous input value.

On every clock cycle:

- If the input changes from LOW to HIGH, `rising_pulse` is asserted for one clock cycle.
- If the input changes from HIGH to LOW, `falling_pulse` is asserted for one clock cycle.

## Files

- EdgeHighlighter.v
- README.md