##Error Handling Statements

In this contract we use 3 statements for error handling. require(), assert() and revert(). 

## Usage

The `ExceptionHandling` contract contains three functions that demonstrate exception handling techniques:

### `requireStatement()`

This function takes two input parameters, `x` and `y`, checks if `y` is equal to zero using the `require()` statement, and reverts the transaction with an error message if `y` is indeed zero. If `y` is not zero, it divides `x` by `y` and returns the result.

### `assertStatement()`

This function takes two input parameters, `a` and `b`, checks if `a` is greater than or equal to `b` using the `assert()` statement, and throws an error if `a` is not greater than or equal to `b`. If the assertion passes, it subtracts `b` from `a` and returns the result.

### `revertStatement()`

This function takes one input parameter, a boolean `condition`, and uses the `revert()` statement to revert the transaction with a custom error message if `condition` is `true`.

## Created By

Aditya Padwal - Discord - adityx.a #3994
