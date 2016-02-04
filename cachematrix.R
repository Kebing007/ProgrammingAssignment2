## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invM <- NULL
        set <- function(y) {
        x <<- y
        invM <- NULL
        }
        get <- function() x
        setInv <- function(mat) invM <<- mat
        getInv <- function() invM
        list(set = set, get =get,
             setInv = setInv,
             getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          invM <- x$getInv()
          if(!is.null(invM)) {
            message("getting cached data")
            return(invM)
          }
          data <- x$get()
          invM <- solve(data, ...)
          x$setInv(invM)
          invM       
}
