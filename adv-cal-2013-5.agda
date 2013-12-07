module adv-cal-2013-5 where

open import Data.Nat using (ℕ; zero; suc; _*_; _>_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)

postulate
  f : ∀ n → n > 0 → ℕ
  h : ∀ n (H : 2 * n > 0) → f (2 * n) H ≡ n
  H : ∀ {x} → x > 0

q : ∀ {x} → (x ≡ 2 * 1) → f x H ≡ 1
q refl = h 1 H
