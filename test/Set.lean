/-
Copyright (c) 2022 Ian Benway. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Ian Benway.
-/

import Mathlib.Tactic.Set

example (x : Nat) (h : x = x): x = x := by
  set p := h
  set q : x = x := p
  apply q

example (x : Nat) (h : x + x - x = 3) : x + x - x = 3 := by
  set y := x with ←h2
  set w := y
  set z := w with h3
  set a := 3
  apply h
