#rep function is used to make vector by repeating the value
#rep (value, #repetition)

rep(1,10)

# supposed that you are trying to make [[1,1,1,1],[2,2,2],[3,3],[4]]
## then you can do
list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))
list(rep(1,4), rep(2,3), rep(3,2), 4)

## or you can just do it with multivariate apply
mapply(rep, 1:4, 4:1) #rep(1,4),rep(2,3)...,rep(4,1) same thing



##
noise <- function(n, mean, sd) {
  rnorm(n, mean, sd)
}

noise(5,1,4)

noise(5, c(3,10,20,1000,10000), 2)

mapply(noise, 1:5, 1:5, 2)

