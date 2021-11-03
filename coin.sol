pragma solidity ^0.4.24;

import "./StandardToken.sol";

contract tbl is StandardToken {
    string public constant symbol = "4RKAL";
    string public constant name = "4RKAL COIN";
    uint public constant decimal = 18;
    
    uint256 public constant tokenUnit = 10**18;
    uint256 public constant oneBillion = 10**9;
    uint256 public constant maxTokens = 2 * oneBillion * tokenUnit;
    
    constructor() public {
        totalSupply_ = maxTokens;
        balances[msg.sender] = maxTokens;
    }
}
