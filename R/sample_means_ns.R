# Creates a data frame of sample means found by iterating through various sub-sample sizes. 

library(tidyverse)

sample_means_ns <- function(vec, ns, reps) {
  
  my_means <- map(ns, ~many_sample_means(vec, .x, reps))
  
  dataframe <- tibble(
    sample_means = unlist(my_means),
    n = as.double(rep(ns, each = reps))
  )
  
  return(dataframe)
  
}