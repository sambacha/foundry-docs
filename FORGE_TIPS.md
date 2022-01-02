

### formatting ds-test logs
() https://github.com/dapphub/dapptools/blob/728a9245fa5f78589b0cedec0ade2da5433ad792/src/hevm/src/EVM/UnitTest.hs#L830
1. https://github.com/gakonst/foundry/blob/master/evm-adapters/src/sputnik/cheatcodes/mod.rs#L68-L88
2. https://github.com/gakonst/foundry/blob/master/evm-adapters/src/sputnik/cheatcodes/cheatcode_handler.rs#L76-L109
3. https://github.com/gakonst/foundry/blob/master/evm-adapters/src/sputnik/cheatcodes/cheatcode_handler.rs#L263



### VSCode Config

> https://github.com/gakonst/dapptools-template/blob/master/.vscode/settings.json

```json

{
  "settings": {
    "solidity.remappings": [
      "ds-test/=$HOME/forge-example/forge-test/lib/ds-test/src/"
    ]
  }
}

```

## Remappings 

```sh
ds-test/=$(pwd)/lib/ds-test/src/
```

### passing state to `ds-test`

```sh
export DAPP_LIBRARIES=$(dapp --library-addresses)
export DAPP_TEST_STATE=$(dapp --make-library-state)
