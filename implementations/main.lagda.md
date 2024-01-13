# An O(1) prime checking algorithm (95% accurate)

```agda
module main where

data ℕ : Set where
  zero : ℕ
  succ : ℕ → ℕ

data Bool : Set where
  true : Bool
  false : Bool

is-prime : ℕ → Bool
is-prime n = false
```
