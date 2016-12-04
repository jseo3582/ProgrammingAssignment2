## Put comments here that give an overall description of what your
## functions do
## 'makeCacheMatrix' function creates a matrix that can cache the input and its inverse.

## Write a short comment describing this function
## 1. Set the value of the matrix
## 2. Get the value of the matrix
## 3. Set the value of inverse (of the matrix)
## 4. Get the value of inverse (of the matrix)

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}

## Write a short comment describing this function

## This 'cacheSolve' function stored in the matrix returned from the 'makeCacheMatrix' function.
## If inverse has already been calculated, 'cacheSolve' command retrieves the inverse from the cache.
## If the input is new, it calculates the inverse of the data and sets the inverse in the cache via the setinverse function.

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setInverse(inv)
        inv
}
