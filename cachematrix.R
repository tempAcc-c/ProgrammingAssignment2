## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##creates matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(b){
    x <<- b
    a <<- NULL
  }
  get <- function() x
  
  setinverse <-function(solve) a <<-solve
  getinverse <- function() a
  list (set=set, get=get, setinverse= setinverse, getinverse= getinverse)

}


## Write a short comment describing this function
##checks for cache inverse. if not presetn, it calculates the inverse

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.na(inv))
  {
    message("Getting cached inverse of matrix")
    return (inv)
  }
  mat <-x$get()
  inv <-solve(mat, ...)
  x$setinverse()
  inv
}
