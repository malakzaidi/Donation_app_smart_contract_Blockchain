// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Tirelire {
uint public balance;
address private owner;
constructor() {
owner = msg.sender;
}
receive() external payable {
balance += msg.value;
}
function withdraw(uint amount, address payable destAddr) public {
require(msg.sender == owner, "just the owner can withdraw");
require(amount <= balance, "not enough balance for withdrawal");
destAddr.transfer(amount);
balance -= amount;
}
}