pragma solidity ^0.4.19;

contract Selector {
    function e() public view returns (bytes4) {
        // thisが付くと外部呼び出し
        return this.e.selector;
    }

    function f() public pure returns (uint) {
        // return f.selector;
        return g();
    }

    function g() internal pure returns (uint) {
        // internal修飾子はコントラクト外から呼べない
        return 0;
    }
}