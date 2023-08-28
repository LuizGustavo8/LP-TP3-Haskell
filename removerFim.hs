removerFim :: Int -> [a] -> [a]
removerFim n xs = reverter (remover n (reverter xs))
  where
    remover 0 xs = xs
    remover _ [] = []
    remover k (_:ys) = remover (k-1) ys

reverter :: [a] -> [a]
reverter [] = []
reverter (x:xs) = reverter xs ++ [x]