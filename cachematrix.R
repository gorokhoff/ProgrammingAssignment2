## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function()
  {
    x
  }
  setinv <- function(inv)
  {
    m <<- inv
  }
  getinv <- function(){
    m
  }
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data) %*% data
  x$setinv(m)
  m
}
#x <- matrix(c(2,7,3,34,67,12,8,9,17), nrow = 3, ncol = 3, byrow = TRUE)
#v<-makeCacheMatrix(x)
#mmm<-cacheSolve(v)