// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ExceptionHandling {
    function requireStatement(uint256 x, uint256 y) public pure returns (uint256) {
        require(y != 0, "Division by zero is not allowed");
        return x / y;
    }

    function assertStatement(uint256 a, uint256 b) public pure returns (uint256) {
        assert(a >= b);
        return a - b;
    }

    function revertStatement(bool condition) public pure {
        if (condition) {
            revert("error");
        }
    }
}
