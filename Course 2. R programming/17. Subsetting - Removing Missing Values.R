## Removing NA Values

x <- c(1,2,NA,4,NA,5)
x

bad <- is.na(x)

x[!bad]
x[bad]

## when you want to take subset with no missing values

y <- c(1,2,NA,5,NA,5)
z <- c("a", "b", NA, NA, NA, "f")

good <- complete.cases(y,z)

good

y[good]

z[good]
