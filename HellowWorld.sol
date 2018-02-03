pragma solidity ^0.4.13;

contract HelloWorld {
    string message;

    function setMessage(string _message) {
        message = _message;
    }

    function sayHello() returns (string) {
        return message;
    }
}