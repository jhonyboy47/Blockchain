pragma solidity 0.5.1;
//TODO: Get this to work!!!
//Rewatch Solidity Step By Step - Smart Contract Developer Tutorial #4
contract MyContract {

    mapping(address => uint256) public balances;
    address payable wallet;

    event Purchase (
        address _buyer,
        uint256 _amount
    );

    constructor (address payable _wallet) public {

        wallet = _wallet;
    }

    function external payable {
        buyToken();
    }
    function buyToken() public payable {
        //buy a Token
        balances[msg.sender] += 1;
        //send ether to the wallet
        wallet.transfer(msg.value);
        emit Purchase(msg.send, 1);
    }


}