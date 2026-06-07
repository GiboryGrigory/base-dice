// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";

/// @title DiceGame
/// @notice On-chain dice game with configurable odds
contract DiceGame is Ownable {
    uint256 public minBet = 0.001 ether;
    uint256 public maxBet = 0.1 ether;
    uint256 public houseEdge = 200; // 2%
    
    event Roll(address indexed player, uint256 amount, uint256 result, bool won);
    
    constructor() Ownable(msg.sender) {}
    
    function setLimits(uint256 _min, uint256 _max) external onlyOwner {
        minBet = _min;
        maxBet = _max;
    }
}
