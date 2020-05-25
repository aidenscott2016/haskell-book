module Chapter4Ex1 where

data Mood = Blah | Woot deriving Show

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood Woot = Blah



isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = reverse x == x


myAbs :: Integer -> Integer
myAbs x = if x < 0 then x - x - x else x



f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f t1 t2 = ((snd t1, snd t2), (fst t1, fst t2))

x  = (+)
f2 xs = x w 1 where w = length xs

not :: Bool -> Bool
length :: [a] -> Integer
concat :: [[a]] -> [a]
head :: [a] -> a
(<) :: (Ord a) => a -> a -> Bool

1 - y - 10

1 - 11 - 10

1: a
2: d
3: d
4: c
5: a
6: e
7: e -- wrong. we know a is also a num from the paramenters
8: a
9: c