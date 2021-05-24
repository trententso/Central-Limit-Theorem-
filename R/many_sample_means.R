# Repeats sample_mean function reps amount of times

library(tidyverse)

many_sample_means <- function(vec, n, reps){
  
  results <- replicate(reps, sample_mean(vec, n))
  return (results)
}