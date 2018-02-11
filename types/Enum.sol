pragma solidity ^0.4.19;

contract Enum {
    enum Colors { Red, Blue, Green }
    Colors color;
    Colors constant defaultColor = Colors.Green;

    function setBlue() public {
        color = Colors.Blue;
    }

    function getColor() public view returns (Colors) {
        // setBlue()を呼んでない場合は0(Red)が返る
        // setBlue()を呼んだあとは1(Blue)が返る
        return color;
    }

    function getDefaultColor() public pure returns (uint) {
        // 2(Green)が返る
        return uint(defaultColor);
    }
}