// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;
/*
interface Isolution3 {
    function solution(address addr) external view 
    returns (uint256 codeSize);
}
*/
contract L3 {
    function solution(address a) external view returns (uint) {
        assembly {
            mstore(0x80, extcodesize(a))
            return(0x80, 0x20)
            //codeSize := extcodesize(addr)
        }
    }
}