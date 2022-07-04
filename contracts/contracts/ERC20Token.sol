// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Token is ERC20{
    constructor() ERC20("ERC20Token", "ERC"){
    }

    function mint(uint256 _amount) external {
      _mint(msg.sender,_amount*10**18);
    }

    function burn(uint256 _amount) external {
      _burn(msg.sender,_amount*10**18);
    }
}
