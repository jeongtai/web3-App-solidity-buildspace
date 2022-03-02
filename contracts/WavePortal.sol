// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
     address payable public manager;
     address[] public senderAddress;

    constructor() {
        console.log("YOU KNOW WHAT I AMwwwww SAYING IT?");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function saveSenderAddressPush() public {
        senderAddress.push(msg.sender);
        console.log("senders is {} ", senderAddress[0]);
    }//Member "log" not found or not visible after argument-dependent lookup in type(library console).
}