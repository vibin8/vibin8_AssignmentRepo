// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Donation {
    // A mapping to keep track of how much each address has received in donations
    mapping(address => uint256) public balances;

    // Event to log each donation made
    event DonationReceived(address indexed donor, address indexed recipient, uint256 amount);
    
    // Function to donate to a specific recipient
    function donate(address recipient) public payable {
        require(msg.value > 0, "Donation amount must be greater than zero");
        balances[recipient] += msg.value;
        
        emit DonationReceived(msg.sender, recipient, msg.value);
    }
    
    // Function for recipients to withdraw their funds
    function withdraw() public {
        uint256 amount = balances[msg.sender];
        require(amount > 0, "No funds available for withdrawal");

        balances[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }
    
    // Function to check the balance of a specific recipient
    function getBalance(address recipient) public view returns (uint256) {
        return balances[recipient];
    }
}
