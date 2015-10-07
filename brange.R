brange <- function(n, k = vector(), p){
  ##this function finds the binomial distribution for a range of 
  ##sucesses K
  x <- vector()
  y <- c(1:length(k))
  for(i in y){
    x[i] <- binom(n, k[i], p)
  }
  sum(x)
}