
here::i_am("utils/plotting-funcs.R")
library(here)

optim.binwidth <- function(x){
  # taken from this answer : 
  # https://stats.stackexchange.com/questions/798/calculating-optimal-number-of-bins-in-a-histogram
  2 * IQR(x) / length(x)^(1/3)
}

