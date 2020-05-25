import           Data.Set                       ( fromList )

-- firstNonRepeatingChar :: [Char] -> Maybe Char -> Maybe Char
-- firstNonRepeatingChar (currentChar : xs) Nothing =
--     firstNonRepeatingChar xs (Just currentChar)
-- firstNonRepeatingChar [] (Just previousChar) = Just previousChar
-- firstNonRepeatingChar [] Nothing             = Nothing
-- firstNonRepeatingChar (currentChar : xs) (Just previousChar) =
--     if currentChar == previousChar
--         then firstNonRepeatingChar xs (Just currentChar)
--         else Just currentChar



--function returns current if next /= current
-- firstNonRepeatingChar' :: Maybe Char -> [Char] -> Maybe Char
-- firstNonRepeatingChar' Nothing []  = Nothing
-- firstNonRepeatingChar' Nothing [x] = Just x
-- firstNonRepeatingChar' (Just x) [] = Nothing 
-- firstNonRepeatingChar' (Just previousChar) [x] =
--     if previousChar == x then Nothing else Just x
-- firstNonRepeatingChar' Nothing (x : xs) = firstNonRepeatingChar' (Just x) xs
-- firstNonRepeatingChar' (Just previousChar) (x : xs) =
--     if previousChar /= x then firstNonRepeatingChar' (Just x) xs else Just previousChar

firstNonRepeatingChar' :: Int -> [Char] -> Maybe (Char, Int)
firstNonRepeatingChar' i string = case string of
    []           -> Nothing
    [x         ] -> Just (x, i)
    (f : s : []) -> if f == s then Nothing else Just (s, i + 1)
    (f : s : rst) ->
        if f == s then firstNonRepeatingChar' (i + 2) rst else Just (f, i)
firstNonRepeatingChar = firstNonRepeatingChar' 1


Prelude Data.List > f str  = (+1) <$> (elemIndex 1 $ (\x -> length $ filter (==x) str) <$> str)

main :: IO ()
main =
    print
        $   show
        $   firstNonRepeatingChar
        <$> ["hello", "gggo", "llagee", "llllll", "", "x"]
    -- print $   show $   firstNonRepeatingChar' "gggo"





    -- ++ " " ++ ""


    -- show (firstNonRepeatingChar str Nothing)


