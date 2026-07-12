# Challenge 1 - PulseTracer

## Problem Statement

Design a Verilog module that detects a single-cycle high pulse from a noisy input stream. The design should ignore short glitches and only respond to a valid high transition.

---

## Objective

- Detect a clean HIGH transition.
- Ignore one-clock glitches.
- Generate a one-clock pulse.
- Reset correctly.

---

## Inputs

| Signal | Description |
|---------|-------------|
| clk | System clock |
| rst | Active-high reset |
| signal_in | Input signal |

---

## Output

| Signal | Description |
|---------|-------------|
| pulse_out | Single-clock pulse output |

---

## Design Approach

The design stores the previous value of the input signal.

A HIGH input is considered valid only when it remains HIGH for two consecutive clock cycles.

Once a valid HIGH is detected, the module generates a single-clock pulse.

The module then waits until the input returns LOW before detecting another pulse.

---

## Internal Registers

### previous_input

Stores the input value from the previous clock cycle.

### stable_high

Prevents multiple output pulses while the input remains HIGH.

---

## Algorithm

1. Wait for a rising clock edge.
2. If reset is active, clear all registers.
3. Check if the current and previous inputs are HIGH.
4. If both are HIGH and no pulse has been generated, generate a one-cycle pulse.
5. Keep the output LOW otherwise.
6. Reset the detection state when the input goes LOW.

---

## Assumption

Since the assignment does not define the duration of a glitch, this implementation assumes that a valid HIGH must remain HIGH for two consecutive clock cycles.

---

## Files

- PulseTracer.v
- README.md