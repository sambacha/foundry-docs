---
created: 2022-01-02T13:24:59 (UTC -08:00)
tags: [rust,rustlang,rust-lang,evm_adapters]
source: file:///Users/sbacha/foundry/rustdocs/evm_adapters/index.html
author: 
---

# evm_adapters - Rust

> ## Excerpt
> evm-adapters

---
Expand description

Abstraction over various EVM implementations via the `Evm` trait. Currently supported: [Sputnik EVM](https://github.com/rust-blockchain/evm/) and [Evmodin](https://github.com/vorot93/evmodin).

Any implementation of the EVM trait receives [fuzzing support](file:///Users/sbacha/foundry/rustdocs/evm_adapters/src/fuzz.rs) using the [`proptest`](https://docs.rs/proptest) crate.

In order to implement cheatcodes, we had to hook in EVM execution. This was done by implementing a `Handler` and overriding the `call` function, in the [`CheatcodeHandler`](file:///Users/sbacha/foundry/rustdocs/evm_adapters/sputnik/cheatcodes/cheatcode_handler/struct.CheatcodeHandler.html)

When testing, it is frequently a requirement to be able to fetch live state from e.g. Ethereum mainnet instead of redeploying the contracts locally yourself.

To assist with that, we provide 2 forking providers:

1.  [`ForkMemoryBackend`](file:///Users/sbacha/foundry/rustdocs/evm_adapters/sputnik/rpc/struct.ForkMemoryBackend.html): A simple provider which calls out to the remote node for any data that it does not have locally, and caching the result to avoid unnecessary extra requests
2.  [`SharedBackend`](file:///Users/sbacha/foundry/rustdocs/evm_adapters/sputnik/cache/struct.SharedBackend.html): A backend which can be cheaply cloned and used in different tests, typically useful for test parallelization. Under the hood, it has a background worker which deduplicates any outgoing requests from each individual backend, while also sharing the return values and cache. This backend not in-use yet.

Fuzzing support abstracted over the [`Evm`](file:///Users/sbacha/foundry/rustdocs/evm_adapters/trait.Evm.html) used

Blocking wrapper around an Ethers middleware, for use in synchronous contexts (powered by a tokio runtime)

Errors related to the EVM call execution

The account that we use to fund all the deployed contracts

Low-level abstraction layer for interfacing with various EVMs. Once instantiated, one only needs to specify the transaction parameters
