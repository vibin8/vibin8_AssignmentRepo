// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageStorage {
    string private message;

    function storeMessage(string memory _message) public {
        message = _message;
    }

    function retrieveMessage() public view returns (string memory) {
        return message;
    }
}
