module CasePractice where

functionC x y =
    if z then x else y
    where z = x > y


ifEvenAdd2 n =
    case even n of
        True -> n+2
        False -> n


nums x =
    case compare x 0 of
        LT -> -1
        GT -> 1
        EQ -> 0

