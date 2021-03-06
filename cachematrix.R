## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- null
  
  setMatrix <- function(y)
  {
	x <<- y
	inv <<- NULL
  }
  
  getMatrix <- function() x
  setInverse <- function(i) inv <<- i
  getInverse <- function() inv
  
  list(setMatrix=setMatrix,getMatrix=getMatrix,setInverse=setInverse,getInverse=getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
		inv <- x$getInverse()
		if(!is.null(inv))
		{
			message("getting cached data")
			return (inv)
		}
		
		m <- x$getMatrix()
		inv <- solve(m)
		x$setInverse(inv)
		inv
}
	