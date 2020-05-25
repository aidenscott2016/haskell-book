data TisAnInteger =
    TisAn Integer

instance Eq TisAnInteger where
    (==) (TisAn i) (TisAn i') = i == i'

data TwoIntegers =
    Two Integer Integer

instance Eq TwoIntegers where
    (==) (Two a b) (Two a' b') = a == a' && b == b'


data StringOrInt =
    TisAnInt Int
  | TisAString String

instance Eq StringOrInt where
    (==) (TisAnInt i) (TisAnInt i') = i == i'
    (==) (TisAString s) (TisAString s') = s == s'


data Pair a =
    Pair a a

instance Eq Pair where 
    (==) (Pair x y) (Pair x' y') = x == x' && y == y' || x == y