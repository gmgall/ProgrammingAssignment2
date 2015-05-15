## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
        inverseMatrix <- x$getInverseMatrix()
        
        if(!is.null(inverseMatrix)) {
                message("getting cached inverse matrix")
                return(inverseMatrix)
        }
        
        m <- x$get()
        inverseMatrix <- solve(m, ...)
        x$setInverseMatrix(inverseMatrix)
        
        ## Return a matrix that is the inverse of 'x'
        inverseMatrix
}
