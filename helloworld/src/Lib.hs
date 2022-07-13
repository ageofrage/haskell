module Lib
    ( someFunc
    ) where

import Control.Monad

someFunc :: IO ()
someFunc = do 
  putStrLn "welcome"
  name <- getLine
  when (name == "agehara") $ do
    putStrLn $ "hello, master " ++ name
