avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x | y >= 0.7  = 'C'
           | y >= 0.9  = 'A'
           | y >= 0.8  = 'B'
           | y >= 0.59 = 'D'
           | y < 0.59  = 'F'
           | otherwise = 'E'
    where y = x / 100
 {-
    returns true when xs is a palindrome
    it can take a foldable eq
    (Eq a, Foladable a) -> a -> Bool -- actually 
 -}

numbers x | x < 0  = -1
          | x == 0 = 0
          | x > 0  = 1

{-
an indication of whether its argument is a positive or negative number or zero
-}