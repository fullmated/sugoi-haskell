-- how to load
-- :load qsort.hs
module QSort where

-- aはordering可能
-- aのリストを受け取ってaのリストを返す
qsort :: (Ord a) => [a] -> [a]

-- パターンマッチング: 関数定義: []なら[]を返す
qsort [] = []
-- パターンマッチング: 関数定義: (x:xs)にマッチする場合
-- xはリストの先頭要素
-- xsは先頭を除いた残りのリスト
qsort (x:xs) = 
  -- リスト内包表記: x以下の要素を抽出
  let smallerOrEqual = [a | a <- xs, a <= x]
  -- リスト内包表記: xより大きい要素を抽出
      larger = [a | a <- xs, a > x]
  -- つまりリストの先頭要素をpivotとしている

  -- pivotは上で作ったリストの間に入っていればいいのでそのように並び替える
  -- あとは分割統治法のノリで再帰をかける
  in qsort smallerOrEqual ++ [x] ++ qsort larger