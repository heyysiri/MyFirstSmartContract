
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{
    //overrides
    //virtual override
    function store(uint256 _newnum) public override {
        favnum2 = _newnum+7;
    }
}