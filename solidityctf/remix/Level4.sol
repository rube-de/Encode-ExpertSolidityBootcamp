// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;


contract L4 {
        
    function solution(uint256 v) external {
        assembly {
            sstore(3, v)
        }

    }
}