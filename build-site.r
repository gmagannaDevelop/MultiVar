
library(rmarkdown)
library(here)
library(glue)
library(stringr)

rmd.to.html <- function(x){
  return(str_replace(x, "Rmd", "html"))
}

render.site <- function(x){
  rmarkdown::render(
    x,
    output_format = "html_document",
    output_dir = here::here("build")
  )
}

rmd.files <- Sys.glob(glue::glue("{here::here('src')}/*.Rmd"))
html.files <- sapply(rmd.files, rmd.to.html, USE.NAMES = FALSE)

sapply(rmd.files, render.site)
