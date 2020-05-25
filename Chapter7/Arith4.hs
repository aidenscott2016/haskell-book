-- arith4.hs
module Arith4 where
-- id :: a -> a
-- id x = x
roundTrip :: (Show a, Read b) => a -> b
roundTrip = read . show
z = 4
main = do
    print (roundTrip "hello"::Int)
    print (id 4)
