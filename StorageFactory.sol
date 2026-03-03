// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.18; // stating the version of solidity we will use

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage public simpleStorage; // SimpleStorage refers to the contract we importer, simpleStorage refers to the variable
    // function that will deploy a simple storage contract
    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }
}