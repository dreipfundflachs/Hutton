-------------------------------------------------------
--  Exercise 7.10 - Programming in Haskell - Hutton  --
-------------------------------------------------------

toggleFunctions :: ((a -> b), (a -> b)) -> Int -> a -> b
toggleFunctions (f, g) n x  | even n        = f x
                            | otherwise     = g x

altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap f g xs = [toggleFunctions (f, g) n x | (x, n) <- zip xs [0..]]

luhnDouble :: Int -> Int
luhnDouble n    | n >= 5        = 2 * n - 9
                | otherwise     = 2 * n

luhn :: [Int] -> Bool
luhn ns = ((sum (altMap id luhnDouble (reverse ns)) `mod` 10) == 0)
