// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ExceptionHandling {
    function requireExample(uint256 x, uint256 y) public pure returns (uint256) {
        // require() statement checks the condition and reverts if it evaluates to false
        require(y != 0, "Division by zero is not allowed");
        return x / y;
    }

    function assertExample(uint256 a, uint256 b) public pure returns (uint256) {
        // assert() statement checks the condition and throws an error if it evaluates to false
        assert(a >= b);
        return a - b;
    }

    function revertExample(bool condition) public pure {
        // revert() statement is used to revert the transaction with an error message
        if (condition) {
            revert("error");
        }
    }
}
