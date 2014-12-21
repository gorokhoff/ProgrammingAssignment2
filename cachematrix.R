## Put comments here that give an overall description of what your
## functions do

## Create object, which contains matrix itself and methods for
## getting and setting matrix and inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function(){
    x
  }
  setinv <- function(inv){
    m <<- inv
  }
  getinv <- function(){
    m
  }
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Return inverse matrix for matrix, stored in object 'x',
## which prepared by function makeCacheMatrix(x)


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinv(m)
  m
}
