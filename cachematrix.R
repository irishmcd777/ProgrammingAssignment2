## The function created below creates a matrix that can cache its inverse, as described
## in the assignment instructions. 

makeCacheMatrix <- function(x = matrix()) {
       inv <- NULL
       set <- function(y) {
              x <<- y
              inv <<- NULL
       }
       get <- function() x
       setInverse <- function(inverse) inv <<- inverse
       getInverse <- function() inv
       list(set = set,
            get = get,
            setInverse = setInverse,
            getInverse = getInverse)
}


## The function below calculates the inverse of the matrix created above. 

cacheSolve <- function(x, ...) {
       ## Returns a matrix that is the inverse of 'x'
       inv <- x$getInverse()
       if (!is.null(inv)) {
              message("getting cached data")
              return(inv)
       }
       mat <- x$get()
       inv <- solve(mat, ...)
       x$setInverse(inv)
       inv
}