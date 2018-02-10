# learning-smart-contract
## Geth
### Start Command As RPC
```
$ geth --networkid "10" --nodiscover --datadir . --rpc --rpcaddr "localhost" --rpcport "8545" --rpccorsdomain "*" --rpcapi "eth,ner,web3,personal" --targetgaslimit "20000000" console 2>> ./error.log
```

### Attach Command
```
$ geth attach geth.ipc
```
