## This is the coursera r programming assignment number 2

## The following function caches the inverse of a function following the example
## of getting the mean from a vector

makeCacheMatrix <- function(x = matrix()) {
  
  inver <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) inver <<- inverse
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Returns a matrix that is the inverse of 'x'
## following example of getting a mean from the vector

cacheSolve <- function(x, ...) {
  
  inver <- x$getinv()
  if(!is.null(inver)) {
    message("getting cached data")
    return(inver)
  }
  output <- x$get()
  inver <- solve(output, ...)
  x$setinv(inver)
  inver
}