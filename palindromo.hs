palindromo :: Eq a => [a] -> Bool
palindromo xs = xs == reverter xs

reverter :: [a] -> [a]
reverter [] = []
reverter (x:xs) = reverter xs ++ [x]