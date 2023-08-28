somaImpares :: [Int] -> Int
somaImpares [] = 0
somaImpares (a : b) 
  | a `mod` 2 == 1 = a + somaImpares b
  | otherwise = somaImpares b