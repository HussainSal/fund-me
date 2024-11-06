// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract FundMe {
     uint256 minimumUsd = 50;

     function fund () public payable  {

        // adding check for minusd

        require(msg.value >= minimumUsd, "Atleast 50 USD are required for the transaction.");
     }
}