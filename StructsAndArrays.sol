pragma solidity 0.5.1;

//Structs
//Arrays
contract MyContract4 {
    //Array declaration type people
    Person[] public people;
    uint256 public peopleCount;

    struct Person {
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public{
        people.push(Person(_firstName, _lastName));
        peopleCount+=1;
    }



}