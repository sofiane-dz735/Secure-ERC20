// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/SecureERC20.sol";

contract SecureERC20Test is Test {
    SecureERC20 token;
    address owner = address(this);
    address user = address(0x1);

    function setUp() public {
        token = new SecureERC20();
    }

    function testInitialSupply() public view {
        assertEq(token.totalSupply(), 100_000 * 10 ** 18);
        assertEq(token.balanceOf(owner), 100_000 * 10 ** 18);
    }

    function testMint() public {
        token.mint(user, 1000 * 10 ** 18);
        assertEq(token.balanceOf(user), 1000 * 10 ** 18);
    }

    function test_RevertWhen_CapExceeded() public {
        vm.expectRevert("Cap exceeded");
        token.mint(user, 1_000_000 * 10 ** 18);
    }
}
