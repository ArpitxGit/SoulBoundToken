// SPDX-License-Identifier: CC0-1.0
pragma solidity ^0.8.0;

import "./EIP4973.sol";

/*
As our contract EIP4973 was an abstract contract.
So we are creating a SoulBoundToken SBT contract using the abstract contract.

Abstract contracts are contracts that have at least one function without its implementation.
An instance of an abstract cannot be created.
Abstract contracts are used as base contracts so that the child contract can inherit and utilize its functions.
*/
contract SBT is EIP4973 {
    //owner for implementation of ownable functionality of SBT
    address public owner;
    //for count the tokens
    uint256 public count = 0;

    constructor () EIP4973("SoulBoundToken", "SBT") {
        //setting the owner in constructor
        owner = msg.sender;
    }

    function burn(uint256 _tokenId) external override {
        //what if receiver of the token tries to burn the token
        require(ownerOf(_tokenId) == msg.sender || msg.sender == owner, "Only owner can revoke this token, not the receiver!!!");
        _burn(_tokenId);
    }

    //to issue a token to a specific address
    function issue(address _issuee, string calldata _uri) external onlyOwner {
        _mint(_issuee, count, _uri);
        count += 1;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the Owner!!!");
        _;
    }
}