// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

/// if state change cos gas

/// contract like a class
/// each variable will like a index 
/// vasiable without visibility will be in [internal], we can set our self with [public], [private]
contract SimpleStorage {
    // this will get initialized to 0
    uint256 favoriteNumber = 5;

    // create new object call People
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    // create empty array with object People
    People[] public people;

    // create new map
    mapping(string => uint256) public nameToFavoriteNumber;
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    /// use [view] for display and ruturn type with [returns(<type>)]
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    /// memory: store on runtime, and clear after use
    /// storage: store for long time 
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