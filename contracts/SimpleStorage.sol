// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; //version

contract SimpleStorage {
    uint256 public favoriteNumber;

    struct Person {
        uint256 nfavouriteNumber;
        string name;
    }

    // Person public pat = Person({nfavouriteNumber:7,name:"Pat" });
    Person[] public listOfPeople;//dynamic array


    function store(uint256 _favoriteNumber) public virtual  {
        favoriteNumber = _favoriteNumber;
    }

    mapping(string=>uint256) public nameToFavouriteNumber;

    //view , pure
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    //calldata cant be changed or menupulated, memory can be changed or menupulated

    function addPeople(string memory name,uint256 _favouriteNumber) public {

        listOfPeople.push( Person(_favouriteNumber,name) );
        nameToFavouriteNumber[name] = _favouriteNumber;
    }

}