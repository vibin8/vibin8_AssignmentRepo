# Smart Contracts: Crowdfunding and Voting System

This repository contains two Solidity smart contracts:

1. **Crowdfunding Contract**: A simple crowdfunding platform where users can create campaigns, contribute, and withdraw funds based on campaign success.
2. **Voting System Contract**: A basic voting system that allows participants to propose options, cast votes, and determine the winner.

## Crowdfunding Contract

### Description

The **Crowdfunding Contract** allows users to create crowdfunding campaigns, contribute funds, and withdraw contributions based on the campaign's success or failure.

### Features

- **Campaign Creation**: Users can create a campaign with a funding goal and a deadline.
- **Contribution**: Users can contribute to any campaign before the deadline.
- **Finalize Campaign**: If the funding goal is reached by the deadline, the funds are released to the campaign creator; otherwise, contributors can withdraw their funds.
- **Withdraw Contribution**: Contributors can withdraw their contributions if the campaign goal is not met.

### Contract Functions

- `createCampaign(uint _goal, uint _durationInMinutes)`: Creates a new crowdfunding campaign.
- `contribute(uint _campaignId)`: Allows users to contribute to a specific campaign.
- `finalizeCampaign(uint _campaignId)`: Finalizes the campaign and releases funds or allows withdrawals based on the result.
- `withdrawContribution(uint _campaignId)`: Allows contributors to withdraw their funds if the campaign fails.

### Example Usage

1. Deploy the contract.
2. Call `createCampaign()` to create a new campaign.
3. Use `contribute()` to contribute to the campaign.
4. Once the deadline is reached, call `finalizeCampaign()` to either release the funds to the creator or allow contributors to withdraw.

---

## Voting System Contract

### Description

The **Voting System Contract** allows users to propose new options and vote on them. Each participant can vote only once per proposal, and the contract determines the winning proposal based on the highest number of votes.

### Features

- **Add Proposal**: Users can add new proposals for voting.
- **Voting**: Each user can vote only once per proposal.
- **Results**: The contract tracks the votes, and users can check the current winning proposal.

### Contract Functions

- `addProposal(string memory _name)`: Adds a new proposal to the voting system.
- `vote(uint proposalIndex)`: Allows users to vote for a specific proposal by index.
- `getTotalProposals()`: Returns the total number of proposals.
- `getVoteCount(uint proposalIndex)`: Returns the vote count for a specific proposal.
- `getWinningProposal()`: Returns the index of the winning proposal.
- `getWinningProposalName()`: Returns the name of the winning proposal.

### Example Usage

1. Deploy the contract.
2. Call `addProposal()` to add a new proposal.
3. Use `vote()` to vote for a proposal.
4. Use `getWinningProposalName()` to get the current winning proposal.
