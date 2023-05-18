// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract Homework6 {

    function amountPayed() external payable returns (uint) {
        assembly {
            mstore(0x80, callvalue())
            return(0x80, 0x20)
        }
    }
}