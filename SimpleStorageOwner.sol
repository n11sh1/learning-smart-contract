// バージョンプラグマの指定
pragma solidity ^0.4.0;

contract SimpleStorageOwner {
    // 変数の宣言
    uint storedDate;
    // コントラクトを作成したアカウントのアドレスを入れる
    address owner;

    // コンストラクタ
    function SimpleStorageOwner() public {
        owner = msg.sender;
    }

    // 独自修飾子
    modifier onlyOwner {
        // コントラクトへの呼び出しがコントラクトの作成者かどうかを確認
        // 違ったらrevertが発生する
        require(msg.sender == owner);

        // _ は修飾子が付けられた関数を実行するという意味
        _;
    }

    // storedDateを変更する
    function set(uint _x) public onlyOwner {
        storedDate = _x;
    }

    // storedDateを取得する
    function get() public constant returns (uint) {
        return storedDate;
    }
}