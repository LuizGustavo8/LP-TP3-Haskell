intercalar :: [Int] -> [Int] -> [Int]
intercalar xs ys = intercalando xs ys []
  where
    intercalando [] ys acc = acc ++ ys
    intercalando xs [] acc = acc ++ xs
    intercalando (x:xs) (y:ys) acc
      | x <= y    = intercalando xs (y:ys) (acc ++ [x])
      | otherwise = intercalando (x:xs) ys (acc ++ [y])