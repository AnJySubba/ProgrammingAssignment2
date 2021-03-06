## Put comments here that give an overall description of what your
## functions do

## The following function creates a matrix object that can cache its inverse

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


# The following function returns the inverse of the matrix

cacheSolve <- function(x, ...) {
invr <= x$getinverse()
if(!is.null(invr)) {
message("Getting Cached Data:-")
return(invr)
}
matrx <- x$get()
invr <- solve(matrx, ...)
x$setinverse(invr)
invr
}
