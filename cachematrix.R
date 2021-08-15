## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
mCM <- NULL
  set <- function(y){
    x <<- y
    mCM <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) mCM <<- inverse
  getInverse <- function() mCM 
  list(set = set, 
       get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cS <- x$getInverse()
        if(!is.null(cS)){
          message("getting cached data")
            return(cS)
          }
    mat <- x$get()
    cS <- solve(mat,...)
    x$setInverse(cS)
    cS
        
}
