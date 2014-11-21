## Put comments here that give an overall description of what your
## functions do

## The functions cache the inverse of an invertible matrix if its 
## contents are not changing. 

## Write a short comment describing this function

## This function creates a list object that stores the matrix x 
## and its inverse m which is initialized as NULL
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

## This function calls the object created by makeCacheMatrix.
## If the inverse m is not NULL, then the matrix is cached and it returns a message and the inverse.
## If m is NULL, then calculate matrix x's inverse.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}
