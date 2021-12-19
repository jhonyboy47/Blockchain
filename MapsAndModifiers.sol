pragma solidity 0.5.1;
//Mapping 
//Modifiers
contract MyContract5{
    
    uint256 public peopleCount;
    // Mapping (key: uint, value: Person)
    mapping(uint => Person) public people;

    address owner;

    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    uint openingTime = 1639909844;
    modifier onlyWhileOpen(){
        require(block.timestamp >= openingTime);
        _;
    }

    constructor() public {
        owner = msg.sender;
    }

    struct Person {
        uint id; 
        string _firstName;
        string _lastName;
    }

    function addPerson(
        string memory _firstName, 
        string memory _lastName
    ) 
        public 
        // onlyOwner 
        onlyWhileOpen   
    {

        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }

    function incrementCount() internal{
        peopleCount += 1; 
    }

}


