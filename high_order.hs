module HighOrderFunc where

-- => がないので型クラス指定なし
-- (a -> a)なる関数を受け取ってaを返す関数に
-- 見た目としては (a -> a) と a の2引数の関数となる
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

applyThreeTime :: (a -> a) -> a -> a
applyThreeTime f x = f (f (f x))

{-
examples:

applyTwice (+3) 10
=> 16
(+3) の型は Int -> Int

applyTwice succ 10
=> 12

applyThreeTime succ 10
=> 13

-}

{-
maxのカリー化関数を調べてみたやつ:

2個が1個になるイメージ
:t max
max :: Ord a => a -> a -> a

:t (max 5)
(max 5) :: (Ord a, Num a) => a -> a

なので、applyTwiceも

:t applyTwice
applyTwice :: (a -> a) -> a -> a

:t (applyTwice succ)
(applyTwice succ) :: Enum a => a -> a
-}