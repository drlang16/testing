x <- matrix(1:6, 2, 3)
x
x[1,2]

x[2,1]

###
# when single element of matrix is retrieved, it is returned as a vector of length 1 rather than 1x1 matrix
# to turn off this behavior, you can set drop to FALSE

x[1,2, drop=FALSE]

x[1,]
x[1]
x[1, , drop=FALSE]
