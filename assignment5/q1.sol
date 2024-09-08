// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Crowdfunding {
    // Struct to represent a campaign
    struct Campaign {
        address payable creator;
        uint goal;
        uint deadline;
        uint totalContributed;
        bool finalized;
    }

    // Mapping to store the details of each campaign by id
    mapping(uint => Campaign) public campaigns;
    mapping(uint => mapping(address => uint)) public contributions;
    
    // Counter for campaign IDs
    uint public campaignCount = 0;

    // Create a new campaign
    function createCampaign(uint _goal, uint _durationInMinutes) external {
        campaignCount++;
        campaigns[campaignCount] = Campaign({
            creator: payable(msg.sender),
            goal: _goal,
            deadline: block.timestamp + _durationInMinutes * 1 minutes,
            totalContributed: 0,
            finalized: false
        });
    }

    // Contribute to a specific campaign by its ID
    function contribute(uint _campaignId) external payable {
        Campaign storage campaign = campaigns[_campaignId];
        require(block.timestamp < campaign.deadline, "Campaign has ended.");
        require(!campaign.finalized, "Campaign has already been finalized.");

        campaign.totalContributed += msg.value;
        contributions[_campaignId][msg.sender] += msg.value;
    }

    // Finalize a campaign: either release funds or allow refunds
    function finalizeCampaign(uint _campaignId) external {
        Campaign storage campaign = campaigns[_campaignId];
        require(block.timestamp >= campaign.deadline, "Campaign has not yet ended.");
        require(!campaign.finalized, "Campaign is already finalized.");

        campaign.finalized = true;

        if (campaign.totalContributed >= campaign.goal) {
            // Goal reached, transfer funds to campaign creator
            campaign.creator.transfer(campaign.totalContributed);
        } else {
            // Goal not reached, allow refunds
            for (uint i = 0; i < campaignCount; i++) {
                address contributor = msg.sender;
                uint contribution = contributions[_campaignId][contributor];
                if (contribution > 0) {
                    contributions[_campaignId][contributor] = 0;
                    payable(contributor).transfer(contribution);
                }
            }
        }
    }

    // Allow contributors to withdraw their funds if the campaign fails
    function withdrawContribution(uint _campaignId) external {
        Campaign storage campaign = campaigns[_campaignId];
        require(block.timestamp >= campaign.deadline, "Campaign has not yet ended.");
        require(campaign.totalContributed < campaign.goal, "Campaign met its goal.");
        require(!campaign.finalized, "Campaign already finalized.");

        uint contributedAmount = contributions[_campaignId][msg.sender];
        require(contributedAmount > 0, "No contributions to withdraw.");

        contributions[_campaignId][msg.sender] = 0;
        payable(msg.sender).transfer(contributedAmount);
    }
}
