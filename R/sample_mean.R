# Takes a sub-sample of a large sample, returns mean of sub-sample 

library(tidyverse)
  
sample_mean <- function(vec, n){
  sub <- sample(vec, n)
  return (mean(sub))
}
