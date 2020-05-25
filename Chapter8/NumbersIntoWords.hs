module WordNumber where

import           Data.List                      ( intercalate )
import           Data.Char                      ( digitToInt )

-- digitToWord :: Int -> String
-- digitToWord x =   concat . intersperse "-" $ map wordNumber . digits $ x 

digitToWord :: Int -> String
digitToWord =    intercalate "-" . map wordNumber  . digits

digits :: Int -> [Int]
digits = map digitToInt . show


wordNumber :: Int -> String
wordNumber n = case n of
    0 -> "zero"
    1 -> "one"
    2 -> "two"
    3 -> "three"
    4 -> "four"
    5 -> "five"
    6 -> "six"
    7 -> "seven"
    8 -> "eight"
    9 -> "nine"
