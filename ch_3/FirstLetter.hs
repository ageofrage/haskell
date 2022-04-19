firstLetter :: String -> String
firstLetter "" = "文字が空です"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]