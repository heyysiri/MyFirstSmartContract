// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //stating version

contract SimpleStorage{
    // basic datatypes: boolean, uint (+ve), int, address, bytes
    // bool hasfavnum = true;
    // int256 favnum = -88;
    // string favnumintext = "eithgy-eight";
    uint256 favnum2;
    // address myadd = 0xD45Ea71269E2F12f63A84884558995fb85DC3535;
    // bytes32 favbytes32 = "cat";
    //uint256[] listFav;
    struct Person{
        string name;
        uint256 favnum;
    }
    // Person public myfriend = Person({favnum: 7, name: "Jungkook"});
    Person[] public myfriends;

    mapping(string => uint256) public namefavnum; 
    function store(uint256 _favnum2) public {
        favnum2 = _favnum2;
       
    }
    function retrieve() public view returns(uint256){
        return favnum2;
    }
    function addfriends(string memory _name, uint256 _favnum) public {
        myfriends.push(Person(_name, _favnum));
        namefavnum[_name] = _favnum;
    }
}