// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Lottery {
    address public manager;
    address[] public players;

    constructor() {
        manager = msg.sender;  // The contract deployer is the manager
    }

    function enter() public payable {
        require(msg.value > .01 ether, "Minimum Ether not met");  // Minimum Ether to enter
        players.push(msg.sender);
    }

    function random() private view returns (uint) {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, players)));
    }

    function pickWinner() public restricted {
        uint index = random() % players.length;
        address winner = players[index];
        payable(winner).transfer(address(this).balance);
        players = new address ;  // Resetting the players array for the next round
    }

    modifier restricted() {
        require(msg.sender == manager, "You are not authorized to pick the winner");
        _;
    }

    function getPlayers() public view returns (address[] memory) {
        return players;
    }
}
