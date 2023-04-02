## basically splitting is like zipping in python, but it automatically arrange
### new values by category in second argument

str(split)

x <- c(rnorm(10), runif(10), rnorm(10,1))

## gl is generate factor levels
## gl(val, #repetition) will give vector from 1 to val as many as #repetition
f <- gl(3, 10) # will make vector consisting of 1,2,3 each 10 times
# will be used as category for vector x

## now x will be as if in form of x[['1']], x[['2']], x[['3']]
split(x, f)

# after the list is made, then you can apply function with lapply
lapply(split(x,f), mean) 


## another example
library(datasets)
head(airquality)

s <- split(airquality, airquality$Month)
s

# dont understand this shit
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")], 
                               na.rm=TRUE))


## splitting on more than one level
y <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)
interaction(f1, f2)

str(split(y, list(f1, f2)))
str(split(y, list(f1, f2), drop = TRUE)) # buat drop yang elemennya ga ada
                                         ### di category fl1.fl2