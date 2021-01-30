
here::i_am("utils/plotting-funcs.R")
library(here)

optim.binwidth <- function(x){
  2 * IQR(x) / length(x)^(1/3)
}
