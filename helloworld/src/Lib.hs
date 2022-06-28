module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = do 
  putStrLn "welcome"
  name <- getLine
  putStrLn $ "hello," ++ name
