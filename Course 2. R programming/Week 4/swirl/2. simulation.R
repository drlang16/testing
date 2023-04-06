?sample

# four six-sided dice with same number possible
sample(1:6, 4, replace=TRUE)

#### probablity of getting all same sides is (1/6)^4 = 0.00077
sample(1:6, 4, replace=TRUE)


sample(1:20, 10) #default replace=FALSE

LETTERS

sample(LETTERS)



### coin
# flips <- sample(0:1, 100, replace=TRUE)
# flips <- sample(0:1, 100, replace = TRUE, prob = c(0.3, 0.7))
flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))

sum(flips)



?rbinom

rbinom(1, size=100, prob=0.7)

flips2 <- rbinom(n=100, size=1, prob=0.7)

flips2
sum(flips2)


?rnorm
rnorm(10)
rnorm(10, 100, 25)



rpois(5, 10)
replicate(100, rpois(5, 10)) ## make matrix with columns as big as replicate
my_pois <- replicate(100, rpois(5, 10))
cm <- colMeans(my_pois)
cm               
hist(cm)
