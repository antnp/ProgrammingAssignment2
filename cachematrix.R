## Put comments here that give an overall description of what your
## functions do

## This function creates a special matrix object that can be cached and 
## is able to cache the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
    # Start from a clean slate
    invMat = NULL
    
    # Debugging environment checks
    print(environment())
    evn = environment()
    print(parent.env(evn))
    
    # Set Matrix
    setMat = function(y){
        # Set in cache
        mat <<- y
        invMat <<- NULL
    }
    
    # Get Matrix
    getMat = function(){
        # Return matrix
        mat
    }
    
    # Set Inverse Matrix
    setMatInv = function(inv){
        # Set in cache
        invMat <<- inv
    }
    
    # Get Inverse Matrix
    getMatInv = function(){
        invMat        
    }
    
    getEnv = function(){
        environment()
    }
    
    # Return a list of methods
    list(setMat = setMat
         , getMat = getMat
         , setMatInv = setMatInv
         , getMatInv = getMatInv
         , getEnv = geEnv
         )

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
