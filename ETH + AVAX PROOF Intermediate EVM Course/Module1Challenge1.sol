// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract AdminOnly {

        uint public availableToken;
        address public admin;

        modifier onlyAdmin() {
        require(msg.sender == admin, "You are not the admin.");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    function getAvailableToken(uint tokenAmount) public onlyAdmin {
           availableToken= tokenAmount;
    }
}