# Challenge 7 - LightChaser

## Problem Statement

Design a Verilog module that creates a 4-bit LED chaser. A single HIGH bit shifts across the LEDs on every clock pulse.

## Inputs

| Signal | Width | Description |
|---------|------:|-------------|
| clk | 1 | Clock signal |
| reset | 1 | Resets the LED pattern |

## Output

| Signal | Width | Description |
|---------|------:|-------------|
| leds | 4 | LED output pattern |

## Design Approach

The design starts with the pattern `0001`.

On every positive clock edge:

- The HIGH bit shifts one position to the left.
- When the pattern reaches `1000`, it wraps back to `0001`.

This creates a continuous LED chasing effect.

## Files

- LightChaser.v
- README.md