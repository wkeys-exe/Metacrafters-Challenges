// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

contract Challenge2 {
    uint public availableEth;
    uint public gweiCost;
    uint public weiCost;

    function getAvailableEth(uint ethAmount) public { 
         availableEth = ethAmount;
    }

    function getGweiCost() public  returns (uint) {
         gweiCost = availableEth*(10**9);
         return gweiCost;
       }
     function getWeiCost() public  returns (uint) {
          weiCost = availableEth*(10**18);
          return weiCost;
     }
    }
