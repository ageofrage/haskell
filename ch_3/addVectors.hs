addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (0, 1)(1, 0) = (100,100)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)