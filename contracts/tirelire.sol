// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Tirelire {
uint public balance;
receive() external payable {
balance += msg.value;
// Syntaxe alternative : balance = balance + msg.value;
}
}