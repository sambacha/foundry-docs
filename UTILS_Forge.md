---
created: 2022-01-02T13:03:30 (UTC -08:00)
tags: [rust,rustlang,rust-lang,utils]
author: 
---

# forge::utils - Rust

> ## Excerpt
> API documentation for the Rust `utils` mod in crate `forge`.

---
Default Path to where the contract artifacts are stored

Default local RPC endpoint

The path to where the contract artifacts are stored

Reads the `ETHERSCAN_API_KEY` env variable

Determines the artifacts directory to use given the root path to a project’s workspace.

Determines the source directory to use given the root path to a project’s workspace.

Tries to extract the `Contract` in the `DAPP_JSON` file

Returns the right subpath in a dir

Securely reads a secret from stdin, or proceeds to return a fallback value which was provided in cleartext via CLI or env var

The rpc url to use If the `ETH_RPC_URL` is not present, it falls back to the default `http://127.0.0.1:8545`

Initializes a tracing Subscriber for logging
