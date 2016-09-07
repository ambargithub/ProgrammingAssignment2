## R Programming Assignment 2: Lexical Scoping

## The makeCacheMatrix function creates a special "matrix", which is really a list containing function to
## 1. Set a value of the matrix
## 2. Get the value of the matrix
## 3. Set the value of inverse of the matrix
## 4. Get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
mat_inv<- Null
set<- funtion(y){
x<<-y
mat_inv<<- NULL

get<- function()x
setinverse<- function(inverse)mat_inv<<- inverse
getinverse<- function()mat_inv
list(set=set, get=get, setinverse = setinverse, getinverse= getinverse)

}


## The cacheSolve function calculates the inverse of the special "matrix" created with the above function
## However, it checks to see if the inverse has already been calculated. If so, it gets the inverse from 
## the cache and sets the value of the inverse in the cache vis the setinverse function



cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mat_inv <- x$getinverse()
        if(!is.null(mat_inv)){
        message("getting cached data")
        return(mat_inv)
}
data<- x$get()
mat_inv<- solve(data,...)
mat_inv

}
