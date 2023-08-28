somaParciais :: Num a => [a] -> [a]
somaParciais xs = somaParciais' xs 0

somaParciais' :: Num a => [a] -> a -> [a]
somaParciais' [] _ = []
somaParciais' (x:xs) acc = (x + acc) : somaParciais' xs (x + acc)