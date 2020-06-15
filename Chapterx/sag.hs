import Data.List
import Text.Printf


compress:: String -> String
compress =  foldl reducer "" . group

reducer:: String -> String -> String
reducer acc [x] = acc ++ [x]
reducer acc curr = printf "%s%d%c" acc (length curr) (head curr)
