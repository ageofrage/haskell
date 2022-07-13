module Lib
    ( capslocker
    ) where

import Control.Monad
import Data.Char

capslocker :: IO ()
capslocker = do
  contents <- getContents
  putStrLn $ map toUpper contents