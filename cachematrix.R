## makeCacheMatrix: This function creates a special “matrix” object that can
## cache its inverse

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


## cacheSolve: This function computes the inverse of the special “matrix”
## returned by makeCacheMatrix above. If the inverse has already been
## calculated (and the matrix has not changed), then cacheSolve should
## retrieve the inverse from the cache.

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
