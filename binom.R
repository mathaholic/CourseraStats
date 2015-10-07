binom <- function(n, k, p){
  ##calculates the probability of a case that meets the
  ## binomial distribution
  choose(n,k)*(p^k)*((1-p)^(n-k))
}