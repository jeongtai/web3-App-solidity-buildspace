// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    string[] public senderAddress;

    constructor() {
        console.log("YOU KNOW WHAT I AMwwwww SAYING IT?");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender); // msg.sender = 함수 호출한 지갑 주소
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function saveSenderAddressPush() public {
        senderAddress.push(string(msg.sender));
        console.log(senderAddress);
    }
}