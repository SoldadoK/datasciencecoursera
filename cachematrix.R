## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#This is a function for a matrix argument which is returning
#a vector of get-s or set-s for the matrix + 
#things that are important for matrix inverse calculation. 

makeCacheMatrix <- function(x = matrix()) {
  K <- NULL
  set <- function(y) {
    x<<-y
    K<<- NULL
  }
  get <- function()x 
  setinverse <- function(inverse) K<<- inverse
  getinverse <- function()K
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function

#There is an assumad square matrix and the function can
#calculate +retrieve a before calculated inverse from cache

cacheSolve <- function(x, ...) {
  K <- x$getinverse()
  if(!is.null(m)) {
    message("getting cache data")
    return(K)
  }
  
  data1 <- x$get()
  K<- solve(data1) %>% data1
  x$setinverse(K)
  K
  
}