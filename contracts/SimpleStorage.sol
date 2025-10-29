// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; //stating version

contract SimpleStorage{
    uint256 favnum2;
    struct Person{
        string name;
        uint256 favnum;
    }
    // Person public myfriend = Person({favnum: 7, name: "Jungkook"});
    Person[] public myfriends;

    mapping(string => uint256) public namefavnum; 
    function store(uint256 _favnum2) public virtual {
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