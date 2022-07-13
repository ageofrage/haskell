module Lib
    ( todo
    ) where

import System.IO

todo :: IO ()

todo = do
  todoItem <- getLine
  appendFile "todo.txt" (todoItem ++ "\n")

  