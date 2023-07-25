pragma solidity ^0.8.0;

contract MessageContext {
    address public sender;
    uint256 public value;
    uint256 public gasPrice;
    uint256 public gasLeft;

    constructor() {
        // Get the address of the sender (the one who deployed the contract)
        sender = msg.sender;

        // Get the value (in wei) sent along with the transaction
        value = msg.value;

        // Get the gas price (in wei) specified by the sender
        gasPrice = tx.gasprice;

        // Get the remaining gas available for the execution of the contract
        gasLeft = gasleft();
    }

    function getTransactionHash() public view returns (bytes32) {
        // Get the transaction hash of the current transaction
        return tx.hash;
    }

    function getBlockInformation() public view returns (uint256 blockNumber, address blockMiner, uint256 blockTimestamp) {
        // Get the block number, block miner address, and block timestamp of the current block
        blockNumber = block.number;
        blockMiner = block.coinbase;
        blockTimestamp = block.timestamp;
    }
}
