module Chapter9.ThyFearfulSymmetry (myWord) where

myWord :: Char -> String -> [String]
myWord _ [] = []
myWord c x  = word : myWord c remainder
  where
    trim      = dropWhile (c ==)
    remainder = trim . dropWhile (c /=) $ x
    word      = takeWhile (c /=) x

x = "girls just wanna have fun"
y = " girls just wanna have fun"

