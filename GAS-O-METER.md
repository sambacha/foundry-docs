---
created: 2022-01-02T13:16:41 (UTC -08:00)
tags: [rust,rustlang,rust-lang,Gasometer]
author: 
---

# Gasometer in evm_gasometer - Rust

> ## Excerpt
> EVM gasometer.

---
```
pub struct Gasometer<'config> { /* fields omitted */ }
```

Expand description

EVM gasometer.

Create a new gasometer with given gas limit and config.

Returns the numerical gas cost value.

Reference of the config.

Remaining gas.

Total used gas.

Refunded gas.

Explictly fail the gasometer with out of gas. Return `OutOfGas` error.

Record an explict cost.

Record an explict refund.

Record `CREATE` code deposit.

Record opcode gas cost.

Record opcode stipend.

Record transaction cost.

Formats the value using the given formatter. [Read more](https://doc.rust-lang.org/1.57.0/core/fmt/trait.Debug.html#tymethod.fmt)

### impl<T> [Any](https://doc.rust-lang.org/1.57.0/core/any/trait.Any.html "trait core::any::Any") for T where  
    T: 'static + ?[Sized](https://doc.rust-lang.org/1.57.0/core/marker/trait.Sized.html "trait core::marker::Sized"), 

Immutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.57.0/core/borrow/trait.Borrow.html#tymethod.borrow)

Mutably borrows from an owned value. [Read more](https://doc.rust-lang.org/1.57.0/core/borrow/trait.BorrowMut.html#tymethod.borrow_mut)

### impl<T, U> [Into](https://doc.rust-lang.org/1.57.0/core/convert/trait.Into.html "trait core::convert::Into")<U> for T where  
    U: [From](https://doc.rust-lang.org/1.57.0/core/convert/trait.From.html "trait core::convert::From")<T>, 

The resulting type after obtaining ownership.

Creates owned data from borrowed data, usually by cloning. [Read more](https://doc.rust-lang.org/1.57.0/alloc/borrow/trait.ToOwned.html#tymethod.to_owned)

🔬 This is a nightly-only experimental API. (`toowned_clone_into`)

recently added

Uses borrowed data to replace owned data, usually by cloning. [Read more](https://doc.rust-lang.org/1.57.0/alloc/borrow/trait.ToOwned.html#method.clone_into)

The type returned in the event of a conversion error.

Performs the conversion.

The type returned in the event of a conversion error.

Performs the conversion.
