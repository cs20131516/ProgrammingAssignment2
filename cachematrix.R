## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#1. set the value of the vector
#2. get the value of the vector
#3. set the value of the mean
#4. get the value of the mean

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    i <- x$getinverse()
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data)
    x$setinverse(i)
    i
}

#order
#source("cachematrix.R")
#x = rbind(c(3,4),c(5,6))
#m = makeCacheMatrix(x)
#m$get()
#Can see the martix
#     [,1] [,2]
#[1,]    3    4
#[2,]    5    6
#cacheSolve(m)
#Can see the solve
#     [,1] [,2]
#[1,] -3.0  2.0
#[2,]  2.5 -1.5
#cacheSolve(m)
#getting cached data
#     [,1] [,2]
#[1,] -3.0  2.0
#[2,]  2.5 -1.5
