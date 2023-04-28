//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

contract StorageVictim {
    // No use of owner  throughout the use of smart contract so we can save space by not defining it.
    // address immutable owner;

    struct Storage {
        address user;
        uint256 amount;
    }

    mapping(address => Storage) storages;

    // constructor() {
    // owner = msg.sender;
    // }

    // Creating
    function store(uint256 amount) public {
        // uninitialised pointer. str.user points to the storage address 0 which is "owner"

        // Storage storage str;

        // str.user = msg.sender;

        // str.amount = _amount;

        storages[msg.sender] = Storage(msg.sender, amount);
    }

    function getStore() public view returns (address, uint256) {
        Storage storage str = storages[msg.sender];

        return (str.user, str.amount);
    }

    // function getOwner() public view returns (address) {
    //     return owner;
    // }
}
