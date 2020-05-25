{-# LANGUAGE NoMonomorphismRestriction #-}
module DetermineTheType where
-- simple example
example = 1

a = (* 9) 6
-- a :: Num a -> a
-- a = 54

b = head [(0, "dog"), (1, "cat")]
-- b :: (Num a -> a, [Char])
-- b = (0, "dog")

c = head [(0 :: Integer, "dog"), (1, "cat")]
-- c :: (Integer, [Char])
-- c = (0, "dog")

d = if False then True else False
-- d :: False
-- d = False -- incorrect
-- d :: Bool 


e = length [1, 2, 3, 4]
-- e :: Int
-- e = 4

f = (length [1, 2, 3, 4]) > (length "TACOCAT")
-- f = 4 > 7
-- f = False
-- f :: False -- incorrect
-- f :: Bool


x = 5
y = x + 5

w = y * 10
-- w :: Integer -- incorrect. Misremembered the pragma
-- w :: Num a => a 

z y = y * 10
-- z :: Num a => a -> a

f' = 4 / y
-- f' :: Fractional a => a

x' = "Julie"
y' = " <3 "
z' = "Haskell"
f'' = x' ++ y' ++ z'
-- f'' :: [Char]


{- 
    2 fully - conrete - concrete
    3 fully, constrained, concrete
    4 fully, fully, concete
    5 
 -}

functionH :: (x, y) -> x
functionH (x, _) = x

-- functionC :: (Ord x ) => x -> x -> Bool
functionC x y = if (x > y) then True else False

-- functionS :: (x,y) -> y
functionS (x, y) = y



z''' x = x +1