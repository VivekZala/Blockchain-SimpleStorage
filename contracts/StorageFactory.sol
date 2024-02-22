// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorage);
    }

    function sfStore(uint256 _SimpleStorageIndex, uint256 _SimpleStorageNumber) public {
        listOfSimpleStorageContracts[_SimpleStorageIndex].store(_SimpleStorageNumber);
    }

    function sfGet(uint256 _SimpleStorageIndex) view public returns(uint256) {
        return listOfSimpleStorageContracts[_SimpleStorageIndex].retrive();
    }

}