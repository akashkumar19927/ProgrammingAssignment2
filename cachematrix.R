## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
    #print ("first")
    #print(x)
    #print(y)
    #print(inv)
  }
  get <- function(){x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function(){inv} 
  k<-list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
  #print ("second")
  #print(k)
  k

}


## Write a short comment describing this function

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  #print("third")
  #print(inv)
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  #print("fourth")
  #print(mat)
  inv <- solve(mat)
  #print ("fifth")
  #print(inv)
  x$setInverse(inv)
  #print("sixth")
  #print(inv)
  inv
}
