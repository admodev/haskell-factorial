module Main where

factorial :: Int -> Int
factorial n =
  if n <= 1
    then 1
    else n * factorial (n - 1)

main :: IO ()
main = do
  putStrLn "Please enter a number to calculate it's factorial: "
  n <- getLine
  let x = (read n :: Int)
  let fac = factorial x
  putStrLn $ "Factorial of " ++ show x ++ " is: " ++ show fac
