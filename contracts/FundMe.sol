// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe {
     uint256 minimumUsd = 50;

     function fund () public payable  {

        // adding check for minusd

        require(msg.value >= minimumUsd, "Atleast 50 USD are required for the transaction.");
     }

     function getPrice () public view {
        // ABI
        // Address 0x694AA1769357215DE4FAC081bf1f309aDC325306

        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound ) = priceFeed.latestRoundData();
        
     }

     function getConversion () public {

     }

}