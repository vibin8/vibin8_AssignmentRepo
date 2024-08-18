// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleLedger {
    struct Entry {
        string description;
        uint256 amount;
    }

    Entry[] public ledger;

    function addEntry(string memory description, uint256 amount) public {
        ledger.push(Entry(description, amount));
    }

    function getEntry(uint256 index) public view returns (string memory, uint256) {
        Entry storage entry = ledger[index];
        return (entry.description, entry.amount);
    }
}
