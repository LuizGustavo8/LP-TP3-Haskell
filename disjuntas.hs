disjuntas :: Eq a => [a] -> [a] -> Bool
disjuntas [] _ = True
disjuntas (x:xs) ys = naoEstaNaLista x ys && disjuntas xs ys

naoEstaNaLista :: Eq a => a -> [a] -> Bool
naoEstaNaLista _ [] = True
naoEstaNaLista x (y:ys)
  | x == y = False
  | otherwise = naoEstaNaLista x ys