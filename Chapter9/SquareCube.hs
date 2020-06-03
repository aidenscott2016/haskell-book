mySqr = [ x ^ 2 | x <- [1 .. 5] ]
myCube = [ y ^ 3 | y <- [1 .. 5] ]
tuples = [(x,y) | x <- mySqr, y <- myCube, x < 50 , y < 50]

-- Apply another function to that list comprehension to determine
-- how many tuples inhabit your output list.
len = length  tuples