tensDigit :: Integral a => a -> a
tensDigit x = d
  where
    xLast = x `div` 10
    d     = xLast `mod` 10

tensDigit' :: Integral a => a -> a -> a
tensDigit' x = snd . flipModX . fst . flipModX where flipModX = flip divMod x

--   where xLast = fst (x `divMod` 10)
--         d     = snd (xLast `divMod` 10)

foldBool1 :: a -> a -> Bool -> a
foldBool1 x y z | z         = x
                | otherwise = y

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y z = case z of
    True  -> x
    False -> y

g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)
