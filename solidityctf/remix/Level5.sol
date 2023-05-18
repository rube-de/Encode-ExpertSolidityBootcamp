// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

/*
interface Isolution5 {
    function solution(bytes32 b, bytes32 ex, bytes32 modulus) external returns (bytes32 result);
}
*/

contract Level_5_Solution {
        
    function solution(bytes32 b, bytes32 e, bytes32 m) external 
    returns (bytes32 result) {
      assembly {
            // Free memory pointer
            let pointer := mload(0x40)

            // Define length of base, exponent and modulus. 0x20 == 32 bytes
            mstore(pointer, 0x20)
            mstore(add(pointer, 0x20), 0x20)
            mstore(add(pointer, 0x40), 0x20)

            // Define variables base, exponent and modulus
            mstore(add(pointer, 0x60), b)
            mstore(add(pointer, 0x80), e)
            mstore(add(pointer, 0xa0), m)

            // Store the result
            let value := mload(0xc0)

            // Call the precompiled contract 0x05 = bigModExp
            if iszero(call(not(0), 0x05, 0, pointer, 0xc0, value, 0x20)) {
                revert(0, 0)
            }

            result := mload(value)
        }
    }
    
}