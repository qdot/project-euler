-- A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

-- a^2 + b^2 = c^2
-- For example, 3^2 + 4^2 = 9 + 16 = 25 = 52.

-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.

[ c | x <- [0..1000], y <- [0..1000], z <- [0..1000], c <- x * y * z, x + y + z = 1000, x^2 + y^2 = z^2]

-- Slow as hell, but it works