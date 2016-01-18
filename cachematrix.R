## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
#This function takes in a matrix and its inverse and stores them.
#Use the "$" sign to access the following "sub-functions" of this function:
# 1. get() #Retrives the matrix that is enetered into the initial function call
# 2. setinv #Allows the user to enter in the inverse of the matrix into the declared instance of the function
# 3. getinv #Allows the user to retrieve the inverse
      
      inv <- NULL
      set <- function(y) {
            x <<- y
            inv <<- NULL
      }
      get <- function() x
      setinv <- function(i) inv <<- i
      getinv <- function() inv
      list(set = set, get = get,
           setinv = setinv,
           getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
#This function has the same structural concept as that of makeCacheMatrix
#The difference is that this function checks if the matrix from makeCacheMatrix already has an inverse and if not,
#computes and stores it in the instance of makeCacheMatrix
#If it already has an inverse, it simply prints the inverse
      inv <- x$getinv()
      if(!is.null(inv)) {
            message("getting cached guassian inverse")
            return(inv)
      }
      x$setinv(solve(x$get()))
      x$getinv
}
