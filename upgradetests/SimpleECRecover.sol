// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleECRecover {
    // This function takes a hash, a v, r, s (components of an ECDSA signature) and returns the recovered address
    function recoverAddress(bytes32 hash, uint8 v, bytes32 r, bytes32 s) public pure returns (address) {
        return ecrecover(hash, v, r, s);
    }

    // This function verifies if the recovered address matches the provided address
    function verifySignature(
        bytes32 hash,
        uint8 v,
        bytes32 r,
        bytes32 s,
        address expectedAddress
    ) public pure returns (bool) {
        return ecrecover(hash, v, r, s) == expectedAddress;
    }
}
