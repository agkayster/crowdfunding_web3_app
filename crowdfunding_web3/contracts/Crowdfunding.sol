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
    uint256 public noOfCampaigns = 0;

// All functions below make up all the logic of our smart contract
    function createCampaign(){}
    function donateToCampaign(){}

    // list of all the donators
    function getDonators(){}

    // to get the list of all campaigns
    function getCampaigns(){}
}
