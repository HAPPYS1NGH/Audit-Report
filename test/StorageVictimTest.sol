//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import "../src/StorageVictim.sol";

contract StorageVictimTest is StorageVictim {
    address echidna = msg.sender;

    constructor() {}

    // function echidna_get_Owner() public view returns (bool) {
    //     return msg.sender != owner;
    // }

    function test_assert_store(uint256 _amount) public {
        store(_amount);
        (address add, uint256 amo) = getStore();
        assert(add == msg.sender);
        assert(amo == _amount);
    }

    function echidna_assert_get_store() public view returns (bool) {
        (address add,) = getStore();
        return (msg.sender == add || add == address(0));
    }
}
