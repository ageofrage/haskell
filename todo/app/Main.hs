module Main where

import System.Environment
import System.IO
import Data.List
import Lib

dispatch :: String -> [String] -> IO ()
dispatch "add" = add
dispatch "view" = view
dispatch "remove" = remove


main :: IO ()
main = do
  (command:argList) <- getArgs
  dispatch command argList
