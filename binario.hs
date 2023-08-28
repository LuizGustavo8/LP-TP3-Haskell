binario :: Int -> [Int]
binario 0 = [0]
binario n
  | n < 0 = binarioAux (abs n)      -- complemento de dois para negativos
  | otherwise = reverter (binarioAux n)


binarioAux :: Int -> [Int]
binarioAux 0 = []
binarioAux n = n `mod` 2 : binarioAux (n `div` 2)

reverter :: [a] -> [a]
reverter [] = []
reverter (x:xs) = reverter xs ++ [x]