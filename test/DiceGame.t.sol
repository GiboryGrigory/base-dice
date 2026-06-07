// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/DiceGame.sol";

contract DiceGameTest is Test {
    DiceGame public game;
    
    function setUp() public {
        game = new DiceGame();
    }
    
    function testDeployment() public view {
        assertEq(game.minBet(), 0.001 ether);
        assertEq(game.maxBet(), 0.1 ether);
    }
}
