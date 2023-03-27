## R objects can have names
x <- 1:3

x

names(x)

names(x) <- c("foo", "bar", "norf")

x

names(x)


## Lists can have names
y <- list(a=1, b=2, c=3)
y


## matrices can have name
m <- matrix(1:4, nrow = 2, ncol= 2)
m

dimnames(m) <- list(c("a", "b"), c("c", "d"))
m



