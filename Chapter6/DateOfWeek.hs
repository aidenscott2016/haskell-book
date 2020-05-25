import Data.List (sort)
data DayOfWeek =
    Mon | Tue | Weds | Thu | Fri | Sat | Sun
    deriving (Show)

data Date =
    Date DayOfWeek Int
    deriving Show

instance Eq DayOfWeek where
    (==) Mon  Mon  = True
    (==) Tue  Tue  = True
    (==) Weds Weds = True
    (==) Thu  Thu  = True
    (==) Fri  Fri  = True
    (==) Sat  Sat  = True
    (==) Sun  Sun  = True
    (==) _    _    = False


instance Eq Date  where
    (==) (Date weekday dayOfMonth) (Date weekday' dayOfMonth') =
        weekday == weekday' && dayOfMonth == dayOfMonth'


instance Ord DayOfWeek where
    compare Fri Fri = EQ
    compare Fri _   = GT
    compare _   Fri = LT
    compare _   _   = EQ


{-
    -- 5
    -- GT
    -- no type error
    -- False
-}
type Subject = String
type Verb = String
type Object = String
data Sentence =
    Sentence Subject Verb Object
    deriving (Eq, Show)
s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

data Rocks =
    Rocks String deriving (Eq, Show)
data Yeah =
    Yeah Bool deriving (Eq, Show)
data Papu =
    Papu Rocks Yeah
    deriving (Eq, Show)

phew = Papu (Rocks "chases")(Yeah True)
equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

-- comparePapus :: Papu -> Papu -> Bool
-- comparePapus p p' = p > p'

jung :: [Int] -> Int
jung xs = head (sort xs)

yound :: Ord a => [a] -> a
yound xs = head (sort xs)

mySort :: [Char] -> [Char]
mySort = sort

signifier :: Ord a => [a] -> a
signifier xs = head (mySort xs)

