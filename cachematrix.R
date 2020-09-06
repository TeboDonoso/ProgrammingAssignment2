## This function allows to create a special matrix object

makeCacheMatrix <- function(x = matrix()) {
        inve <- NULL
         set <- function (y) {
           x <<- y
  }
         get <-function () {x}
         setInverse <- function(inverse) inve <<- inverse
         getInverse <- function() inve
  list( set = set, get = get, setInverse = setInverse, getInverse=getInverse)
}
## It must be always a matrix 2 by 2.
## this part apply the functions over a matrix and returned the inverse
cacheSolve <- function(x, ...) {
  ## Return the inversed matrix 
         inve <- x$getInverse()
         if(!is.null(inve)) {
          message("Getting cache data")
           return(inve)
  }
          mtr <-x$get()
          inve <- solve(mtr, ...)
          x$setInverse(inve)
    inve

}


