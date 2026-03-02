// SPDX-License-Identifier: MIT 
pragma solidity 0.8.18; // stating the version of solidity we will use

contract SimpleStorage { // Create the smart contract and name it - Similar to declaring a class in object oriented programming
    uint256 public favoriteNumber; // If public isn't specified, it defaults to internal

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // manual getter function for favoriteNumber
    // when a variable is public, the compiler automatically create a getter function
    // so this is only for testing purposes
    // view keywords indicates our function will just read the state of the blockchain, not change it
    // that means calling this function doesn't require a transaction, but just a call to read the state
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
} 