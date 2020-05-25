-- Type signature of general function
-- (++) :: [a] -> [a] -> [a]
-- How might that change when we apply
-- it to the following value?
myConcat x = x ++ " yo"
{-  type signature of ++ doens't change but myconcat will be String x => x => x
Incorrect it goes down to concrete type here and is myconcat :: [Char] -> [Char]
- -}

-- General function
-- (*) :: Num a => a -> a -> a
-- Applied to a value
myMult x = (x / 3) * 5
{-  
    myMult :: Num a => a -> a
    incorrect
    myMult :: Fractional a => a -> a
    anything divided becomes a fractional
-}

-- take :: Int -> [a] -> [a]
myTake x = take x "hey you"

{- 
    take :: Int -> [char]
-}

-- (>) :: Ord a => a -> a -> Bool
myCom x = x > (length [1..10])
{-
    myCom:: Int -> Bool
-}

-- (<) :: Ord a => a -> a -> Bool
myAlph x = x < 'z'
{-
    myAlph :: Char -> Bool
-}