------------------------------------------------------
--  Exercise 7.9 - Programming in Haskell - Hutton  --
------------------------------------------------------

altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap f g xs = [toggleFunctions (f, g) n x | (x, n) <- zip xs [0..]]

toggleFunctions :: ((a -> b), (a -> b)) -> Int -> a -> b
toggleFunctions (f, g) n x  | even n        = f x
                            | otherwise     = g x
