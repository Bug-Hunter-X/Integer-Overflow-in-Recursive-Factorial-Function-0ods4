# Hack Integer Overflow Bug

This repository demonstrates a subtle integer overflow bug in a Hack program that calculates factorials using recursion. The `foo` function calculates the factorial, while `bar` acts as a wrapper. The bug arises when the input to `foo` is large enough to cause an integer overflow. 

## Bug Description
The `foo` function recursively calculates the factorial of a given integer. However, for larger inputs (greater than 12), the factorial will exceed the maximum representable value for an integer type in Hack, leading to an incorrect result or a program crash. The `bar` function simply checks for zero and then calls `foo`, inheriting the same overflow vulnerability. 

## Solution
The solution involves adding error handling to the factorial function to detect and handle potential overflows before they occur. The improved version uses a check to avoid calculating factorials for numbers that would lead to overflow.