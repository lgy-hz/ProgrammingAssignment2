## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    
          inv <- NULL
          #set the matrix
          set <- function(y) {
               x <<- y
               inv <<- NULL
          }
          #get the matrix
          get <- function() x
          # Set the inverse to the object
          setinv <- function(inverse) inv <<- inverse
          # get the inverse of the matrix
          getinv <- function() inv
          #lay out a list
          list(set = set, get = get,
               setinv = setinv,
               getinv = getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     
          inv <- x$getinv()
          #check if the inverse matrix exit
          if(!is.null(inv)) {
               message("getting cached data")
               return(inv)
          }
          #get the matrix
          data <- x$get()
          #get the inverse of the matrix
          inv <- solve(data)
          x$setinv(inv)
          inv
     }
     

