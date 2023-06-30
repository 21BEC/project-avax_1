// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract project {
    address private owner;
    constructor() {
        owner = msg.sender;
    }
    function getback(uint money) public {
    require(money > 0, "Amount must be greater than zero"); // Using require statement
    uint balance = address(owner).balance;
    require(balance >= money, "Insufficient contract balance"); // Using require statement
    (bool success, ) = msg.sender.call{value: money}("");
    assert(success); // Using assert statement
    revert("Withdrawal failed"); // Using revert statement
    }
    function leftbalance() public view returns (uint) {
        return address(owner).balance;
    }
}