module Reverse where

rvrs :: String -> String
rvrs string = drop 9 string ++ 
                drop 6 (take 9 string) ++ 
                take 5 string


main :: IO ()
main = print (rvrs "curry is awseome")
