## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    # ix is the inverse of x, the base matrix
    ix <- NULL
    
    # Set the base matrix
    set <- function(base) {
        x <<- base
        ix <<- NULL
    }
    
    # Get the base Matrix
    get <- function() x

    # Set the Inverse Matrix
    setinverse <- function(inverse) ix <<- inverse

    # Get the Inverse Matrix
    getinverse <- function() ix

    # Return our special list of functions
    list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    # Ask for the inverse from cache
    ix <- x$getinverse()

    # if cached, hooray, use it
    if(!is.null(ix)) {
        message("Getting cached data")
        return(m)
    }

    # Must not have been cached... solve it, cache it, use it
    data <- x$get()
    ix <- solve(x)
    x$setinverse(ix)
    x

}
