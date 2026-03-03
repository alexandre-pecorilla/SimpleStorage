// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.18; // stating the version of solidity we will use

contract SimpleStorage { // Create the smart contract and name it - Similar to declaring a class in object oriented programming
    uint256 myFavoriteNumber; // If public isn't specified, it defaults to internal

    //uint256[] listOfFavoriteNumbers;

    // creating a struct
    struct Person {
        uint256 favoriteNumber;
        string name;
    }    

    // initialize the struct - 2 ways: 
    // Person public myFriend = Person(11, "Alex");
    // Person public alex = Person({favoriteNumber: 11, name: "Alex"});

    // creating a dynamic array of persons
    Person[] public listOfPeople;
    // a static array => Person[3] public listOfPeople;


    // create a mapping (dictionary)
    // that way we can find a person favorite number using their name
    // if a key doesnt exist, it returns the default value for the type (for uint256, it's 0)
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _myFavoriteNumber) public {
        myFavoriteNumber = _myFavoriteNumber;
    }

    // manual getter function for favoriteNumber
    // when a variable is public, the compiler automatically create a getter function
    // so this is only for testing purposes
    // view keywords indicates our function will just read the state of the blockchain, not change it
    // that means calling this function doesn't require a transaction, but just a call to read the state
    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    // Add a person and their favorite number to the list of people and to the mapping
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name)); // add a person to the array
        nameToFavoriteNumber[_name] = _favoriteNumber; // update the mapping 

    }
} 