pragma solidity ^0.4.19;

contract Integers {
    // "3 / 2"は切り捨てられて"1"になり、"1 * 2"で"2"が返る
    function getTwo() public pure returns (uint) {
        uint a = 3;
        uint b = 2;
        return a / b * 2;
    }

    // リテラルなので"3 / 2"は切り捨てられず"1.5"になり、"1.5 * 2"で"3"が返る
    function getThree() public pure returns (uint) {
        return 3 / 2 * 2;
    }

    // Solidityではコンパイルが通らない
    function divByZero() public pure returns (uint) {
        // return 3 / 0;
    }

    function shift() public pure returns (uint[]) {
        uint[] memory a = new uint[](2);

        // 16 * 2 ** 2 = 64
        a[0] = 16 << 2;

        // 16 / 2 ** 2 = 4
        a[1] = 16 >> 2;

        return a;
    }
}