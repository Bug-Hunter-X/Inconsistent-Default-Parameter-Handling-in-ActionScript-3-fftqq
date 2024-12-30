# Inconsistent Default Parameter Handling in ActionScript 3

This repository demonstrates a subtle bug related to default parameter values in ActionScript 3.  In certain scenarios, the default value for a parameter might not be applied correctly when calling a function with explicit parameters but omitting others.

## Bug Description

The issue occurs when a function has parameters with default values. When calling such functions, omitting parameters later in the parameter list does not always result in the default values being used. This inconsistent behavior can lead to unexpected results in the application.

## Reproduction Steps

1.  Compile and run the `bug.as` file.
2.  Observe the output.  You will notice unexpected behavior, where the default parameter value is not always applied.

## Solution

The `bugSolution.as` file provides a corrected version.  The solution involves ensuring that the parameter list is explicitly handled to guarantee correct use of default values,  either by always providing a value or using a more controlled way to check for the omitted parameter.

## Note

This bug is likely related to the compiler and/or runtime environment used.  More modern ActionScript compilers may not exhibit this issue.  This repository serves as documentation of the inconsistent behavior in some environments.