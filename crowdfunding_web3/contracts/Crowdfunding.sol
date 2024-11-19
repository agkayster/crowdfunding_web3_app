// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// we must specify the "Types" below
contract CrowdFunding {
    // all we need to create a campaign
    struct Campaign {
        address owner;
        string title;
        string description;
        uint256 target;
        uint256 deadline;
        uint256 amountCollected;
        string image;
        address[] donators;
        uint256[] donations;
    }

    // use a mapping to access our campaigns
    mapping(uint256 => Campaign) public campaigns;

    // to keep track of number of campaigns created, in order to give them ID's
    uint256 public numberOfCampaigns = 0;

    // All functions below make up all the logic of our smart contract. using "public" specifies, it can be used in the frontend. "returns" enables us to return the "ID" which is a number of a specific campaign
    function createCampaign(
        address _owner,
        string memory _title,
        string memory _description,
        uint256 _target,
        uint256 _deadline,
        string memory _image
    ) public returns (uint256) {
        Campaign storage campaign = campaigns[numberOfCampaigns];

        // "require" statement is like a test to see that everything is good. is everything okay?
        require(
            campaign.deadline < block.timestamp,
            "The deadline should be a date in the future."
        );

        // if everything is okay
        campaign.owner = _owner;
        campaign.title = _title;
        campaign.description = _description;
        campaign.target = _target;
        campaign.deadline = _deadline;
        campaign.image = _image;
        campaign.amountCollected = 0;

        numberOfCampaigns++;

        // index of the most newly created campaign
        return numberOfCampaigns - 1;
    }

    function donateToCampaign() {}

    // list of all the donators
    function getDonators() {}

    // to get the list of all campaigns
    function getCampaigns() {}
}
