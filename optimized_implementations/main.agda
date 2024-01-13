module main where
data ℕ : Set where
  z : ℕ
  s : ℕ → ℕ
data Bool : Set where
  t : Bool
  f : Bool
is-prime : ℕ → Bool
is-prime _ = f
