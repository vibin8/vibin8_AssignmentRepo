// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OwnerAccess {
    address private owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner");
        _;
    }

    function restrictedFunction() public onlyOwner {
        // Only the owner can call this function
    }

    function getOwner() public view returns (address) {
        return owner;
    }
}
