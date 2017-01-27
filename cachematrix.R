## The program consist a pair of functions that cache the Inverse of matrix
## This tries to minimise the costly matrix inversion
## The pair of fuction create a special object(list) that 
## stores a matrix and cache its inverse

## makeCacheMatrix create a special "matrix" object and cache it inverse

makeCacheMatrix <- function(x = matrix(), ...) {
  I = NULL
  set <- function(y){
    I <<-  NULL
    x <<- y
  }
  get <- function() x
  setinverse <- function(solve) I <<- solve
  getinverse <- function() I
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cacheSolve function checks if the inverse has already been computed 
## If yes it get the answer from the cache instead of repeating the computation 
## If no it compute the inverse of the matrix
## the function return the inverse of the matrix

cacheSolve <- function(x, ...) {
  I <- x$getinverse()
  if (!is.null(I)){
    message("the inverse already exist wait to get cached data")
    return(I)
  }
  dat <- x$get()
  I <- solve(dat, ...)
  x$setinverse(I)
  I
}
