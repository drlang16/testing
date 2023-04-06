## system.time()

# elapsed time > user time
system.time(readLines("http://www.jhsph.edu"))



str(outer)
# elapsed time < user time
hilbert <- function(n) {
  i <- 1:n
  1 / outer(i-1, i, "+")
}

x <- hilbert(1000)
system.time(svd(x))

str(svd)
?svd



## timing longer expression
system.time({
  n <- 1000
  r <- numeric(n)
  for (i in 1:n) {
    x <- rnorm(n)
    r[i] <- mean(x)
  }
  
  
})


## test function dennis
pertambahan <- function (x) {
  total <- 0
  for (i in 1:x) {
    total <- total + 1
  }
  print(total)
}

system.time(pertambahan(3000))
system.time(pertambahan(30000))
system.time(pertambahan(300000))
system.time(pertambahan(3000000))
system.time(pertambahan(30000000))
system.time(pertambahan(300000000))



######################### USING Rprof() #########################
#################################################################

# sample.interval=1000
# $by.total
# $by.self
# 
# sample.interval
# sampling.time
