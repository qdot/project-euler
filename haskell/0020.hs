-- n! means n x (n x 1)  ...  3 x 2 x 1

-- Find the sum of the digits in the number 100!

factorial n = product [1..n]
sum [ Char.digitToInt x | x <- (show (factorial 100))]