trocar :: Int -> [Int]
trocar valor = reverter (cedulas valor [100, 50, 10, 5, 1])
  where
    cedulas _ [] = []
    cedulas valor (x:xs)
      | valor >= x = x : cedulas (valor - x) (x:xs)
      | otherwise  = cedulas valor xs

reverter :: [a] -> [a]
reverter [] = []
reverter (x:xs) = reverter xs ++ [x]