combinations :: Int -> [a] -> [[a]]
combinations 0 _ = [[]]
combinations n xs = [ xs !! i : x | i <- [0..((length xs) - 1)] 
                                  , x <- combinations (n - 1) (take i xs ++ drop (i + 1) xs) ]