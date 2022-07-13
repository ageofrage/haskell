module Lib
    ( add,view, remove
    ) where

import System.IO

add ::[String] -> IO ()
remove::[String] -> IO ()
view::[String] -> IO ()

add [fileName, todoItem] = appendFile fileName (todoItem ++ "\n")
remove [fileName, todoItem] = appendFile fileName (todoItem ++ "\n")
view [fileName, todoItem] = appendFile fileName (todoItem ++ "\n")
