// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventLogging {
    event MessageLogged(string message);

    function logMessage(string memory message) public {
        emit MessageLogged(message);
    }
}
