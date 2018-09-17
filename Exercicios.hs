module Exercicios where

-- 1) Completar
-- map2 :: (a -> b -> c) -> [a] -> [b] -> [c]
-- map2 = zipWith
-- map2 f (x : xs) (y : ys) = [x]

--2) Gere as listas usando filter e map
--a) [1,11,121,1331,14641,161051,1771561]	
ex2A :: [Int] 
ex2A = map (11^) [1, 2, 3, 4, 5, 6]
--b) [1,2,3,5,6,7,9,10,11,13,14,15,17,18,19,21,22,23, 25,26,27,29,30,31,33,34,35,37,38,39]	
ex2B :: [Int]
ex2B = filter (\x -> mod x 4 /= 0) [1..40]
--c) ["AaBB", "AbBB", "AcBB", "AdBB", "AeBB", "AfBB", "AgBB"]	
ex2C :: [String]
ex2C = map (\x -> "A" ++ [x] ++ "BB") ['a'..'g']
--d) [5,8,11,17,20,26,29,32,38,41]
ex2D :: [Int]
ex2D = filter (\x -> not (elem x [14, 23, 35])) [5, 8..41]
--e) [1.0,0.5,0.25,0.125,0.0625,0.03125]
ex2E :: [Double]
ex2E = map (\x -> x/2) [2.0, 1.0, 0.5, 0.25, 0.125, 0.0625]
--f) [1,10,19,28,37,46,55,64]
ex2F :: [Int]
ex2F = map (\x -> x) [1, 10..64]
--g) [2,4,8,10,12,16,18,22,24,28,30]
ex2G :: [Int]
ex2G = filter (\x -> not (elem x [6, 14, 20, 26])) [2, 4..30]
--h) ['@','A','C','D','E','G','J','L']	
ex2H :: [Char]
ex2H = filter (\x -> not (elem x "BFHIK")) . map (\x -> x) $ ['@'..'L']