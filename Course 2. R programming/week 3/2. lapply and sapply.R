# ## example 1
# x <- list(a=1:5, b=rnorm(10))
# 
# # lapply -> loop over a list and evaluate a function on each element
# lapply(x,mean)




# tambah_1 <- function(x) {
#   return (x+1)
# }
# 
# ## example 2
# x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
# 
# ### setiap elemen di a, b ,c,d ditambah 1
# lapply(x, tambah_1)
# 
# ### menghitung mean di tiap list/vector a,b,c,d
# lapply(x, mean)




# ## example 3
# x <- 1:4
# ### generate random values from a uniform distribution in R, default
# #### min=0, max=1
# ### so, for each e in x, it willy run "runif(e)"
# lapply(x, runif)
# 
# lapply(x, runif, min=-100, max=100)
# 
# lapply(x, runif, min=100, max=1000)




# x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3 ,2))
# x
# lapply(x, function(elt) elt[,2])
# lapply(x, function(elt) elt[,2])



###################################################################
#################### SAPPLY() ######################################
## basically it is same funciton, but it just simplify the result of lapply
## it will put in column form, unless if a variable is not a single value

## example 1
# x <- list(a=1:5, b=rnorm(10))
# 
# lapply(x,mean)
# sapply(x,mean)




# tambah_1 <- function(x) {
#   return (x+1)
# }
# 
# ## in example 2, lapply and sapply will result in same form
# ## example 2
# x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
# 
# ### setiap elemen di a, b ,c,d ditambah 1
# lapply(x, tambah_1)
# sapply(x, tambah_1)
# 
# ### menghitung mean di tiap list/vector a,b,c,d
# lapply(x, mean)
# sapply(x, mean)





# ## example 3
# x <- 1:4
# ### generate random values from a uniform distribution in R, default
# #### min=0, max=1
# ### so, for each e in x, it willy run "runif(e)"
# lapply(x, runif)
# sapply(x, runif)
# 
# lapply(x, runif, min=-100, max=100)
# sapply(x, runif, min=-100, max=100)
# 
# lapply(x, runif, min=100, max=1000)
# sapply(x, runif, min=100, max=1000)




# x <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3 ,2))
# x
# lapply(x, function(elt) elt[,1])
# sapply(x, function(elt) elt[,1])
# 
# 
# lapply(x, function(elt) elt[,2])
# sapply(x, function(elt) elt[,2])