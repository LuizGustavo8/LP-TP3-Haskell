potencia :: Int -> Int -> Int
potencia _ 0 = 1
potencia x y = x * potencia x (y - 1)