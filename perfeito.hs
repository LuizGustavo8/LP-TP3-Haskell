perfeito :: Int -> Bool
perfeito 0 = False
perfeito n = n == somaDivisores n

somaDivisores :: Int -> Int
somaDivisores n = somaDivisoresAux n 1 0
  where
    somaDivisoresAux :: Int -> Int -> Int -> Int
    somaDivisoresAux n divisor soma
      | divisor > n `div` 2 = soma
      | n `mod` divisor == 0 = somaDivisoresAux n (divisor + 1) (soma + divisor)
      | otherwise = somaDivisoresAux n (divisor + 1) soma