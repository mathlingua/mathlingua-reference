# Collections

Collection forms describe set-like or collection-like structure.

```mlg
{x_ : ...}
{x__ : ...}
X ::= {x__ : ...}
```

`x_` means the collection accepts one value, whose value may itself have structure. `x__` means the collection can accept any number of values treated as a tuple-like input.

Collection forms matter for `member_of` reduction. A type can describe a collection target directly, or an `Enables.from:` capability can expose a cast literal such as `\set@{x_ : x_ is \real}`.
