makeVector <- function(x = numeric()) {
    m <- NULL
    print(environment())
    evn <- environment()
    print(parent.env(evn))
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmean <- function(mean) m <<- mean
    getmean <- function() m
    getevn<- function() environment()
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean,
         getevn = getevn)
}

x <- 1:10000
vec<-makeVector(x)
vec
vec$getmean()

mx = mean(x) # creates mean value
vec$setmean(mx)
vec$getmean()

# How to see the value of m?
vec$getevn()
ls(vec$getevn())

# does m reside in the parent environment?
parent.env(vec$getevn())
ls(parent.env(vec$getevn()))
parent.env(vec$getevn())$m

# CacheMean function does what was done manually above
cachemean <- function(x, ...) {
    m <- x$getmean()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    m
}