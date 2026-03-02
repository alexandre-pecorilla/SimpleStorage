// SPDX-License-Identifier: MIT 
pragma solidity 0.8.18; // stating the version of solidity we will use

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

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
    }
} 