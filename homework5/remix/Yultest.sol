// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract Yultest {

    function addNumbers() external pure returns (uint){
        assembly{
            mstore(0x80, add(0x07, 0x08))
            return (0x80, 32)
        }
    }
}