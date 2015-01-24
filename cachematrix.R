##Here we are crearting two function "makeCacheMatrix" and "cacheSolve"
##makeCacheMatrix function creates an matrix object that caches  its inverse
##cacheSolve function is used to find inverse of a matrix

##In makeCacheMatrix function we are passing a matrix argument which is invertible
##Then intializing "inv" variable with NULL value and we have different function 
##likes set(used for defining a matrix), get(it return a matrix argument), 
##setinverse(used for intializing "inv" variale in this function),
##getinverse(it return inverse of a matrix)
##and finally this function return a vactor containing list of function
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


##cacheSolve function first checks whether inverse of matrix exists or not 
##if its exists then return it otherwise its gets the matrix using get function 
##and find inverse using "solve" function and update the cache copy inverse using s
##"setinverse" function and finally return inverse of matrix.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getinverse()
  if(!is.null(inverse)) {
    message("getting cached data")
    return(inverse)
  }
  data <- x$get()
  inverse<- solve(data)
  x$setinverse(inverse)
  inverse
}
<<<<<<< HEAD
}
=======
}
>>>>>>> origin/master
