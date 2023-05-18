// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

/*
interface Isolution5 {
    function solution(address owner, bytes32 messageHash, uint8 v, bytes32 r, bytes32 s) external pure 
    returns (bool isSignedByOwner);
}
*/

contract L6 {
        
    function solution(
        bytes32 h, 
        uint8 v, 
        bytes32 r, 
        bytes32 s    
    ) external pure returns (address a) {
        //bytes memory prefix = "\x19Ethereum Signed Message:\n32";
        bytes32 ph = keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", h));
        
        a = ecrecover(ph, v, r, s);
            
    }
    
}