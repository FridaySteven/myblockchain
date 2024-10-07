// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

/// if state change cos gas
/// 

contract SimpleStorage {
    // this will get initialized to 0
    uint256 favoriteNumber = 5;

    // create new object call People
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // create empty with object People
    People[] public people;

    // create new map
    mapping(string => uint256) public nameToFavoriteNumber;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // 2 way to assing arg (with index) or (with name)
        people.push(People(_favoriteNumber, _name));
        // people.push(People({
        //     name: _name,
        //     favoriteNumber: _favoriteNumber
        // }));

        // store in map format
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}