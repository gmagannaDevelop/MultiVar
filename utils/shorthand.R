
here::i_am("utils/shorthand.R")
library(here)
# 
r.mean <- function(x, digits=2) round(mean(x), digits)
r.median <- function(x, digits=2) round(median(x), digits)
r.var <- function(x, digits=2) round(var(x), digits)
