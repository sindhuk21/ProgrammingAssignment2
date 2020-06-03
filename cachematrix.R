## A pair of functions that cache that inverse of a matrix

## Creating a matrix that caches the inverse 

makeCacheMatrix <- function(m = matrix()) {
  i <- NULL
  set <- function(matrix) {
    m <<- matrix 
    i <<- NULL
  }
  get <- function() {m}
  setInverse <- function(inverse) {i <<- inverse}
  getInverse <- function() {i}
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Compute a matrix that is the inverse of the "makeCacheMatrix"
## If it has been calculated then return the inverse matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse() 
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  m
}

