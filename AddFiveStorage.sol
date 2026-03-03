// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.18; // stating the version of solidity we will use

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage { // Inheritance -> AddFiveStorage inherits everything from SimpleStorage

    // here we give AddFiveStorage a new function that SimpleStorage doesn't have
    function sayHello() public pure returns(string memory) {
        return "Hello";
    }

    // override the store function of SimpleStorage
    function store(uint256 _newNumber) public override {
        myFavoriteNumber = _newNumber + 5;

        // alternatively if we wanted to do it by calling the parent function first
        // super.store(_newNumber);
        // myFavoriteNumber = myFavoriteNumber + 5;
    }
}