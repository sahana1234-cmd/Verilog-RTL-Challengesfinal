# Challenge 2 - BitBalancer

## Problem Statement

Design a Verilog module that counts the number of logic 1s in an 8-bit input and outputs the total count.

## Inputs

| Signal | Width | Description |
|---------|------:|-------------|
| data_in | 8 | 8-bit binary input |

## Outputs

| Signal | Width | Description |
|---------|------:|-------------|
| count | 4 | Number of logic 1s in the input |

## Design Approach

The design uses combinational logic. Whenever the input changes, the count is recalculated by summing all eight input bits. The count starts from zero for every new input, ensuring that previous values are not accumulated.

## Algorithm

1. Set count to zero.
2. Examine all eight input bits.
3. Add each bit to the count.
4. Output the final count.

## Files

- BitBalancer.v
- README.md