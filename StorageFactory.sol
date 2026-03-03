// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.18; // stating the version of solidity we will use

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContracts; // SimpleStorage refers to the contract we importer, simpleStorage refers to the variable
    
    // function that will deploy a SimpleStorage contract
    function createSimpleStorageContract() public {
        listOfSimpleStorageContracts.push(new SimpleStorage());
    }

    // function to store a favorite number on a specified SimpleStorage contract
    // It calls the store function of the specified SimpleStorage contract
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageFavoriteNumber) public {

        // Get the SimpleStorage contract corresponding to the index
        SimpleStorage selectedSimpleStorageContract = listOfSimpleStorageContracts[_simpleStorageIndex];
        // Call the store function on the SimpleStorage contract to assign a new favorite number
        selectedSimpleStorageContract.store(_newSimpleStorageFavoriteNumber);
    }

    // Function to fetch the favorite number of a specified SimpleStorage contract
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        SimpleStorage selectedSimpleStorageContract = listOfSimpleStorageContracts[_simpleStorageIndex];
        return selectedSimpleStorageContract.retrieve();
    }
}