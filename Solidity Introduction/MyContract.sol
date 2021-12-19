pragma solidity 0.5.1; 

contract MyContract {
    string value; 
    
    constructor() public{
        value = "myValue"; 
    }

    //Public visibility makes function available to all people who have access to the contract on the block chain
    //View ???   
    function getValue() public view returns(string memory) {    
        return value;                                
    }

    function setValue(string memory _value ) public {
        value = _value; 
    } 


}