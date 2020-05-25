eft :: (Enum a, Eq a, Ord a) => a -> a -> [a]
eft f t | f == t = [t]
        | f > t = []
        | otherwise  = f : eft (succ f) t

eftBool :: Bool -> Bool -> [Bool]
eftBool = eft

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd = eft

eftInt :: Int -> Int -> [Int]
eftInt = eft

eftChar :: Char -> Char -> [Char]
eftChar = eft
