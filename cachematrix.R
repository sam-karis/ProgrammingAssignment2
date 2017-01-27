## The program consist of two functions that is makeacheMatrix and CacheSolve
## both functions combined compute and return the inverse of a matrix
## the fuction also make a matrix object in cache so if you run the function again
## using same matrix it retrieve the answer from the cache and if does not exist it compute the inverse
## The function work under the assumption that the matrix x is a Square matrix

## makeCacheMatrix create a special list containing functions to set and get a matrix 
## also it set and get the iverse of the matrix

makeCacheMatrix <- function(x = matrix(), ...) {
  m = NULL
  set <- function(y){
    m <<-  NULL
    x <<- y
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
