module Print3Broken where


a b = 1 + b
main :: IO ()
main = do
  putStrLn greeting
  printSecond
  where greeting = "yarr"


