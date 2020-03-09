module Fac where

{-
  example:
  factorial 200
-}
factorial n = if n == 0 then 1 else n * factorial (n - 1)