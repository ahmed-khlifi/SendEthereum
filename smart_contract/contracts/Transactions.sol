// SPDX-License-Identifier: UNLICENSED
//version of solidity
pragma solidity ^0.8.0;

// CREATE A CONTRACT 

contract Transactions {
    uint256 TransactionCount;

    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);
    
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public{
        TransactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    function getAllTransactions() public view returns (TransferStruct[] memory){
        // return transaction
        return transactions;
    }

    function getTransactionCount() public view returns (uint256){
        // return transaction count
        return TransactionCount;    
    }

}