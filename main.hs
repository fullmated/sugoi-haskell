{-
  mainのサンプル。
  基本的にここでは作業せず、モジュールを作成してghciで都度ロードして実験しまくる方針。
-}

module Main where
import Fac

fizz :: Int -> String
fizz n | n `mod` 15 == 0  = "FizzBuzz"
       | n `mod` 3  == 0  = "Fizz"
       | n `mod` 5  == 0  = "Buzz"
       | otherwise = show n

main :: IO()
main = mapM_ putStrLn $ map fizz [1..100]