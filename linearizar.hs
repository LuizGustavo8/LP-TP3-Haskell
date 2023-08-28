linearizar :: [[Int]] -> [Int]
linearizar [] = []
linearizar (x:xs) = x ++ linearizar xs