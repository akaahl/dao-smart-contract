// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    constructor(address initialOwner) Ownable() {}

    uint256 private s_number;

    // Emitted when the stored s_number changes
    event ValueChanged(uint256 newNumber);

    // Stores a new s_number in the contract
    function store(uint256 newNumber) public onlyOwner {
        s_number = newNumber;
        emit ValueChanged(newNumber);
    }

    // Reads the last stored s_number
    function retrieve() public view returns (uint256) {
        return s_number;
    }
}
