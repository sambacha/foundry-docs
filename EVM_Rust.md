---
created: 2022-01-02T13:16:15 (UTC -08:00)
tags: [rust,rustlang,rust-lang,evm]
author: 
---

# evm - Rust

> ## Excerpt
> Ethereum Virtual Machine implementation in Rust

---

Allows to listen to runtime events.

Allows to listen to runtime events.

Core execution layer for EVM.

A sequencial memory. It uses Rust’s `Vec` for internal representation.

Opcode enum. One-to-one corresponding to an `u8` value.

Call interrupt resolution.

Create interrupt resolution.

Transfer from source to target, with given value.

Mapping of valid jump destination from code.

Capture represents the result of execution.

Trap which indicates that an `ExternalOpcode` has to be handled.
