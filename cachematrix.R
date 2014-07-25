## These functions will:
#   makeCacheMatrix - creates a special matrix object that can cache its inverse
#   cacheSolve - converts a matrix to its inverse, unless it already resides in cache
#                then it returns the results

## makeCacheMatrix
# This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
     
     ## Make sure the parameter is a matrix
     
     if (is.matrix(x)) {
          # Set lexical scoping variable(s)
          cacheX <<- x
          
          # Creating the inverse matrix
          invCacheX <<- solve(x)
     } else {
          message("Parameter is not a matrix")
     }
     
}

## cacheSolve
# This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
# If the inverse has already been calculated (and the matrix has not changed), 
# then the cachesolve should retrieve the inverse from the cache.
# ***  THE CACHE ONLY HOLDS THE LAST INVERSE MATRIX THAT WAS CREATED ***

cacheSolve <- function(x = matrix(), ...) {
  
     ## Make sure the parameter is a matrix
     if (is.matrix(x)) {

          if (identical(x,cacheX)) {
               message("Returning the cached data")
               return(invCacheX)
          } else
               message("Results not cached")
               return(solve(x))
     } else
          message("Parameter is not a matrix")     
     
}
