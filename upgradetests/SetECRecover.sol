// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SetECRecover {
    address public signature;

    // This function returns a saved signature
    function getSignature() public view returns (address) {
        return signature;
    }

    // This function computes the signature of a hash and saves it
    function setSignature(
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public {
        signature = ecrecover(hash, v, r, s);
    }
}
