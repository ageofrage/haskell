doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
  then x
  else x * 2
  
doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

arithmetic xs a b = [ x * a + b | x <- xs, x > 0]
