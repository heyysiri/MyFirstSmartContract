// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import "./SimpleStorage.sol";

contract StorageFactory{
    //uint256 public favnum
    //type visibility name
    SimpleStorage[] public list;
    function createSimpleStorageContract() public {
        SimpleStorage s1 = new SimpleStorage();
        list.push(s1);

    }
}