// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Greeting {
    string private message;

    function setGreeting(string memory _message) public {
        message = _message;
    }

    function getGreeting() public view returns (string memory) {
        return message;
    }
}
