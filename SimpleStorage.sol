// バージョンプラグマの指定
pragma solidity ^0.4.0;

// コンストラクタの宣言
contract SimpleStorage {
    
    // 変数の宣言
    uint storedData;
    
    // storedDataを変更する
    function set(uint _x) public {
        storedData = _x;
    }
    
    function get() public constant returns (uint) {
        return storedData;
    }
}
