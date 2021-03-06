## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y){
  x <<- y
  inv <<- NULL
}
get <- function()x
setinverse <- function(cmatrix) inv <<- inverse
getinverse <- function() inv 
list (set=set, get=get, 
      setinverse=setinverse, 
      getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getinverse()
if (!is.null(inv)){
  message("getting cached data")
  return(inv)
}
ainv <- x$get()
inv <- solve(ainv,...)
x$setinverse(inv)
inv
}
