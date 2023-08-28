shift :: Int -> [a] -> [a]
shift _ [] = []
shift 0 xs = xs
shift k (x:xs) = shift (k-1) (xs ++ [x])