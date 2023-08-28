distintos :: Eq a => [a] -> Bool
distintos [] = True
distintos (x:xs) = naoEstaNaLista x xs && distintos xs

naoEstaNaLista :: Eq a => a -> [a] -> Bool
naoEstaNaLista _ [] = True
naoEstaNaLista x (y:ys)
  | x == y = False
  | otherwise = naoEstaNaLista x ys