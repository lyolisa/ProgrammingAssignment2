## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  iM <- NULL
  set <- function(y) {
    x <<- y
    iM <<- NULL
  }
  get <- function() x
  setI <- function(inverse) iM <<- inverse
  getI <- function() iM
  list(set = set, get = get, setI = setI, getI = getI)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      iM <- x$getI()
      if(!is.null(iM)){
        message("getting cached data")
        return(inv)
      }
      mat <- x(get())
      iM <- solve(mat, ...)
      x$setI(iM)
      iM
}
