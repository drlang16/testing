m <- matrix(nrow = 2, ncol = 3)
m

dim(m)

attributes(m)

n <- matrix(1:6, nrow = 2, ncol = 3)
n

o <- 1:10
o
dim(o) <- c(2, 5)
o

p <- 1:3
q <- 10:12
cbind(p,q)
rbind(p,q)
cbind(q,p)
rbind(q,p)
