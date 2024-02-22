// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { SimpleStorage } from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {

    function store(uint256 _FavNumber) public override {
        FavNumber = _FavNumber + 5;
    }
}