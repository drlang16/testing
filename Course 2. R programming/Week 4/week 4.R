########################## str function #######################
###############################################################

str(str)

str(lm)

str(ls)

x <- rnorm(100, 2, 4)
summary(x)
str(x)

f <- gl(40, 10)



f
str(f)
summary(f)

str(airquality)

m <- matrix(rnorm(100), 10, 10)

str(m)
m[, 1]

n <- matrix(1:100, 10, 10)
n[, 1]
n[1, ]


s <- split(airquality, airquality$Month)
s
str(s)





###################generating random number ####################
###############################################################
# rnorm -> generate random normal variates with given mean and standard dev
# dnorm -> evaluate the normal probability density
# pnorm -> evaluate the cumulative distribution function
# rpois -> generate random possion variates with given rates

# d -> density
# r -> random number
# p -> cumulative distribution
# q -> quantile function


# dnorm(x, mean=0, sd=1, log=FALSE)
# pnorm(q, mean=0, sd=1, lower.tail=TRUE, log.p=FALSE)
# qnorm(p, mean=0, sd=1, lower.tail=TRUE, log.p=FALSE)
# rnorm(n, mean=0, sd=1)

rnorm(10)
x <- rnorm(10,20,2)
summary(x)

set.seed(1)
rnorm(5)
rnorm(5)

#seed is used to repeat the pattern of random number
set.seed(1)
rnorm(5)
rnorm(5)


rpois(10, 1)
rpois(10, 2)
rpois(10,20)

# cumulative distribution
ppois(2,2)
ppois(4,2)
ppois(6,2)




##################### simulating linear model #####################
###############################################################

# generating random numbers from a linear model
set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e

summary(y)
plot(x, y)


# what if x is binary?
set.seed(10)
x <- rbinom(100, 1, 0.5) #1 is max bin number, 0.5 is probability of 1
x
str(rbinom)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e

summary(y)
plot(x, y)


# suppose we want to simulate from a Poisson model

set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3 * x
log.mu
y <- rpois(100, exp(log.mu))
y
summary(y)
plot(x, y)


################## RANDOM SAMPLING ##########################
#############################################################
set.seed(1)
sample(1:10, 4)
str(sample)
sample(1:3, 100, replace=TRUE)
sample(letters, 5) ## letters is global variable consisting lowercase alphabet
sample(1:10)
sample(1:10, replace=TRUE)
