// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VotingSystem {
    
    // Struct to represent a proposal
    struct Proposal {
        string name; // Name of the proposal
        uint voteCount; // Number of votes the proposal has received
    }

    // Mapping to keep track of which addresses have voted on a particular proposal
    mapping(uint => mapping(address => bool)) public hasVoted;

    // Array of proposals
    Proposal[] public proposals;

    // Add a new proposal (only registered voters can propose)
    function addProposal(string memory _name) external {
        proposals.push(Proposal({
            name: _name,
            voteCount: 0
        }));
    }

    // Cast a vote for a specific proposal by its index
    function vote(uint proposalIndex) external {
        require(proposalIndex < proposals.length, "Invalid proposal index.");
        require(!hasVoted[proposalIndex][msg.sender], "You have already voted for this proposal.");

        proposals[proposalIndex].voteCount += 1;
        hasVoted[proposalIndex][msg.sender] = true;
    }

    // View the total number of proposals
    function getTotalProposals() external view returns (uint) {
        return proposals.length;
    }

    // View the current vote count of a proposal by index
    function getVoteCount(uint proposalIndex) external view returns (uint) {
        require(proposalIndex < proposals.length, "Invalid proposal index.");
        return proposals[proposalIndex].voteCount;
    }

    // Determine the winning proposal based on the highest vote count
    function getWinningProposal() public view returns (uint winningProposalIndex) {
        uint maxVotes = 0;
        for (uint i = 0; i < proposals.length; i++) {
            if (proposals[i].voteCount > maxVotes) {
                maxVotes = proposals[i].voteCount;
                winningProposalIndex = i;
            }
        }
    }

    // View the name of the winning proposal
    function getWinningProposalName() external view returns (string memory) {
        uint winningProposalIndex = getWinningProposal();
        return proposals[winningProposalIndex].name;
    }
}
