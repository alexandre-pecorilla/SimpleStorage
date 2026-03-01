// SPDX-License-Identifier: MIT 
pragma solidity 0.8.18; // stating the version of solidity we will use

contract SimpleStorage { // Create the smart contract and name it - Similar to declaring a class in object oriented programming
    bool hasFavoriteNumber = true; // boolean (true/false)
    uint256 favoriteNumber = 11; // unsigned integer (can only be a positive number) of size 256 bits (or 32 bytes). if size not specified it defaults to 256 bits.
    string favoriteNumberText = "eleven"; // string for UTF-8 encoded text
    int256 favoriteInt = -11; // Signe integer (can be positive or negative) of size 256 bits
    address favoriteAddress = 0x00CC91Da9D072d35fA29EE851C65e8E40F295D1C; // Contains an ethereum address
    bytes32 favoriteBytes32 = "kitty"; // To store raw data or hexadecimal. Size is 32 bytes. If size isn't specified it's unlimited. Strings are bytes under the hood.
} 