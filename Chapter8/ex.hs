sumToN :: (Eq a, Num a) => a -> a
sumToN n = go 0 0
  where
    go n' acc | n' == n   = acc + n'
          | otherwise = go (n' + 1) (n' + acc)



-- let x = 
--         (0 + go 4 0) ==
--         (0 + (0 + (go 3 0))) ==
--         (0 + (0 + (0 + (go 2 0)))) ==
--         (0 + (0 + (0 + (0 + go 1 0)))) ==
--         (0 + (0 + (0 + (0 + (0 + (go 0 0 ))))))
--         (0 + (0 + (0 + (0 + (0 + (0)))))


multiply :: (Integral a) => a -> a -> a
multiply x 1 = x
multiply x 0 = 0
multiply x y = x + multiply x (y-1 )