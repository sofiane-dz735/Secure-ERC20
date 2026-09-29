// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title SecureERC20
 * @author Sofiane Maza - El Eulma, DZ
 * @notice Gas-optimized, secure ERC20 built on Termux
 */
contract SecureERC20 is ERC20, Ownable {
    uint256 public constant MAX_SUPPLY = 1_000_000 * 10**18;
    
    constructor() ERC20("SecureDZ Token", "SDZ") Ownable(msg.sender) {
        _mint(msg.sender, 100_000 * 10**18); // initial supply
    }

    function mint(address to, uint256 amount) external onlyOwner {
        require(to != address(0), "Zero address");
        require(totalSupply() + amount <= MAX_SUPPLY, "Cap exceeded");
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }
}
