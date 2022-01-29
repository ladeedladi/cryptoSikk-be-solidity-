// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;




contract Transactions{

 uint transactionCount;

 struct TransactionEth{
     address from;
     address to;
     uint amount;
     string message;
     string keyword;
     uint timestamp;

 }
TransactionEth[] transactionArr;

event Transaction(address from ,address to,uint amount,string message,string keyword,uint timestamp);


function addToblockChain(address to,uint amount,string memory message,string memory keyword) public {
  
transactionCount+=1;

transactionArr.push(TransactionEth(
    msg.sender,
    to,
    amount,
    message,
    keyword,
    block.timestamp

));

emit Transaction(msg.sender,to, amount, message, keyword,  block.timestamp);

}


function getAllTransaction() public view returns (TransactionEth[] memory){
return transactionArr;
}

function getTransactionCount() public view returns (uint){
    return transactionCount;
}

}