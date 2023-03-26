x <- c(0.5, 0.6)      ## numeric
y <- c(TRUE, FALSE)   ## logical
z <- c(T,F)           ## logical
a <- c("a", "b", "c") ## character
b <- 9:29             ## integer
c <- c(1+0i, 2+4i)    ## complex

d <- vector("logical", length = 10)
e <- vector("numeric", length = 10)
f <- vector("character", length = 10)
g <- vector("integer", length = 10)

## mixing objects
h <- c(1.7, "a")  ## it becomes character
i <- c(TRUE, 2)   ## it becomes numeric
j <- c("a", TRUE) ## it becomes character



## type
k <- 0:6
class(k)
## "integer ##

as.numeric(k)
## [1] 0 1 2 3 4 5 6
as.logical(k)
## [1] FALSE TRUE TRUE TRUE TRUE TRUE TRUE
as.character(k)
## [1] "0" "1" "2" "3" "4" "5" "6"



## nonsensical type
l <- c("a", "b", "c")

## [1] NA NA NA 
as.numeric(l)
as.logical(l)
as.complex(l)


## list
m <- list(1, "a", TRUE, i+4i)
m
m[2]

