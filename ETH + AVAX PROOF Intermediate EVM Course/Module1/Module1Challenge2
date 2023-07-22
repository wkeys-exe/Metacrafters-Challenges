// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract parent{
    uint public x = 10;

    function add(uint y) public view returns (uint){
        return x + y;
    }

    function square(uint i) public pure returns (uint){
        return i*i;
    }

    function deposit() public payable{

    } 

    function getBalance() public view returns (uint){
        return address(this).balance;
    }


}

contract child is parent{
     
     function getAddResult(uint a) public view returns (uint){
         
         return add(a);
     }

     function getSquareResult(uint b) public pure returns (uint){
         return square(b);
     }

     function getBal() public view returns (uint){
         return getBalance();
     }
}
