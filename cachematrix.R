## This code defines two functions to calculate the inverse
## of a matrix and cache the result. The cached result can be
## used instead of recalculating the inverse in case the
## original matrix has not changed.

## makeCacheMatrix() returns a special "matrix object" that can
## cache its inverse. Actually, a list of 4 functions to get/set
## the matrix and its inverse.

makeCacheMatrix <- function(x = matrix()) {
        cachedInverseMatrix <- NULL

        set <- function(newMatrix) {
                x <<- newMatrix
                cachedInverseMatrix <<- NULL
        }
        
        get <- function() x
        
        setInverseMatrix <- function(inverseMatrix) {
                cachedInverseMatrix <<- inverseMatrix
        }
        
        getInverseMatrix <- function() cachedInverseMatrix
        
        list(set = set,
             get = get,
             setInverseMatrix = setInverseMatrix,
             getInverseMatrix = getInverseMatrix)
}


## cacheSolve() receives a "matrix object" returned by makeCacheMatrix()
## as parameter and returns its inverse.
## If the inverse has been calculated before, returns the cached result.

cacheSolve <- function(x, ...) {
        
        inverseMatrix <- x$getInverseMatrix()
        
        if(!is.null(inverseMatrix)) {
                message("getting cached inverse matrix")
                return(inverseMatrix)
        }
        
        m <- x$get()
        inverseMatrix <- solve(m, ...)
        x$setInverseMatrix(inverseMatrix)
        
        inverseMatrix
}
