// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


struct UserOperation {
    address sender; // Who is initiating the operation
    bytes callData; // The actual call data to execute
    uint256 callGas; // Gas for the call itself
    uint256 verificationGas; // Gas for verifying the operation
    uint256 preVerificationGas; // Gas to be paid before verification (for loading state, etc.)
    uint256 maxFeePerGas; // Max fee per gas the user is willing to pay
    uint256 maxPriorityFeePerGas; // Max miner bribe
    address paymaster; // Address of the paymaster contract that will pay for the transaction
    bytes paymasterData; // Data for the paymaster
    uint256 nonce; // Operation nonce to prevent replays
}
