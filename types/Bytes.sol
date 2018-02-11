pragma solidity ^0.4.19;

contract Bytes {
    function staticBytes() public pure returns (bytes2) {
        bytes2 b = "ba";
        return b;
    }

    function dynamicBytes() public pure returns (bytes) {
        bytes memory a = "baaaaaaaaaa";
        return a;
    }

    function overCapacity() public pure returns (bytes2) {
        // COMPILE ERROR
        // bytes2 c = "ccc";
        // return c;
    }
}