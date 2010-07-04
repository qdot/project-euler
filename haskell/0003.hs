-- The prime factors of 13195 are 5, 7, 13 and 29.

-- What is the largest prime factor of the number 600851475143 ?

-- Uses unoptimized nieve method since I cna't figure out how to deal with the floor function properly
isPrime :: (Integral x) => x -> Bool
isPrime x = if [ y | y <- [1..(floor (sqrt (fromIntegral x)))], x `mod` y == 0, x /= y, y /= 1] == [] 
            then True 
            else False

maxPrimeFactor :: (Integral x) => x -> Integer
maxPrimeFactor x = fromIntegral (maximum [ y | y <- [(floor (sqrt (fromIntegral x))), (floor (sqrt (fromIntegral x))) - 1..1], x `mod` y == 0, isPrime y])

-- maxPrimeFactor 600851475143

-- *Main> maxPrimeFactor 600851475143
-- 6857
