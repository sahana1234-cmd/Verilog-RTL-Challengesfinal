# Challenge 4 - EvenOddFSM

## Problem Statement

Design a Finite State Machine (FSM) that keeps track of whether the total number of HIGH (`1`) inputs received over time is even or odd.

## Inputs

| Signal | Width | Description |
|---------|------:|-------------|
| clk | 1 | Clock signal |
| reset | 1 | Resets the FSM to the EVEN state |
| bit_in | 1 | Input bit |

## Output

| Signal | Width | Description |
|---------|------:|-------------|
| even | 1 | HIGH when the number of received HIGH bits is even |

## Design Approach

The FSM has two states:

- EVEN
- ODD

The FSM starts in the EVEN state after reset.

- If the input bit is `1`, the FSM toggles between EVEN and ODD.
- If the input bit is `0`, the FSM remains in its current state.

## State Transition

- EVEN + 0 → EVEN
- EVEN + 1 → ODD
- ODD + 0 → ODD
- ODD + 1 → EVEN

## Files

- EvenOddFSM.v
- README.md