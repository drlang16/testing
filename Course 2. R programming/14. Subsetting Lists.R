x <- list(foo = 1:4, bar= 0.6)

x

x[1]
x[[1]]

x$bar

x[["bar"]]

x["bar"]

###

y <- list(foo = 1:4, bar= 0.6, baz="hello")
y
y[c(1,3)]

### [[ operator can be used with computed indices; $ can only be used with literal names.
z <- list(foo = 1:4, bar= 0.6, baz="hello")
z

name <- "foo"

z[[name]]
z$name
z$foo

## [[ can take an integer sequence
p <- list(a=list(10,12,14), b = c(3.14, 2.81))
p
p[[c(1,3)]]
p[[1]][[3]]
p[[c(2,1)]]