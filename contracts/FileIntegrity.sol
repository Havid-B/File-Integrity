// SPDX-License-Identifier: UNLICENCED

pragma solidity 0.8.6;

contract FileIntegrity {
    mapping(address => bytes32) private files;

    function registerFile(string memory file, address person) public{
        bytes32 fileHash = keccak256(abi.encodePacked(file));
        files[person] = fileHash;
    }

    function validateFile(string memory file, address person) public view returns(bool) {
         bytes32 fileHash = keccak256(abi.encodePacked(file));
         bytes32 validFileHash = files[person];
         return fileHash == validFileHash;
    }
}