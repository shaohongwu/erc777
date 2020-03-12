pragma solidity ^0.5.0;

import "./ERC777.sol";
import "./Ownable.sol";

contract DOME is ERC777, Ownable {
    
    constructor(address[] memory defaultOperators)
        ERC777("dome", "DOME", defaultOperators )
        public
    {
        uint initialSupply = 3100000000 * 10 ** 18;
        _mint(msg.sender, msg.sender, initialSupply, "", "");
    }

    function lockAccount(address addr, bool lock) external onlyOwner {
        _lockeds[addr] = lock;
    }
}