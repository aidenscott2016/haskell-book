i :: a -> a
i a = a

-- c :: a -> b -> a
-- c a b = a

-- c'' = c

c' :: a -> b -> b
c' a b = b

r :: [a] -> [a]
r = take 10
-- r = drop 10

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB  a = bToC $ aToB a


a :: (a -> c) -> a -> a
a aToC a = a

a' :: (a -> b) -> a -> b
a' aToB a = aToB a