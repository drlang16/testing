## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## it makes aa ached matrix that will be used in cacheSolve() function below

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
## return the inverse matrix and cache the result. Input must be created first through makeCacheMatrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting x")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}