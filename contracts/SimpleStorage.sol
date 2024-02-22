// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0;

contract SimpleStorage {

    uint256 FavNumber;

    struct Person {
        string Name;
        uint256 FavNumber;
    }

    Person[] public people;

    mapping(string => uint256) indexing;

    function store(uint256 _FavNumber) public virtual {
        FavNumber = _FavNumber;
    }

    function retrive() view public returns(uint256) {
        return FavNumber;
    }

    function addPerson(string memory _Name, uint256 _FavNumber) public {
        people.push(Person(_Name, _FavNumber));
        indexing[_Name] = _FavNumber;
    }

    function findFavNumber(string memory _Name) view public returns(uint256) {
        return indexing[_Name];
    }
}