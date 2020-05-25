module Chapter3Ex3 where

--a :: String -> String
a string = string

b string = string !! 4

c string = drop 4 string



thirdLetter :: String -> Char
thirdLetter string = string !! 3

letterIndex :: Int -> Char
letterIndex index = "string" !! index

--curry is awesome
rvrs :: String -> String
rvrs string = drop 9 string ++
              drop 6 (take 9 string)
              ++ take 5 string

