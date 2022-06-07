//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "hardhat/console.sol";

contract TSToken is ERC20Burnable {
    constructor(uint256 initialSupply) ERC20("TAESEONG", "TS") {
        
        _mint(msg.sender, initialSupply);
    }
}