## vectorized operations
x <- 1:4; y <- 6:9
x
y

x + y

x > 2

x >= 2

y == 8

x * y

x / y

## vectorized matrix operations
x <- matrix(1:4, 2, 2); y <- matrix(rep(10,4), 2, 2)
x
y

x*y #element wise multiplication

x/y

x %*% y #true matrix multiplication
