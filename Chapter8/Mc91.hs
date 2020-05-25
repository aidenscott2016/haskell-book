mc :: (Integral a) => a -> a
mc n | n > 100  = n - 10
     | n <= 100 = mc . mc $ (n + 11)

