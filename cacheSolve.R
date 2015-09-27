cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached reverse matrix")
    return(m)
  }
  else
  {
  data<-x$get()
  mode(data)<-"numeric"
  m <-solve(data)
  x$setsolve(m)
  m
  }

}
