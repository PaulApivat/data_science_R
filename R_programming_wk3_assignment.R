## The pair of functions below will cache the inverse of a matrix

## This function creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        #nothing is cached, so set it to NULL
        cache <- NULL
        
        #store a matrix in variable storeMatrix
        storeMatrix <- function(y) {
                x <<- y
                cache <<- NULL
        }
        #return stored matrix
        getMatrix <-function() x
        
        #cache the given argument
        cacheInverse <- function(solve) cache <<- solve
        #get the cached value
        getInverse <- function() cache
        
        #return a list, each element is a function
        list(storeMatrix = storeMatrix, getMatrix = getMatrix,
             cacheInverse = cacheInverse,
             getInverse = getInverse)
        
}


## This function computes the inverse of the matrix returned by makeCacheMatrix
## this function should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverse <- x$getInverse()
        
        ## if a cached value exists
        if(!is.null(inverse)) {
                message("getting inverse from cache")
                return(inverse)
        }
        
        ##else get the matrix, calculate the inverse and store it in he cache
        
        data <- x$getMatrix()
        inverse <- solve(data, ...)
        x$cacheInverse(inverse)
        
        ## return the inverse
        inverse
}