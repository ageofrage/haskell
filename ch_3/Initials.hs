initials :: String -> String -> String
initials first last = [f] ++ ". " ++ [l] ++ ". "
  where (f:_) = first
        (l:_) = last