myfunction <- function(x) {
  y <- rnorm(100)
  mean(y)
}

second <- function(x) {
  x + rnorm(length(x))
}

geblek <- function(x) {
  x*3
}
  
geblek(3)

tolol <- function(x,y) {
  x*y
}
