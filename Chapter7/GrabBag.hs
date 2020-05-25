addOneIfOdd n = case odd n of
    True  -> f n
    False -> n
    where f = \n -> n + 1

addFive = \x -> \y -> (if x > y then y else x) + 5

mFlip f x y = f y x


k (x, y) = x
k1 = k ((4 - 1), 10)
k2 = k ("three", (1 + 2))
k3 = k (3, True)

f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f (a, b, c) (d, e, f) = ((a, d), (c, f))
